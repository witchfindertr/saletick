import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:file_picker/file_picker.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:saletick/models/transaction_model.dart';
import 'package:saletick/models/user_model.dart';
import 'package:saletick/screens/home/inventory_category_list.dart';
import 'package:saletick/screens/intro/intro_screen.dart';
import 'package:saletick/utilities/feedback.dart';
import 'package:saletick/utilities/firebase_references.dart';
import 'package:saletick/utilities/logger.dart';
import 'package:saletick/screens/auth_screens/sign_in_screen.dart';


class AuthController extends GetxController {
  late FirebaseAuth auth;

  Rxn<User> user = Rxn<User>();

  late Stream<User?> authStateChanges;

  // users data list
  final allUsersDataList = <UserModel>[].obs;

  // Current user's Transactions
  final userTransactionList = <TransactionModel>[].obs;

  // currentlyLoggedInUser details
  late UserModel currentUserData;

  // user's profile image
  final usersProfileImage = "".obs;

  // fetch data checker
  final isLoading = false.obs;


  @override
  void onReady() {
    startUpAuth();
    super.onReady();
  }


  Future<void> startUpAuth() async {
    await Future.delayed(const Duration(seconds: 4));
    auth = FirebaseAuth.instance;
    authStateChanges = auth.authStateChanges();

    // listen to changes
    authStateChanges.listen((User? currentUser) { 
      user.value = currentUser;
    });

    // Go to homeScreen or WelcomeScreen when app starts
    if(isUserLoggedIn()){
      await getCurrentUserDetails();
      goToHomeScreen();
    }else{
      Get.offAllNamed(IntroScreen.routeName);
    }
  }


  
  bool isUserLoggedIn(){
    return auth.currentUser != null;
  }


  void goToHomeScreen(){
    Get.offAllNamed(InventoryCategoryListScreen.routeName);
  }


  void goToLoginScreen(){
    Get.offAllNamed(SignInScreen.routeName);
  }


  // A function which returns the currently loggedIn user. 
  // And we can then access the user's details
  User? getCurrentUser(){
    user.value = auth.currentUser;
    return user.value;
  }



  // A function which registers  a user when called
  Future<void> signUpUser(String email, String password, String fName, String lName) async{
    // creating empty strings when user first signs Up
    String phone = "";
    String position = 'ADMIN/CEO';
    String imageUrl = "";
    bool isUserAnAdmin = true;

    try{
      // start Loading
      UserFeedBack.showLoading();
      await auth.createUserWithEmailAndPassword(email: email, password: password);
      await Future.delayed(const Duration(seconds: 1));
      // save user details in the Database
      await saveUserInFireStore(
        email: email.toLowerCase(), 
        fn: fName, 
        ln: lName, 
        phone: phone, 
        position: position, 
        imageUrl: imageUrl, 
        myAdminEmailAddress: "", 
        address: "",
        qualification: "",
        salary: "",
        isAdmin : isUserAnAdmin,
      );
      // Get details of user after signup
      await getCurrentUserDetails();
      Get.back(); // remove the loading
      UserFeedBack.showSuccess(infoMessage: 'You have now been registered. Welcome !', buttonText: 'Successful');
      await Future.delayed(const Duration(seconds: 2));
      goToHomeScreen();
    }on FirebaseAuthException catch(e){
      AppLogger.e(e);
      Get.back();
      UserFeedBack.showError(e.message!);
    }
  }



  // A function which logs In a user when called
  Future<void> signInUser(String email, String password) async{
    try{
      // start Loading
      UserFeedBack.showLoading();
      await auth.signInWithEmailAndPassword(email: email, password: password);
      // delay before next API call
      await Future.delayed(const Duration(seconds: 1));
      // Get details of user after login
      await getCurrentUserDetails();
      Get.back(); // remove the loading
      // show success feedback
      UserFeedBack.showSuccess(infoMessage: 'You have successfully logged In!', buttonText: 'Successful');
      await Future.delayed(const Duration(seconds: 2));
      goToHomeScreen();
    }on FirebaseAuthException catch(e){
      AppLogger.e(e);
      Get.back();
      UserFeedBack.showError(e.message!);
    }

  }



