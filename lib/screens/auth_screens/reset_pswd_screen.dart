import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:saletick/app_constants/app_colors.dart';
import 'package:saletick/app_constants/app_dimensions.dart';
import 'package:saletick/controllers/auth_controller.dart';
import 'package:saletick/custom_widgets/buttons/main_button.dart';
import 'package:saletick/utilities/feedback.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({Key? key}) : super(key: key);


  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {

  // text controller
  final emailController = TextEditingController();

  // form key
  var resetPswdForm = GlobalKey<FormState>();

  // auth controller
  var authController = Get.find<AuthController>();

  @override
  void dispose() {
    emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        color: Colors.white,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 50.0, bottom: 25.0),
            child: Form(
              key: resetPswdForm,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: const Icon(Icons.close),
                  ),
                  SizedBox(height: Dimensions.size40*2),
                  Text(
                    'Reset Password',
                    style: TextStyle(
                      fontSize: Dimensions.size40,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: Dimensions.size10),
                  Text(
                    'Make a request to have your password reset !',
                    style: TextStyle(
                      fontSize: Dimensions.size16,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: Dimensions.size40),     
                  Container(
                    padding: EdgeInsets.symmetric(vertical: Dimensions.size10, horizontal: Dimensions.size10),                   
                    alignment: Alignment.topCenter,
                    child: TextFormField(
                      autocorrect: true,                                           
                      controller: emailController,
                      textInputAction: TextInputAction.done,
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
                  SizedBox(height: Dimensions.size30),
                  Align(
                    alignment: Alignment.center,
                    child: MainButton(
                      onPressed: () async {
                        if(resetPswdForm.currentState!.validate()){
                          // supplied email
                          String email = emailController.text.trim();
                          // check is email is an admin email
                          bool isAnAdmin = await authController.adminCheckBeforePswdReset(email);

                          if(isAnAdmin){
                            authController.kickOffPasswordReset(email);
                            Get.back();
                          }else{
                            UserFeedBack.showError("This feature is only available for registered admin users");
                          }
                        }
                      }, 
                      text: 'Send Request'
                    ),
                  ),             
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
  
}