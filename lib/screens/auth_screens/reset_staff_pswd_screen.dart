import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:saletick/app_constants/app_colors.dart';
import 'package:saletick/app_constants/app_dimensions.dart';
import 'package:saletick/controllers/auth_controller.dart';
import 'package:saletick/custom_widgets/buttons/main_button.dart';
import 'package:saletick/models/user_model.dart';
import 'package:saletick/utilities/feedback.dart';

class ResetStaffPasswordScreen extends StatefulWidget {
  
  final UserModel staffObj;

  const ResetStaffPasswordScreen({Key? key, required this.staffObj}) : super(key: key);


  @override
  State<ResetStaffPasswordScreen> createState() => _ResetStaffPasswordScreenState();
}

class _ResetStaffPasswordScreenState extends State<ResetStaffPasswordScreen> {

  // text controllers
  final oldPasswordController = TextEditingController();
  final newPasswordController = TextEditingController();

  // form key
  var resetPswdForm = GlobalKey<FormState>();

  // auth controller
  var authController = Get.find<AuthController>();

  @override
  void dispose() {
    oldPasswordController.dispose();
    newPasswordController.dispose();
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
                    "You are about to change ${widget.staffObj.firstName}'s password!",
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
                      obscureText: true,                                         
                      controller: oldPasswordController,
                      textInputAction: TextInputAction.next,
                      validator: ((pswd) {
                        if(pswd!.isEmpty){
                          return 'Field is empty. Provide your password';
                        }else if(pswd.length < 9){
                          return 'Password should be at least 9 characters';
                        }else{
                          return null;
                        }
                      }),
                      decoration: InputDecoration(
                        labelText: "Current Password",
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
                  SizedBox(height: Dimensions.size5),  
                  Container(
                    padding: EdgeInsets.symmetric(vertical: Dimensions.size10, horizontal: Dimensions.size10),                   
                    alignment: Alignment.topCenter,
                    child: TextFormField(
                      autocorrect: true,  
                      obscureText: true,                                         
                      controller: newPasswordController,
                      textInputAction: TextInputAction.done,
                      validator: ((pswd) {
                        if(pswd!.isEmpty){
                          return 'Field is empty. Provide your password';
                        }else if(pswd.length < 9){
                          return 'Password should be at least 9 characters';
                        }else{
                          return null;
                        }
                      }),
                      decoration: InputDecoration(
                        labelText: "New Password",
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
                          // parameters
                          String oldPswd = oldPasswordController.text.trim();
                          String newPswd = newPasswordController.text.trim();
                          String staffName = widget.staffObj.firstName;
                          String staffEmail = widget.staffObj.email;

                          // Calling the change staff pswd function from the authController
                          authController.changeStaffPassword(oldPswd, newPswd, staffEmail, staffName);                         
                          
                        }
                      }, 
                      text: 'Change Password'
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