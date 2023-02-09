import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:file_picker/file_picker.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:saletick/models/sales_model.dart';
import 'package:saletick/models/user_model.dart';
import 'package:saletick/screens/auth_screens/login.dart';
import 'package:saletick/screens/home/tarnor_home.dart';
import 'package:saletick/screens/intro/welcome.dart';
import 'package:saletick/utilities/feedback.dart';
import 'package:saletick/utilities/firebase_references.dart';
import 'package:saletick/utilities/logger.dart';


class AuthController extends GetxController {
  late FirebaseAuth auth;

  Rxn<User> user = Rxn<User>();

  late Stream<User?> authStateChanges;

  // users data list
  final allUsersDataList = <UserModel>[].obs;
  // Current user's Sales
  final userSalesList = <SalesModel>[].obs;

  // currentlyLoggedInUser details
  late UserModel currentUserData;

  // user's profile image
  final usersProfileImage = ''.obs;

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
      Get.offAllNamed(WelcomeScreen.routeName);
    }
  }


  
  bool isUserLoggedIn(){
    return auth.currentUser != null;
  }


  void goToHomeScreen(){
    Get.offAllNamed(TanorHomeScreen.routeName);
  }


  void goToLoginScreen(){
    Get.offAllNamed(LoginScreen.routeName);
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
    String phone = '';
    String position = 'ADMIN/CEO';
    String imageUrl = '';
    bool isUserAnAdmin = true;

    try{
      // start Loading
      UserFeedBack.showLoading();
      await auth.createUserWithEmailAndPassword(email: email, password: password);
      await Future.delayed(const Duration(seconds: 1));
      // save user details in the Database
      await saveUserInFireStore(email.toLowerCase(), fName, lName, phone, position, imageUrl, "", isUserAnAdmin);
      // Get details of user after signup
      await getCurrentUserDetails();
      UserFeedBack.showSuccess('Registration successful!');
      await Future.delayed(const Duration(seconds: 1));
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
      // show success feedback
      UserFeedBack.showSuccess('You have successfully logged In!');
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
      UserFeedBack.showSuccess('Logout Successful !');
      await Future.delayed(const Duration(seconds: 1));
      goToLoginScreen();
    }catch (e){
      AppLogger.e(e);
    }
  }




  // Function which creates a user in the fireStore DB when registration is done
  Future<void> saveUserInFireStore(String email, String fn, String ln, String phone, String position, String imageUrl, String myAdminEmailAddress, bool isAdmin) async {
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
      mySales: [],
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
        if(u.myAdminEmailAddress == getCurrentUser()!.email && !u.isAdmin){
          print("${u.myAdminEmailAddress} = ${getCurrentUser()!.email}");
          // adding each of the staff to the list
          allUsersDataList.add(u);
          print("STAFF LIST $allUsersDataList");
        }
      }
           

      // Looping through the user Data and fetching userSales data from "mySales Doc" and 
      // assigning each user's sales data to the field of my_sales in the userModel. 
      // This 'my_sales' field is a list of type 'SalesModel'
      for(var u in allUsersDataList){
        // getting users sales data. Users here are the staff of the admin
        QuerySnapshot<Map<String, dynamic>> userSaleData = await userFirestoreReference.doc(u.email).collection('mySales').get();
        // serializing it to a salesModel object
        final salesDataList = userSaleData.docs.map(((e) => SalesModel.fromSnapshot(e))).toList();
        // assigning the serialized object the field of mySales in the userModel
        u.mySales.assignAll(salesDataList);       
      
      }

    }catch (e){
      AppLogger.e(e);
    }
  }




  // A function which creates user profile for a new staff
  Future<void> createNewStaff(String email, String password, String fName, String lName, String phoneNumber, String position, PlatformFile pickedImage) async {
     try{
      // start Loading
      UserFeedBack.showLoading();

      // a boolean variable
      bool isUserAnAdmin = false;
      // my  admin email
      String adminEmail = getCurrentUser()!.email!;
            
      // create user with email & pswd
      await auth.createUserWithEmailAndPassword(email: email, password: password);
      // delay before next API call
      await Future.delayed(const Duration(seconds: 1));
      // upload profile image and save image path in a variable
      final imageUrl = await uploadProfileImage(pickedImage);
      // delay before next API call
      await Future.delayed(const Duration(seconds: 1));
      // save user details in the Database
      await saveUserInFireStore(email.toLowerCase(), fName, lName, phoneNumber, position, imageUrl, adminEmail, isUserAnAdmin);
      // delay
      await Future.delayed(const Duration(seconds: 1));
      // show success feedback
      UserFeedBack.showSuccess('Profile Successfully created');
      // delay & sign out
      await Future.delayed(const Duration(seconds: 1));
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
      // show success feedback
      UserFeedBack.showSuccess('You have successfully changed your profile picture!');
      await Future.delayed(const Duration(seconds: 1));
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
      // getting user's sales
      QuerySnapshot<Map<String, dynamic>> userSaleData = await userFirestoreReference.doc(getCurrentUser()!.email).collection('mySales').get();
      // serializing it to a salesModel object
      final salesDataList = userSaleData.docs.map(((e) => SalesModel.fromSnapshot(e))).toList();
      // assigning the serialized object the field of mySales in the userModel
      currentUserData.mySales.assignAll(salesDataList);

      print("CURRENT USER SALES: ${currentUserData.mySales}");

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
      await auth.sendPasswordResetEmail(email: email).then((value) {
      // success message
      UserFeedBack.showSuccess("Password Reset link has been sent to your email");
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
        UserFeedBack.showSuccess("User Account Deleted ");
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
      UserFeedBack.showSuccess("You have successfully changed $staffName's password. Please login again!");
      await Future.delayed(const Duration(seconds: 3));
      goToLoginScreen();        
 
    }catch (e){
      Get.back();
      AppLogger.e(e);
    }

  }





}