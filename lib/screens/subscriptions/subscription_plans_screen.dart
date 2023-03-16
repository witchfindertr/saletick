import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saletick/app_constants/app_colors.dart';
import 'package:saletick/app_constants/app_dimensions.dart';
import 'package:saletick/controllers/auth_controller.dart';
import 'package:saletick/controllers/subscription_controller.dart';
import 'package:saletick/custom_widgets/buttons/subscription_plan_button.dart';
import 'package:saletick/custom_widgets/cards/subscription_plan_card.dart';
import 'package:saletick/persistent_data/locals.dart';
import 'package:saletick/screens/subscriptions/payment_screen.dart';
import 'package:saletick/subscriptions_setup/subscription_status.dart';
import 'package:saletick/utilities/feedback.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class SubscriptionPlansScreen extends GetView<SubscriptionController> {

  SubscriptionPlansScreen({super.key});

  static const String routeName = '/subscription-plans';

  // Subscription Status
  int notSubscribed = SubscriptionStatus.values.indexOf(SubscriptionStatus.none);
  int trialPlan = SubscriptionStatus.values.indexOf(SubscriptionStatus.trial);
  int starterPlan = SubscriptionStatus.values.indexOf(SubscriptionStatus.starter);
  int premiumPlan = SubscriptionStatus.values.indexOf(SubscriptionStatus.premium);

  // instance of authController
  var authController = Get.find<AuthController>();

  @override
  Widget build(BuildContext context) {   

    return SafeArea(
      child: Scaffold(
        // backgroundColor: Colors.grey.withOpacity(0.2),
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.logout_outlined, color: Colors.white),
            onPressed: authController.signOutUser,
          ),
          backgroundColor: Colors.purple,
          elevation: 0,
          title: DefaultTextStyle(
            style: GoogleFonts.montserrat(
              textStyle: TextStyle(fontWeight: FontWeight.w600)
            ),            
            child: AnimatedTextKit(
              animatedTexts: [
                WavyAnimatedText('Here are'),
                WavyAnimatedText('Salestick Subscription Plans'),
              ],
              isRepeatingAnimation: true,
              onTap: () {
                print("Tap Event");
              },
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(15.0),
                child: Center(                  
                  child: Text(
                    'CHOOSE A PLAN',
                    style: GoogleFonts.lato(
                      textStyle: TextStyle(
                        color: Color.fromRGBO(97, 4, 95, 1),
                        fontSize: Dimensions.size30,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                ),
              ),
              // FREE TRIAL PLAN
              if(authController.currentUserData.isDoneWithTrial==false && authController.currentUserData.isOnFreetrial==false)
                Column(
                  children: [
                    SubscriptionPlanCard(
                      planName: 'Free Trial',
                      price: '₦0',
                      isTrial: true,
                      description: 'Have a taste of what Salestick has to offer',
                    ),
                    SubscriptionButton(
                      text: '   START TRIAL   ',
                      onPressed: () {
                        UserFeedBack.showConfirmation(
                          confirmQuestion: 'Are you sure you want to start a free trial?',
                          onConfirm: (){
                            Get.back();
                            // calling the function that will initiate the Trial Plan
                            controller.startAFreeTrialPlanForUser();                      
                          },
                        );
                      },
                    ), 
                    SizedBox(height: Dimensions.size60),  
                  ],
                ),              
              // STARTER PLAN            
              SubscriptionPlanCard(
                planName: 'Starter Plan',
                price: '₦6k',
                description: 'No Business Chart Analysis \n 5 Sales Reps \n 200 Products Maximum',
              ),
              SubscriptionButton(
                text: '    SUBSCRIBE    ',
                onPressed: () async {
                  // Calling the initialize subscription function
                  await controller.subscribeUserToAPlan(amount: '60', planCode: 'PLN_y6ypz1d4tgi2kuh');

                  // Fetching data from sharedPref
                  var pref = await SharedPreferences.getInstance();
                  String? starterPaymentUrl = pref.getString(PAYMENT_LINK);

                  if(starterPaymentUrl != null && starterPaymentUrl.isNotEmpty){
                    // Going to Payment screen
                    Get.to(SubscriptionPaymentScreen(
                      nameOfPlan: 'Starter Plan',
                      subPaymentUrl: starterPaymentUrl,
                      subscriptionStatus: starterPlan,
                    ));
                  }else{
                    UserFeedBack.showError('Something went wrong. Check your internet');
                  }                  
                  
                },
              ), 
              SizedBox(height: Dimensions.size60),  
              // PREMIUM PLAN            
              SubscriptionPlanCard(
                planName: 'Premium Plan',
                price: '₦50k',
                description: 'Business Chart & Market Analysis \n Unlimited number of Sales Reps \n Unlimited number of Products',
              ),
              SubscriptionButton(
                text: '    SUBSCRIBE    ',
                onPressed: () async{
                   // Calling the initialize subscription function
                  await controller.subscribeUserToAPlan(amount: '60', planCode: 'PLN_gvxuqxc0mko0rq0');

                  // Fetching data from sharedPref
                  var pref = await SharedPreferences.getInstance();
                  String? starterPaymentUrl = pref.getString(PAYMENT_LINK);

                  if(starterPaymentUrl != null && starterPaymentUrl.isNotEmpty){
                    // Going to Payment Screen
                    Get.to(SubscriptionPaymentScreen(
                      nameOfPlan: 'Premium Plan',
                      subPaymentUrl: starterPaymentUrl,
                      subscriptionStatus: premiumPlan,
                    ));
                  }else{
                    UserFeedBack.showError('Something went wrong. Check your internet');
                  }             
                  
                },
              ), 
              SizedBox(height: Dimensions.size100),           
            ],
          ),
        ),
      ),
    );
  }
}
