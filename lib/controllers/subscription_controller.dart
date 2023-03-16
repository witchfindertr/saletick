
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:saletick/app_constants/app_colors.dart';
import 'package:saletick/controllers/auth_controller.dart';
import 'package:saletick/models/user_subscription_model.dart';
import 'package:saletick/persistent_data/locals.dart';
import 'package:saletick/subscriptions_setup/payloads.dart';
import 'package:saletick/subscriptions_setup/sub_APIs.dart';
import 'package:saletick/subscriptions_setup/subscription_status.dart';
import 'package:saletick/utilities/feedback.dart';
import 'package:saletick/utilities/firebase_references.dart';
import 'package:saletick/utilities/logger.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SubscriptionController extends GetxController {

  // Instance of getConnect
  final _getConnect = GetConnect();

  // Subscription Status
  int notSubscribed = SubscriptionStatus.values.indexOf(SubscriptionStatus.none);
  int trialPlan = SubscriptionStatus.values.indexOf(SubscriptionStatus.trial);
  int starterPlan = SubscriptionStatus.values.indexOf(SubscriptionStatus.starter);
  int premiumPlan = SubscriptionStatus.values.indexOf(SubscriptionStatus.premium);


  // instance of auth controller
  var authController = Get.find<AuthController>();


  // LISTS
  final listOfAllSubscriptions = <UserSubscriptionModel>[].obs;
  final userSubDetailList = <UserSubscriptionModel>[].obs;
  UserSubscriptionModel get userSubscriptionDetails => userSubDetailList.first;


  



  // A function that will initialize or subscribe a user to a particular Subscription_Plan
  Future<void> subscribeUserToAPlan({required String amount, required String planCode}) async {

    // instance of shared preferences
    final prefs = await SharedPreferences.getInstance();

    try{
       Response response = await _getConnect.post(
        SubscriptionAPIs.startSubscriptionAPI, 
        SubPayloads.startSubPayload(authController.getCurrentUser()!.email!, amount, planCode),
        headers: SubPayloads.subHeader,
      );

      if(response.body['status']==true){
        await prefs.setString(PAYMENT_LINK, "${response.body['data']['authorization_url']}");
        await prefs.setString(TXN_REFERENCE_ID, "${response.body['data']['reference']}");
      }
    }catch (e){
      AppLogger.e(e);
    }

  }


  // A function to verify user's subscription transaction
  Future<bool> verifyUserSubscription(int subscriptionStatus) async{
    // instance of shared preferences
    final prefs = await SharedPreferences.getInstance();
    String? txnReference = prefs.getString(TXN_REFERENCE_ID);

     try{
       if(txnReference != null){
        Response response = await _getConnect.get(
          SubscriptionAPIs.verifySubscriptionTxnAPI(txnReference),
          headers: SubPayloads.subHeader,
        );

        // if success: i.e user is made a customer and user actually subscribed.
        if(response.body['status']==true && response.body['data']['status']=="success" && response.body['data']['gateway_response']=="Successful"){
          // fetching all subscriptions and updating the current user's subscription info in the database
          await fetchAndUpdateUserSubscriptionDetails(subscriptionStatus);
          return true;
        }      

      }

      return false;
     
    }catch (e){      
      AppLogger.e(e);
      return false;
    }
  }



  // A function to get a specific user's subscription details
  Future<void> fetchAndUpdateUserSubscriptionDetails(int subscriptionStatus) async {
    // instance of shared preferences
    final prefs = await SharedPreferences.getInstance();

    // Email of loggedIn User
    String currentUserEmail = authController.getCurrentUser()!.email!;

    try{
      // Fetch all subscriptions
       Response response = await _getConnect.get(
        SubscriptionAPIs.fetchAllSubscriptionsAPI, 
        headers: SubPayloads.subHeader,
      );

      if(response.body['status']==true){
        List allData = response.body['data'];
        listOfAllSubscriptions.value = []; // emptying the list
        
        // populating the list with recently fetched data
        for(var d in allData){
          listOfAllSubscriptions.add(UserSubscriptionModel.fromJson(d));
        }
        print(listOfAllSubscriptions);

        // Getting the the subscription details of the currently logged in user.
        for(var sub in listOfAllSubscriptions){
          if(sub.customer.email == currentUserEmail){
            // Saving subscriptio_code & email_token in the locals
            await prefs.setString(SUBSCRIPTION_CODE, sub.subscriptionCode);
            await prefs.setString(EMAIL_TOKEN, sub.emailToken);
            // Fetch current user's subscription details
            Response subDataResponse = await _getConnect.get(
              SubscriptionAPIs.getSpecificSubscriptionAPI(sub.subscriptionCode), 
              headers: SubPayloads.subHeader,
            );
            // if success
            if(subDataResponse.body['status']==true){
              // Saving the data gotten in a dynamic list so that it can be manipulated
              List gottenUserDataList = response.body['data'];
              // de-serializing the data            
              userSubDetailList.assign(UserSubscriptionModel.fromJson(gottenUserDataList.first));
              // Updating user's subscription status
              if(userSubDetailList.first.status=="active"){
                print("My Subscription is still active");
                print(userSubDetailList);
                // updating subscription details on the DB (ACTIVE)
                await updateMySubscriptionStatus(
                  subStatus: subscriptionStatus, 
                  subCode: userSubDetailList.first.subscriptionCode, 
                  subEmailToken: userSubDetailList.first.emailToken, 
                  isOnFreeTrial: false
                );
              }else{
                print("My Subscription NOT ACTIVE");
                // updating subscription details on the DB (NOT ACTIVE)
                await updateMySubscriptionStatus(
                  subStatus: notSubscribed, 
                  subCode: userSubDetailList.first.subscriptionCode, 
                  subEmailToken: userSubDetailList.first.emailToken, 
                  isOnFreeTrial: false
                );
              }
            }
          }
        }

      }
    }catch (e){
      AppLogger.e(e);
    }
  }


  // A function that will send an email to a user, with a link to reset or update their debit/credit card details.
  void sendUserCardResetEmail(){

  }



  // A function that will unsubscribe, de-activate or disable user's subscription
  void unSubscribeUserFromPlan(){

  }



  // A function which updates user's subscripition status/info
  Future<void> updateMySubscriptionStatus({ required int subStatus, required String subCode, required String subEmailToken,  required bool isOnFreeTrial, DateTime? startedTrialOn, bool? isDoneWithTrial }) async {
    try{
      // Get the current user's info and data
      DocumentSnapshot<Map<String, dynamic>> userData = await userFirestoreReference.doc(authController.getCurrentUser()!.email).get();
   
      // update the image field which is gotten from fetched user data
      await userData.reference.update({
        'subscription_status': subStatus,
        'subscription_code': subCode,
        'subscription_email_code': subEmailToken,
        'isOnFreeTrial': isOnFreeTrial,
        'started_trial_on': startedTrialOn ?? authController.currentUserData.startedTrialOn,
        'isDoneWithTrial': isDoneWithTrial?? authController.currentUserData.isDoneWithTrial,
      });    
      
      // delay before next API call
      await Future.delayed(const Duration(seconds: 1));
      // Get details of user after profile picture is changed
      await authController.getCurrentUserDetails();
    }catch (e){
      AppLogger.e(e);
    }
  }




  // A function that will kick-start the user on a 'Free Trial Mode or Plan'
  Future<void> startAFreeTrialPlanForUser() async {
    try{
      // start Loading
      UserFeedBack.showLoading();

      // Updating user's subscription status in the DB to fit the trial plan
      await updateMySubscriptionStatus(
        subStatus: trialPlan, 
        subCode: '', 
        subEmailToken: '', 
        isOnFreeTrial: true,
        startedTrialOn: DateTime.now(),
      );
      // delay before next API call
      await Future.delayed(const Duration(seconds: 1));
      // Get details of user after signup
      await authController.getCurrentUserDetails();
      // delay before the next operation
      await Future.delayed(const Duration(seconds: 1));
      authController.goToHomeScreen();
      // Display a success message
      Get.snackbar(
        'SUCCESS', 
        'You have now started your free trial! Remember that this free trial only lasts for 90 days; within this period, you are expected to upgrade your subscription plan in order for you to continue with our services. Thank you!',
        backgroundColor: AppColors.saletickGreen,
        colorText: Colors.white,
        duration: const Duration(seconds: 20),
      );
    }catch (e){
      AppLogger.e(e);
      Get.back();
      UserFeedBack.showError("Execution Process failed! Check your internet connection");
    }
  }







}