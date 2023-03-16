import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:saletick/app_constants/app_colors.dart';
import 'package:saletick/app_constants/dimensions2.dart';
import 'package:saletick/controllers/auth_controller.dart';
import 'package:saletick/controllers/subscription_controller.dart';
import 'package:saletick/utilities/utils.dart';



class IntroScreen extends GetView<AuthController> {

  const IntroScreen({super.key});

  static const String routeName = '/get-started';

  

   @override
  Widget build(BuildContext context) {

    var subController = Get.put(SubscriptionController());

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.fromLTRB(27*Dimensions2.fem, 120*Dimensions2.fem, 27*Dimensions2.fem, 114*Dimensions2.fem),
          width: double.infinity,
          decoration: const BoxDecoration (
            color: Color(0xffffffff),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // image at Get started screen
              Container(
                margin: EdgeInsets.fromLTRB(0*Dimensions2.fem, 0*Dimensions2.fem, 0*Dimensions2.fem, 69*Dimensions2.fem),
                width: 336*Dimensions2.fem,
                height: 257*Dimensions2.fem,
                child: Image.asset(
                  'assets/images/asset-13x-1-2f2.png',
                ),
              ),
              Container(
                // getuptodatewithyourinventory
                margin: EdgeInsets.fromLTRB(4*Dimensions2.fem, 0*Dimensions2.fem, 0*Dimensions2.fem, 33*Dimensions2.fem),
                constraints: BoxConstraints (
                  maxWidth: 257*Dimensions2.fem,
                ),
                child: Text(
                  'Get Up To date with your Inventory',
                  textAlign: TextAlign.center,
                  style: SafeGoogleFont (
                    'Montserrat',
                    fontSize: 32*Dimensions2.ffem,
                    fontWeight: FontWeight.w700,
                    height: 1.2175*Dimensions2.ffem/Dimensions2.fem,
                    color: Color(0xff8f7aff),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  // if user is not logged in, go to login screen
                  if(!controller.isUserLoggedIn()){
                    controller.goToLoginScreen();
                  }                  
                 
                },
                child: Container(
                  margin: EdgeInsets.fromLTRB(50*Dimensions2.fem, 0*Dimensions2.fem, 50*Dimensions2.fem, 0*Dimensions2.fem),
                  width: double.infinity,
                  height: 62*Dimensions2.fem,
                  decoration: BoxDecoration (
                    borderRadius: BorderRadius.circular(8*Dimensions2.fem),
                    gradient: const LinearGradient (
                      begin: Alignment(-1, -1.075),
                      end: Alignment(0.931, 0.613),
                      colors: <Color>[AppColors.mainColorLight, Color(0xbc0081d1), Color(0xbc640893)],
                      stops: <double>[0, 0.722, 1],
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x19000000),
                        offset: Offset(0*Dimensions2.fem, 2*Dimensions2.fem),
                        blurRadius: 6.5*Dimensions2.fem,
                      ),
                    ],
                  ),
                  child: Center(
                    child: Text(
                      'Get Started',
                      style: SafeGoogleFont (
                        'Montserrat',
                        fontSize: 16*Dimensions2.ffem,
                        fontWeight: FontWeight.w700,
                        height: 1.2175*Dimensions2.ffem/Dimensions2.fem,
                        color: Color(0xffffffff),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}