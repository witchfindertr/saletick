import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:saletick/app_constants/app_colors.dart';
import 'package:saletick/app_constants/custom_text_styles.dart';
import 'package:saletick/controllers/auth_controller.dart';



class WelcomeScreen extends StatefulWidget {
  
  const WelcomeScreen({Key? key}) : super(key: key);

   static const routeName = "/welcome";

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}


class _WelcomeScreenState extends State<WelcomeScreen> {

  final authController = Get.find<AuthController>();
  
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top:10),
        margin: EdgeInsets.zero,
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('lib/assets/images/background.png'),
            fit: BoxFit.cover,
          )
        ),
        child: Column(
          mainAxisAlignment:MainAxisAlignment.spaceAround,
          children:  [
            Center(               
              child: Text(
                "Welcome...",
                style: headline3.copyWith(color: AppColors.tarnorFadeTextColor, letterSpacing: 2),
              ),
            ),
            ElevatedButton(
              onPressed: (){
                if(authController.isUserLoggedIn()){
                  authController.goToHomeScreen();
                }else{
                  authController.goToLoginScreen();
                }
              }, 
              child: const Icon(Icons.arrow_forward_rounded),
            ),
          ],
        ),
      ),
    );
  }
}