  // A function which logs Out a user when called
  Future<void> signOutUser() async{
    try{
      await auth.signOut();
      // UserFeedBack.showSuccess('Logout Successful !');
      await Future.delayed(const Duration(seconds: 1));
      goToLoginScreen();
    }catch (e){
      AppLogger.e(e);
    }
  }




  // Function which creates a user in the fireStore DB when registration is done
  Future<void> saveUserInFireStore({required String email, required String fn, required String ln, required String phone, required String position, required String imageUrl, required String myAdminEmailAddress, required String address, required String qualification, required String salary, required bool isAdmin}) async {
    UserModel userModel = UserModel(
      firstName: fn, 
      surname: ln, 
      email: email.toLowerCase(), 
      isAdmin: isAdmin, 
      phoneNumber: phone, 
      position: position, 
      dateEmployed: DateFormat.yMMMMEEEEd().format(DateTime.now()),
      imageUrl: imageUrl,
      myAdminEmailAddress: myAdminEmailAddress,
      address: address,
      qualification: qualification,
      salary: salary,
      mySales: [],
      myExpenses: [],
    );

    // serializing it to Json and sending it to user collection in fireStore
    await userFirestoreReference.doc(email).set(userModel.toJson()); 
    
  }


  
  // A function to get all users data from the Database
  Future<void> fetchAllUserData() async {
    try{
      
      // retrieving user data. NB: Users here are the staff of the admin
      QuerySnapshot<Map<String, dynamic>> userData = await userFirestoreReference.get();
      final userList = userData.docs.map((e) => UserModel.fromSnapshot(e)).toList();
      
      // Checking if a user is a staff of a particular admin
      for(var u in userList){
        if(u.myAdminEmailAddress==getCurrentUser()!.email && !u.isAdmin){
          print("${u.myAdminEmailAddress} = ${getCurrentUser()!.email}");
          // adding each of the staff to the list
          allUsersDataList.add(u);
          print("STAFF LIST $allUsersDataList");
        }
      }           

      // Looping through the user Data and fetching userTransactions data from "myTransactions Doc" and 
      // assigning each user's transaction data to the field of my_transactions in the userModel. 
      // This 'my_transactions' field is a list of type 'SalesModel'
      for(var u in allUsersDataList){
        // getting users transactions data. Users here are the staff of the admin
        QuerySnapshot<Map<String, dynamic>> userTransactionData = await userFirestoreReference.doc(u.email).collection('myTransactions').get();
        // serializing it to a TransactionsModel object
        final transactionsDataList = userTransactionData.docs.map(((e) => TransactionModel.fromSnapshot(e))).toList();

        // Looping through the transactionsList in order to separate sales from expenses
        for(var txn in transactionsDataList){
          if(txn.isExpenses){
            // adding the serialized and filtered expenses object to myExpenses in the userModel
            u.myExpenses.add(txn);     
          }else{
            // adding the serialized and filtered sales object to mySales in the userModel
            u.mySales.add(txn);     
          }
        }         
      
      }

    }catch (e){
      AppLogger.e(e);
    }
  }




