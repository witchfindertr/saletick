import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:saletick/app_constants/app_colors.dart';
import 'package:saletick/app_constants/app_dimensions.dart';
import 'package:saletick/app_constants/dimensions2.dart';
import 'package:saletick/controllers/auth_controller.dart';
import 'package:saletick/custom_widgets/buttons/main_button.dart';
import 'package:saletick/custom_widgets/inputs/input_field_plus_text.dart';
import 'package:saletick/screens/auth_screens/register_screen.dart';
import 'package:saletick/screens/auth_screens/reset_pswd_screen.dart';
import 'package:saletick/utilities/utils.dart';


class SignInScreen extends StatefulWidget {
  
  @override
  State<SignInScreen> createState() => _SignInScreenState();

  static const String routeName = '/sign-in-screen';
}

class _SignInScreenState extends State<SignInScreen> {

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final _myFormKey = GlobalKey<FormState>();

  var authController = Get.find<AuthController>();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: Dimensions.size100),
            Align(
              child: SizedBox(
                width: 243*Dimensions2.fem,
                height: 186*Dimensions2.fem,
                child: Image.asset(
                  'assets/images/asset-13x-1.png',
                ),
              ),
            ),
            SizedBox(height: Dimensions.size10),
            // Text: Employer
            Text(
              'Employer & Staff',
              style: SafeGoogleFont (
                'Poppins',
                fontSize: 15*Dimensions2.ffem,
                fontWeight: FontWeight.w700,
                height: 1.5*Dimensions2.ffem/Dimensions2.fem,
                color: AppColors.mainColor2,
              ),
            ),   
            SizedBox(height: Dimensions.size30), 
            Form(
              key: _myFormKey,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: Dimensions.size20),
                child: Column(
                  children: [
                    // Email inputField
                    InputFieldPlusTextWidget(
                      text: 'E-mail',
                      textController: emailController,
                      isEmail: true,
                      customTextInputAction: TextInputAction.next,
                    ),
                    SizedBox(height: Dimensions.size20), 
                    // Password inputField
                    InputFieldPlusTextWidget(
                      text: 'Password',
                      textController: passwordController,
                      isPassword: true,
                      customTextInputAction: TextInputAction.done,
                    ),
                  ],
                ),
              ),
            ),   
            // Forgot Password Text             
            Align(
              alignment: Alignment.centerRight,
              child: InkWell(
                onTap: () {
                  Get.to(const ResetPasswordScreen());
                },
                child: Padding(
                  padding: EdgeInsets.only(right: Dimensions.size25),
                  child: Text(
                    'Forgot Password?',
                    style: SafeGoogleFont (
                      'Montserrat',
                      fontSize: 14*Dimensions2.ffem,
                      fontWeight: FontWeight.w700,
                      height: 1.2175*Dimensions2.ffem/Dimensions2.fem,
                      color: AppColors.mainColor2,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: Dimensions.size30), 
            // Main Button Here
            MainButton(
              onPressed: (){
                if(_myFormKey.currentState!.validate()){
                  var email = emailController.text.trim();
                  var pswd = passwordController.text.trim();  
                  // calling our sign In function from auth controller                        
                  authController.signInUser(email , pswd);
                }
                  
              }, 
              text: 'Sign In'
            ),
            SizedBox(height: Dimensions.size30), 
            // Create Account
            InkWell(
              onTap: () => Get.toNamed(RegisterScreen.routeName),
              child: Text(
                'Create Account',
                style: SafeGoogleFont (
                  'Montserrat',
                  fontSize: 14*Dimensions2.ffem,
                  fontWeight: FontWeight.w700,
                  height: 1.2175*Dimensions2.ffem/Dimensions2.fem,
                  color: AppColors.mainColor2,
                ),
              ),
            ),
            SizedBox(height: Dimensions.size100), // space at screen end
          ],
        ),
      ),
    );
  }
}