import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:saletick/app_constants/app_colors.dart';
import 'package:saletick/app_constants/app_dimensions.dart';
import 'package:saletick/app_constants/custom_text_styles.dart';
import 'package:saletick/controllers/auth_controller.dart';
import 'package:saletick/custom_widgets/buttons/main_button.dart';


class RegisterScreen extends StatefulWidget {
  RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();

  static const String routeName = '/register';
}

class _RegisterScreenState extends State<RegisterScreen> {

  // form key
  final registerFormKey = GlobalKey<FormState>();
  //  Input Controllers
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final lastNameController = TextEditingController();
  final firstNameController = TextEditingController();

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
              Text(
                "Create an account", 
                style: headline4.copyWith(color: AppColors.mainTextColor2),
              ),
              SizedBox(width: double.infinity, height: Dimensions.size10),
              Form(
                key: registerFormKey,
                child: Column(
                  children: [
                    //email
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
                    // first name
                    Container(
                      padding: EdgeInsets.symmetric(
                        vertical: Dimensions.size10,
                        horizontal: Dimensions.size30 + Dimensions.size5,
                      ),                   
                      alignment: Alignment.topCenter,
                      child: TextFormField(
                        autocorrect: true,                                           
                        controller: firstNameController,
                        validator: ((fname) {
                          if(fname!.isEmpty){
                            return 'Field is empty';
                          }else{
                            return null;
                          }
                          
                        }),
                        decoration: InputDecoration(
                          labelText: "First Name",
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
                    // Last Name
                    Container(
                      padding: EdgeInsets.symmetric(
                        vertical: Dimensions.size10,
                        horizontal: Dimensions.size30 + Dimensions.size5,
                      ),                   
                      alignment: Alignment.topCenter,
                      child: TextFormField(
                        autocorrect: true,                                           
                        controller: lastNameController,
                        validator: ((lname) {
                          if(lname!.isEmpty){
                            return 'Field is empty';
                          }else{
                            return null;
                          }
                        }),
                        decoration: InputDecoration(
                          labelText: "Last Name",
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
                    // password
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
              // Forgot Password Text and the SignIn Button
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly, 
                children: [
                  InkWell(
                    child: Text(
                      "Forgot Password?",
                      style: headline4.copyWith(color: AppColors.mainTextColor2),
                    ),
                  ),
                  // Main button here
                  MainButton(
                    onPressed: (){                                               
                      // if form is valid, then proceed with signUp
                      if(registerFormKey.currentState!.validate()){
                        var email = emailController.text.trim();
                        var pswd = passwordController.text.trim();
                        var lastName = lastNameController.text.trim();
                        var firstName = firstNameController.text.trim();  
                        // call the signUp method                        
                        authController.signUpUser(email, pswd, firstName, lastName);
                      }
                    }, 
                    text: 'Sign Up'
                  ),
                ]
              ),  
                SizedBox(height: Dimensions.size40),
              // Don't have account? section
              Row(
                mainAxisAlignment: MainAxisAlignment.center, 
                children: [
                  Text(
                    "Already have an account?",
                    style: headline4,
                  ),
                  SizedBox(width: Dimensions.size9),
                  InkWell(
                    onTap: (){
                      authController.goToLoginScreen();
                    },
                    child: Text(
                      "Login here",
                      style: headline4.copyWith(color: AppColors.mainTextColor1),
                    ),
                  ),
                ]
              ), 
              SizedBox(height: Dimensions.size40),             
            ],
          ),
        ),
      ),
    );
  }
}