  // A function which creates user profile for a new staff
  Future<void> createNewStaff({required String email, required String password, required String fName, required String lName, required String phoneNumber, required String position, required String address, required String qualification, required String salary, required PlatformFile pickedImage}) async {
     try{
      // start Loading
      UserFeedBack.showLoading();

      // create user with email & pswd
      await auth.createUserWithEmailAndPassword(email: email, password: password);
      // delay before next API call
      await Future.delayed(const Duration(seconds: 1));
      // upload profile image and save image path in a variable
      final imageUrl = await uploadProfileImage(pickedImage);
      // delay before next API call
      await Future.delayed(const Duration(seconds: 1));
      // save user details in the Database
      await saveUserInFireStore(
        email: email.toLowerCase(), 
        fn: fName, 
        ln: lName, 
        phone: phoneNumber, 
        position: position, 
        imageUrl: imageUrl, 
        myAdminEmailAddress: getCurrentUser()!.email!, 
        address: address,
        qualification: qualification,
        salary: salary,
        isAdmin : false,
      );
      // delay
      await Future.delayed(const Duration(seconds: 1));
      Get.back(); // remove the loading
      // show success feedback
      UserFeedBack.showSuccess(infoMessage: 'Profile Successfully created', buttonText: 'Completed');
      // delay & sign out
      await Future.delayed(const Duration(seconds: 2));
      // sign the admin out and re-route him to the log in screen
      auth.signOut();
      goToLoginScreen();

     }catch (e){
      AppLogger.e(e);
      Get.back();
      UserFeedBack.showError('Staff Profile Creation Failed !');
     }
  }




  // A function which will upload profile image when called
  Future<String> uploadProfileImage(PlatformFile pickedImage) async {
    UploadTask? uploadTask;

    final path = "profileImages/${pickedImage.name}";
    final file = File(pickedImage.path!);

    // setting the upload path: path is the directory it will be uploaded to
    final ref = firebaseStorageReference.child(path);
    uploadTask = ref.putFile(file);

    // upload is in progress: whenComplete works like then() in 'Futures' -- you write 
    // what you want happen when the future completes. 
    // Our future here is the uploadTask, which uploads the pickedFile
    final taskSnapshot = await uploadTask.whenComplete(() => debugPrint('Image Upload Complete') );

    // Getting the uploaded file's/image's download url
    final imageUrl = await taskSnapshot.ref.getDownloadURL();
    print("Uploaded Image's download url: $imageUrl");

    return imageUrl;
  }




  // A function which updates user's profile image
  Future<void> changeProfileImage(PlatformFile pickedImage) async {
    try{
      // start loading
      UserFeedBack.showLoading();

      // Get the current user's info and data
      DocumentSnapshot<Map<String, dynamic>> userData = await userFirestoreReference.doc(getCurrentUser()!.email).get();
      // delay before calling the uploadTask function
      await Future.delayed(const Duration(seconds: 1));
      // uploading the picked image using uploadTask and storing the url in a variable
      String imageUrl = await uploadProfileImage(pickedImage);
      // delay
      await Future.delayed(const Duration(seconds: 1));
      // update the image field which is gotten from fetched user data
      await userData.reference.update({'image_url' : imageUrl});
    
      
      // delay before next API call
      await Future.delayed(const Duration(seconds: 1));
      // Get details of user after profile picture is changed
      await getCurrentUserDetails();
      Get.back(); // remove the loading
      // show success feedback
      UserFeedBack.showSuccess(infoMessage: 'You have successfully changed your profile picture!', buttonText: 'Done');
      await Future.delayed(const Duration(seconds: 2));
      goToHomeScreen();
    }catch (e){
      AppLogger.e(e);
      Get.back();
      UserFeedBack.showError('Image Upload Failed !');
    }
  }




