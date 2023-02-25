import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:saletick/app_constants/app_colors.dart';
import 'package:saletick/app_constants/app_dimensions.dart';
import 'package:saletick/app_constants/dimensions2.dart';
import 'package:saletick/controllers/auth_controller.dart';
import 'package:saletick/custom_widgets/buttons/main_button.dart';
import 'package:saletick/custom_widgets/inputs/input_field_plus_text.dart';
import 'package:saletick/utilities/utils.dart';


class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

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
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    lastNameController.dispose();
    firstNameController.dispose();
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
              'Employer Only',
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
              key: registerFormKey,
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
                    SizedBox(height: Dimensions.size15), 
                    // First name inputField
                    InputFieldPlusTextWidget(
                      text: 'First Name',
                      textController: firstNameController,
                      customTextInputAction: TextInputAction.next,
                    ),
                    SizedBox(height: Dimensions.size15), 
                    // Last name inputField
                    InputFieldPlusTextWidget(
                      text: 'Last Name',
                      textController: lastNameController,
                      customTextInputAction: TextInputAction.next,
                    ),
                    SizedBox(height: Dimensions.size15), 
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
            SizedBox(height: Dimensions.size30), 
            // Main Button Here
            MainButton(
              onPressed: (){
                if(registerFormKey.currentState!.validate()){
                  var email = emailController.text.trim();
                  var pswd = passwordController.text.trim();
                  var lastName = lastNameController.text.trim();
                  var firstName = firstNameController.text.trim();  
                  // call the signUp method                        
                  authController.signUpUser(email, pswd, firstName, lastName);
                }
              }, 
              text: 'Register'
            ),
            SizedBox(height: Dimensions.size30), 
            // Create Account
            InkWell(
              onTap: () => authController.goToLoginScreen(),
              child: Text(
                'Sign In Here',
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
//         padding: EdgeInsets.zero,
//         margin: EdgeInsets.zero,
//       height: double.infinity,
//       width: double.infinity,
//       decoration: const BoxDecoration(
//           image: DecorationImage(
//         image: AssetImage('lib/assets/images/justplaincirclebg.png'),
//         fit: BoxFit.cover,
//       )),
//         child: SingleChildScrollView (
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.start,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               Container(
//                 margin: EdgeInsets.only(top: Dimensions.size30),
//                 child: Image(image: AssetImage("lib/assets/images/logo.png")),
//               ),
//               Text(
//                 "Create an account", 
//                 style: headline4.copyWith(color: AppColors.mainTextColor2),
//               ),
//               SizedBox(width: double.infinity, height: Dimensions.size10),
//               Form(
//                 key: registerFormKey,
//                 child: Column(
//                   children: [
//                     //email
//                     Container(
//                       padding: EdgeInsets.symmetric(
//                         vertical: Dimensions.size10,
//                         horizontal: Dimensions.size30 + Dimensions.size5,
//                       ),                   
//                       alignment: Alignment.topCenter,
//                       child: TextFormField(
//                         autocorrect: true,                                           
//                         controller: emailController,
//                         textInputAction: TextInputAction.next,
//                         validator: ((email) {
//                           if(email!.isEmpty){
//                             return 'Email field is empty. Provide your email';
//                           }else if(!email.contains('@') || !email.contains('.')){
//                             return 'Invalid email address';
//                           }else{
//                             return null;
//                           }
//                         }),
//                         decoration: InputDecoration(
//                           labelText: "Email",
//                           fillColor: AppColors.inputFillColor,
//                           filled: true,
//                           labelStyle:
//                               Theme.of(context).inputDecorationTheme.labelStyle,
//                           enabled: true,
//                           enabledBorder:
//                               Theme.of(context).inputDecorationTheme.enabledBorder,
//                           errorStyle:
//                               Theme.of(context).inputDecorationTheme.errorStyle,
//                           border: Theme.of(context).inputDecorationTheme.border,
//                           errorBorder:
//                               Theme.of(context).inputDecorationTheme.enabledBorder,
//                           focusedBorder:
//                               Theme.of(context).inputDecorationTheme.focusedBorder,
//                           hintStyle: Theme.of(context).inputDecorationTheme.hintStyle,
//                           helperStyle:
//                               Theme.of(context).inputDecorationTheme.helperStyle,
//                         ),
//                       ),
//                     ),
//                     SizedBox(width: double.infinity, height: Dimensions.size5),
//                     // first name
//                     Container(
//                       padding: EdgeInsets.symmetric(
//                         vertical: Dimensions.size10,
//                         horizontal: Dimensions.size30 + Dimensions.size5,
//                       ),                   
//                       alignment: Alignment.topCenter,
//                       child: TextFormField(
//                         autocorrect: true,   
//                         textInputAction: TextInputAction.next,                                        
//                         controller: firstNameController,
//                         validator: ((fname) {
//                           if(fname!.isEmpty){
//                             return 'Field is empty';
//                           }else{
//                             return null;
//                           }
                          
//                         }),
//                         decoration: InputDecoration(
//                           labelText: "First Name",
//                           fillColor: AppColors.inputFillColor,
//                           filled: true,
//                           labelStyle:
//                               Theme.of(context).inputDecorationTheme.labelStyle,
//                           enabled: true,
//                           enabledBorder:
//                               Theme.of(context).inputDecorationTheme.enabledBorder,
//                           errorStyle:
//                               Theme.of(context).inputDecorationTheme.errorStyle,
//                           border: Theme.of(context).inputDecorationTheme.border,
//                           errorBorder:
//                               Theme.of(context).inputDecorationTheme.enabledBorder,
//                           focusedBorder:
//                               Theme.of(context).inputDecorationTheme.focusedBorder,
//                           hintStyle: Theme.of(context).inputDecorationTheme.hintStyle,
//                           helperStyle:
//                               Theme.of(context).inputDecorationTheme.helperStyle,
//                         ),
//                       ),
//                     ),
//                     SizedBox(width: double.infinity, height: Dimensions.size5),
//                     // Last Name
//                     Container(
//                       padding: EdgeInsets.symmetric(
//                         vertical: Dimensions.size10,
//                         horizontal: Dimensions.size30 + Dimensions.size5,
//                       ),                   
//                       alignment: Alignment.topCenter,
//                       child: TextFormField(
//                         autocorrect: true, 
//                         textInputAction: TextInputAction.next,                                          
//                         controller: lastNameController,
//                         validator: ((lname) {
//                           if(lname!.isEmpty){
//                             return 'Field is empty';
//                           }else{
//                             return null;
//                           }
//                         }),
//                         decoration: InputDecoration(
//                           labelText: "Last Name",
//                           fillColor: AppColors.inputFillColor,
//                           filled: true,
//                           labelStyle:
//                               Theme.of(context).inputDecorationTheme.labelStyle,
//                           enabled: true,
//                           enabledBorder:
//                               Theme.of(context).inputDecorationTheme.enabledBorder,
//                           errorStyle:
//                               Theme.of(context).inputDecorationTheme.errorStyle,
//                           border: Theme.of(context).inputDecorationTheme.border,
//                           errorBorder:
//                               Theme.of(context).inputDecorationTheme.enabledBorder,
//                           focusedBorder:
//                               Theme.of(context).inputDecorationTheme.focusedBorder,
//                           hintStyle: Theme.of(context).inputDecorationTheme.hintStyle,
//                           helperStyle:
//                               Theme.of(context).inputDecorationTheme.helperStyle,
//                         ),
//                       ),
//                     ),
//                     SizedBox(width: double.infinity, height: Dimensions.size5),
//                     // password
//                     Container(
//                       padding: EdgeInsets.symmetric(
//                         vertical: 0.0,
//                         horizontal: Dimensions.size30 + Dimensions.size5,
//                       ),
//                       margin: EdgeInsets.only(bottom: Dimensions.size15),
//                       child: TextFormField(
//                         controller: passwordController,
//                         textInputAction: TextInputAction.next,
//                         decoration: InputDecoration(
//                           fillColor: AppColors.inputFillColor,
//                           filled: true,
//                           labelText: "password",
//                           labelStyle:
//                               Theme.of(context).inputDecorationTheme.labelStyle,
//                           enabled: true,
//                           enabledBorder:
//                               Theme.of(context).inputDecorationTheme.enabledBorder,
//                           errorStyle:
//                               Theme.of(context).inputDecorationTheme.errorStyle,
//                           border: Theme.of(context).inputDecorationTheme.border,
//                           errorBorder:
//                               Theme.of(context).inputDecorationTheme.enabledBorder,
//                           focusedBorder:
//                               Theme.of(context).inputDecorationTheme.focusedBorder,
//                           hintStyle:
//                               Theme.of(context).inputDecorationTheme.hintStyle,
//                           helperStyle:
//                               Theme.of(context).inputDecorationTheme.helperStyle,
//                         ),
//                         obscureText: true,
//                         validator: (password) {
//                           if (password!.isEmpty) {
//                             return 'password field is empty';                              
//                           }else if(password.length < 9){
//                             return "Needed at least 9 characters";
//                           }else{
//                             return null;
//                           }
//                         }
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               // Forgot Password Text and the SignIn Button
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly, 
//                 children: [
//                   InkWell(
//                     onTap: () => Get.to(const ResetPasswordScreen()),
//                     child: Text(
//                       "Forgot Password?",
//                       style: headline4.copyWith(color: AppColors.mainTextColor2),
//                     ),
//                   ),
//                   // Main button here
//                   MainButton(
//                     onPressed: (){                                               
//                       // if form is valid, then proceed with signUp
//                       if(registerFormKey.currentState!.validate()){
//                         var email = emailController.text.trim();
//                         var pswd = passwordController.text.trim();
//                         var lastName = lastNameController.text.trim();
//                         var firstName = firstNameController.text.trim();  
//                         // call the signUp method                        
//                         authController.signUpUser(email, pswd, firstName, lastName);
//                       }
//                     }, 
//                     text: 'Sign Up'
//                   ),
//                 ]
//               ),  
//                 SizedBox(height: Dimensions.size40),
//               // Don't have account? section
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center, 
//                 children: [
//                   Text(
//                     "Already have an account?",
//                     style: headline4,
//                   ),
//                   SizedBox(width: Dimensions.size9),
//                   InkWell(
//                     onTap: (){
//                       authController.goToLoginScreen();
//                     },
//                     child: Text(
//                       "Login here",
//                       style: headline4.copyWith(color: AppColors.mainTextColor1),
//                     ),
//                   ),
//                 ]
//               ), 
//               SizedBox(height: Dimensions.size40),             
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }