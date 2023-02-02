
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:saletick/app_constants/app_colors.dart';
import 'package:saletick/app_constants/app_dimensions.dart';
import 'package:saletick/app_constants/custom_text_styles.dart';
import 'package:saletick/controllers/auth_controller.dart';
import 'package:saletick/custom_widgets/buttons/main_button.dart';

// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';
// final FirebaseAuth _auth = FirebaseAuth.instance;

class LoginScreen extends StatefulWidget {
  static const routeName = "/employeeloginpage";
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final _myFormKey = GlobalKey<FormState>();

  var authController = Get.find<AuthController>();
  
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: Container(
        padding: EdgeInsets.zero,
        margin: EdgeInsets.zero,
      height: double.infinity,
      width: double.infinity,
      decoration: const BoxDecoration(
          image: DecorationImage(
        image: AssetImage('lib/assets/images/justplaincirclebg.png'),
        fit: BoxFit.cover,
      )),
        child: SingleChildScrollView (
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(top: Dimensions.size30),
                child: Image(image: AssetImage("lib/assets/images/logo.png")),
              ),
              SizedBox(width: double.infinity, height: Dimensions.size10),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
                
              //   children: [
              //     InkWell(
              //       child: Text(
              //         "Employee", 
              //         style: headline4.copyWith(color: AppColors.mainTextColor2),
              //       ),
              //     ),
              //     SizedBox(width: Dimensions.size5, height: Dimensions.size4),
              //     InkWell(
              //       child: Text(
              //         "Employer",
              //         style: headline5,
              //       ),
              //       onTap:(){ 
              //         Get.to(() => EmployerLoginScreen());
              //       },
              //     ),
              //   ],
              // ),
              SizedBox(width: double.infinity, height: Dimensions.size10),
              Form(
                key: _myFormKey,
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(
                        vertical: Dimensions.size10,
                        horizontal: Dimensions.size30 + Dimensions.size5,
                      ),                   
                      alignment: Alignment.topCenter,
                      child: TextFormField(
                        autocorrect: true,                                           
                        controller: emailController,
                        validator: ((email) {
                          if(email!.isEmpty){
                            return 'Email field is empty. Provide your email';
                          }else if(!email.contains('@') || !email.contains('.')){
                            return 'Invalid email address';
                          }else{
                            return null;
                          }
                        }),
                        decoration: InputDecoration(
                          labelText: "Email",
                          fillColor: AppColors.inputFillColor,
                          filled: true,
                          labelStyle:
                              Theme.of(context).inputDecorationTheme.labelStyle,
                          enabled: true,
                          enabledBorder:
                              Theme.of(context).inputDecorationTheme.enabledBorder,
                          errorStyle:
                              Theme.of(context).inputDecorationTheme.errorStyle,
                          border: Theme.of(context).inputDecorationTheme.border,
                          errorBorder:
                              Theme.of(context).inputDecorationTheme.enabledBorder,
                          focusedBorder:
                              Theme.of(context).inputDecorationTheme.focusedBorder,
                          hintStyle: Theme.of(context).inputDecorationTheme.hintStyle,
                          helperStyle:
                              Theme.of(context).inputDecorationTheme.helperStyle,
                        ),
                      ),
                    ),
                    SizedBox(width: double.infinity, height: Dimensions.size5),
                    Container(
                      padding: EdgeInsets.symmetric(
                        vertical: 0.0,
                        horizontal: Dimensions.size30 + Dimensions.size5,
                      ),
                      margin: EdgeInsets.only(bottom: Dimensions.size15),
                      child: TextFormField(
                        controller: passwordController,
                        decoration: InputDecoration(
                          fillColor: AppColors.inputFillColor,
                          filled: true,
                          labelText: "password",
                          labelStyle:
                              Theme.of(context).inputDecorationTheme.labelStyle,
                          enabled: true,
                          enabledBorder:
                              Theme.of(context).inputDecorationTheme.enabledBorder,
                          errorStyle:
                              Theme.of(context).inputDecorationTheme.errorStyle,
                          border: Theme.of(context).inputDecorationTheme.border,
                          errorBorder:
                              Theme.of(context).inputDecorationTheme.enabledBorder,
                          focusedBorder:
                              Theme.of(context).inputDecorationTheme.focusedBorder,
                          hintStyle:
                              Theme.of(context).inputDecorationTheme.hintStyle,
                          helperStyle:
                              Theme.of(context).inputDecorationTheme.helperStyle,
                        ),
                        obscureText: true,
                        validator: (password) {
                          if (password!.isEmpty) {
                            return 'password field is empty';                              
                          }else if(password.length < 9){
                            return "Needed at least 9 characters";
                          }else{
                            return null;
                          }
                        }
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: Dimensions.size16),
              // Forgot Password Text and the SignIn Button
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly, 
                children: [
                  InkWell(
                    child: Text(
                      "Click to go in",
                      style: headline4.copyWith(color: AppColors.mainTextColor2),
                    ),
                  ),
                  // Main button here
                  MainButton(
                    onPressed: (){
                      // if form is valid, then proceed with signIn
                      if(_myFormKey.currentState!.validate()){
                        var email = emailController.text.trim();
                        var pswd = passwordController.text.trim();                          
                        authController.signInUser(email , pswd);
                      }
                    }, 
                    text: 'Sign In'
                  ),
                ]
              ),  
                SizedBox(height: Dimensions.size40),
              // Don't have account? section
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.center, 
              //   children: [
              //     Text(
              //       "Don't have an account?",
              //       style: headline4,
              //     ),
              //     SizedBox(width: Dimensions.size9),
              //     InkWell(
              //       onTap: (){
              //         Get.toNamed(RegisterScreen.routeName);
              //       },
              //       child: Text(
              //         "Create One",
              //         style: headline4.copyWith(color: AppColors.mainTextColor1),
              //       ),
              //     ),
              //   ]
              // ),              
            ],
          ),
        ),
      ),
    );    
  }
}