  // A function which gets the details or data of the current user
  Future<void> getCurrentUserDetails() async {
    try{
      // activating loading
      isLoading.value = true;
      // Getting loggedIn user's data
      DocumentSnapshot<Map<String, dynamic>> user = await userFirestoreReference.doc(getCurrentUser()!.email).get();
      var currentlyLoggedInUser = UserModel.fromSnapshot(user);
      currentUserData = currentlyLoggedInUser;

      print("CURRENT USER_DATA: $currentUserData");

      // initializing our profile image reactive variable
      usersProfileImage.value = currentUserData.imageUrl;

      await Future.delayed(const Duration(seconds: 1));
      // getting user's transactions
      QuerySnapshot<Map<String, dynamic>> userTransactionData = await userFirestoreReference.doc(getCurrentUser()!.email).collection('myTransactions').get();
      // serializing it to a TransactionModel List object
      final transactionsDataList = userTransactionData.docs.map(((e) => TransactionModel.fromSnapshot(e))).toList();
      // Assigning the values of serialized list to current user's transaction List
      userTransactionList.assignAll(transactionsDataList);

      // Emptying the lists before populating it
      currentUserData.mySales = [];
      currentUserData.myExpenses = [];

      // Looping through the transactionsList in order to separate sales from expenses
        for(var txn in transactionsDataList){
          if(txn.isExpenses){
            // adding the serialized and filtered expenses object to myExpenses in the userModel
            currentUserData.myExpenses.add(txn);     
          }else{
            // adding the serialized and filtered sales object to mySales in the userModel
            currentUserData.mySales.add(txn);     
          }
        }         

      print("CURRENT USER SALES: ${currentUserData.mySales}");
      print("CURRENT USER EXPENSES: ${currentUserData.myExpenses}");

      // deactivating loading
      isLoading.value = false;
    }catch (e){
      AppLogger.e(e);
    }
  }





  // A function to send a reset email to the Admin
   void kickOffPasswordReset(String email) async{
      // start Loading
      UserFeedBack.showLoading();
      // send reset link
      await auth.sendPasswordResetEmail(email: email).then((value) async {
      Get.back(); // remove the loading
      // success message
      UserFeedBack.showSuccess(infoMessage: "Password Reset link has been sent to your email", buttonText: 'Done');
      await Future.delayed(const Duration(seconds: 2));
      // go to login
      goToLoginScreen();

    }).catchError((onError) {
      Get.back();
      UserFeedBack.showError("Error in Password Reset");
    });
 }




  // A function to delete an account from firebase. NOT USED YET
  void deleteUserAccount(String email,String pass) async{
    AuthCredential credential = EmailAuthProvider.credential(email: email, password: pass);
    await user.value!.reauthenticateWithCredential(credential).then((value) {
      value.user!.delete().then((res) {
        // go to login screen
        goToLoginScreen();
        // show success msg
        // UserFeedBack.showSuccess("User Account Deleted ");
      });
    }
    ).catchError((onError)=> UserFeedBack.showError("Failed to delete user account"));
  }




  
  // A function which checks if the user asking for reset Pswd is an admin or not
  Future<bool> adminCheckBeforePswdReset(String suppliedEmail) async {
    try{
      // Getting loggedIn user's data
      DocumentSnapshot<Map<String, dynamic>> user = await userFirestoreReference.doc(suppliedEmail.toLowerCase()).get();
      var userAskingForReset = UserModel.fromSnapshot(user);

      // returning a bool after user detail fetch
      return userAskingForReset.isAdmin;
    }catch (e){
      AppLogger.e(e);
      // if error
      return false;
    }
  }





  // A function which enables the admin to change the password of his/her various staff
  Future<void> changeStaffPassword(String currentPswd, String newPswd, String email, String staffName) async {
     try{
      // start Loading
      UserFeedBack.showLoading();

      // sign in the staff whose password is to be changed
      await auth.signInWithEmailAndPassword(email: email, password: currentPswd);

      var loggedInUser = getCurrentUser();

      // The user/staff whose password is to be changed must be authenticated. There should be a re-authentication
      final cred = EmailAuthProvider.credential(email: email, password: currentPswd);
      await loggedInUser!.reauthenticateWithCredential(cred);

      // changing the password of the staff after re-authentication
      await loggedInUser.updatePassword(newPswd);

      // deactivating loading
      isLoading.value = false;

      // Give success message and logout the Admin after operation is successful
      await auth.signOut();
      UserFeedBack.showSuccess(infoMessage: "You have successfully changed $staffName's password. Please login again!", buttonText: 'Done');
      await Future.delayed(const Duration(seconds: 3));
      goToLoginScreen();        
 
    }catch (e){
      Get.back();
      AppLogger.e(e);
    }

  }





}