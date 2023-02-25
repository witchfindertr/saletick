import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:saletick/custom_widgets/header/header_one_widget.dart';
import 'package:saletick/app_constants/app_dimensions.dart';
import 'package:saletick/custom_widgets/buttons/main_button.dart';
import 'package:saletick/custom_widgets/inputs/input_field_plus_text.dart';
import 'package:saletick/utilities/feedback.dart';


class AddNewStaffScreen extends StatefulWidget {
  const AddNewStaffScreen({Key? key}) : super(key: key);

  @override
  State<AddNewStaffScreen> createState() => _AddNewStaffScreenState();
}

class _AddNewStaffScreenState extends State<AddNewStaffScreen> {

  // input controllers
  TextEditingController firstNameController = TextEditingController();
  TextEditingController surnameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController positionController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController qualificationController = TextEditingController();
  TextEditingController imageController = TextEditingController();

  // form key
  var createStaffKey = GlobalKey<FormState>();

  // IMAGE UPLOAD
  PlatformFile? pickedImage;

  // // instance of auth controller
  // var authController = Get.find<AuthController>();


  // function which prompts the user to select an image file
  Future<void> pickImage() async{
    final result = await FilePicker.platform.pickFiles();
    if(result == null) return;

    setState(() {
      pickedImage = result.files.first;
    });
  }


  @override
  Widget build(BuildContext context) {
    // setting this value to imageController to bypass validation
    imageController.text = ' ';

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Header
            const SaletickHeaderOne(headerOneTitleText: 'Create Staff'),
            // Form Section
            Container(
              padding: EdgeInsets.symmetric(horizontal: Dimensions.size5, vertical: Dimensions.size20),
              margin: EdgeInsets.symmetric(vertical: Dimensions.size30),
              child: Form(
                key: createStaffKey,
                child: Column(
                  children: [                    
                    Row(
                      children: [
                        // first Name
                        Expanded(
                          child: InputFieldPlusTextWidget(
                            text: 'First Name', 
                            textController: firstNameController,
                            customTextInputAction: TextInputAction.next,
                          ),
                        ),
                        // surname
                        Expanded(
                          child: InputFieldPlusTextWidget(
                            text: 'Surname', 
                            textController: surnameController,
                            customTextInputAction: TextInputAction.next,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: Dimensions.size15),
                    Row(
                      children: [
                        // Qualification
                        Expanded(
                          child: InputFieldPlusTextWidget(
                            text: 'Qualification', 
                            textController: qualificationController,
                            customTextInputAction: TextInputAction.next,
                          ),
                        ),
                        // surname
                        Expanded(
                          child: InputFieldPlusTextWidget(
                            text: 'Address', 
                            textController: addressController,
                            customTextInputAction: TextInputAction.next,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: Dimensions.size15),
                    // Email
                    Row(
                      children: [
                        Expanded(
                          child: InputFieldPlusTextWidget(
                            text: 'Email', 
                            textController: emailController, 
                            isEmail: true,
                            customTextInputAction: TextInputAction.next,
                          ),
                        ),
                      ],
                    ),
                     SizedBox(height: Dimensions.size15),
                    // Phone Number & Position
                    Row(
                      children: [
                        Expanded(
                          child: InputFieldPlusTextWidget(
                            text: 'Phone Number', 
                            textController: phoneNumberController,
                            isItForNumber: true,
                            customTextInputAction: TextInputAction.next,
                          ),
                        ),
                        Expanded(
                          child: InputFieldPlusTextWidget(
                            text: 'Position', 
                            textController: positionController,
                            customTextInputAction: TextInputAction.next,
                          ),
                        ),
                      ],
                    ),
                     SizedBox(height: Dimensions.size15),
                    // Password & Confirm Password
                    Row(
                      children: [
                        Expanded(
                          child: InputFieldPlusTextWidget(
                            text: 'Password', 
                            textController: passwordController, 
                            isPassword: true,
                            customTextInputAction: TextInputAction.next,
                          ),
                        ),
                        Expanded(
                          child: InputFieldPlusTextWidget(
                            text: 'Re-Enter Password', 
                            textController: confirmPasswordController, 
                            isPassword: true,
                            customTextInputAction: TextInputAction.next,
                          ),
                        ),
                      ],
                    ), 
                     SizedBox(height: Dimensions.size15),                   
                    // Upload Image
                    Row(
                      children: [                       
                        Expanded(
                          child: GestureDetector(
                            onTap: pickImage,
                            child: AbsorbPointer(
                              child: InputFieldPlusTextWidget(
                                text: 'Select an Image', 
                                textController: imageController,
                                customTextInputAction: TextInputAction.done,
                              )
                            ),
                          ),
                        ),
                      ],
                    ),                    
                    if(pickedImage == null)
                      SizedBox(height: Dimensions.size30),
                    // Widget Showing The Name of the Image picked: shown if file has been picked
                    if(pickedImage != null)
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: Dimensions.size20, vertical: Dimensions.size30),
                        child: Container(
                          color: Colors.green.withOpacity(0.8),
                          padding: EdgeInsets.symmetric(horizontal: Dimensions.size20, vertical: Dimensions.size10),
                          child: Text(
                            pickedImage!.name,
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    // The Create Button
                    MainButton(
                      onPressed: () {                        
                        // checking if the pswd1 and pswd2 matches 
                        if(passwordController.text.trim() != confirmPasswordController.text.trim()){
                          UserFeedBack.showError('Password Mismatch');
                          return;
                        }

                       // Has image been picked?
                      //  if(pickedImage == null){
                      //   UserFeedBack.showError('You have not selected any image. Simply tap on the "Upload Image" field to select an image file');
                      //  }else{
                      //     // checking if form is valid
                      //     if(createStaffKey.currentState!.validate()){
                      //       UserFeedBack.showConfirmation(
                      //         onConfirm: (){
                      //           // pop off the confirm dialog
                      //           Get.back();

                      //           // call the create Staff function                               
                      //           authController.createNewStaff(
                      //             emailController.text.trim(), 
                      //             passwordController.text.trim(),
                      //             firstNameController.text.trim(), 
                      //             surnameController.text.trim(), 
                      //             phoneNumberController.text.trim(), 
                      //             positionController.text.trim(),
                      //             pickedImage!,
                      //           );                              
                      //         }, 
                      //         confirmQuestion: 'Create New Staff Profile?'
                      //       );
                      //     }
                      //  }
                      },
                      text: 'Create',
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


// class AddNewStaffScreen extends StatefulWidget {
//   const AddNewStaffScreen({Key? key}) : super(key: key);

//   @override
//   State<AddNewStaffScreen> createState() => _AddNewStaffScreenState();
// }

// class _AddNewStaffScreenState extends State<AddNewStaffScreen> {

//   // input controllers
//   TextEditingController firstNameController = TextEditingController();
//   TextEditingController surnameController = TextEditingController();
//   TextEditingController emailController = TextEditingController();
//   TextEditingController passwordController = TextEditingController();
//   TextEditingController confirmPasswordController = TextEditingController();
//   TextEditingController phoneNumberController = TextEditingController();
//   TextEditingController positionController = TextEditingController();
//   TextEditingController imageController = TextEditingController();

//   // form key
//   var createStaffKey = GlobalKey<FormState>();

//   // IMAGE UPLOAD
//   PlatformFile? pickedImage;

//   // instance of auth controller
//   var authController = Get.find<AuthController>();


//   // function which prompts the user to select an image file
//   Future<void> pickImage() async{
//     final result = await FilePicker.platform.pickFiles();
//     if(result == null) return;

//     setState(() {
//       pickedImage = result.files.first;
//     });
//   }


//   @override
//   Widget build(BuildContext context) {
//     // setting this value to imageController to bypass validation
//     imageController.text = ' ';

//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             const HeaderWidget(),
//             const TextnDividerHeader(text: 'Create Staff'),
//             // Form Section
//             Container(
//               padding: EdgeInsets.symmetric(horizontal: Dimensions.size5, vertical: Dimensions.size20),
//               margin: EdgeInsets.symmetric(vertical: Dimensions.size30),
//               child: Form(
//                 key: createStaffKey,
//                 child: Column(
//                   children: [                    
//                     Row(
//                       children: [
//                         // first Name
//                         Expanded(
//                           child: InputFieldPlusTextWidget(text: 'First Name', textController: firstNameController),
//                         ),
//                         // surname
//                         Expanded(
//                           child: InputFieldPlusTextWidget(text: 'Surname', textController: surnameController),
//                         ),
//                       ],
//                     ),
//                     // Email
//                     Row(
//                       children: [
//                         Expanded(
//                           child: InputFieldPlusTextWidget(text: 'Email', textController: emailController, isEmail: true),
//                         ),
//                       ],
//                     ),
//                     // Password & Confirm Password
//                     Row(
//                       children: [
//                         Expanded(
//                           child: InputFieldPlusTextWidget(text: 'Password', textController: passwordController, isPassword: true),
//                         ),
//                         Expanded(
//                           child: InputFieldPlusTextWidget(text: 'Re-Enter Password', textController: confirmPasswordController, isPassword: true),
//                         ),
//                       ],
//                     ),
//                     // Phone Number
//                     Row(
//                       children: [
//                         Expanded(
//                           child: InputFieldPlusTextWidget(
//                             text: 'Phone Number', 
//                             textController: phoneNumberController,
//                             isItForNumber: true,
//                           ),
//                         ),
//                       ],
//                     ),
//                     // Position & Upload Image
//                     Row(
//                       children: [
//                         Expanded(
//                           child: InputFieldPlusTextWidget(text: 'Position', textController: positionController),
//                         ),
//                         Expanded(
//                           child: GestureDetector(
//                             onTap: pickImage,
//                             child: AbsorbPointer(
//                               child: InputFieldPlusTextWidget(text: 'Upload Image', textController: imageController)
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
                    
//                     if(pickedImage == null)
//                       SizedBox(height: Dimensions.size30),
//                     // Widget Showing The Name of the Image picked: shown if file has been picked
//                     if(pickedImage != null)
//                       Padding(
//                         padding: EdgeInsets.symmetric(horizontal: Dimensions.size20, vertical: Dimensions.size30),
//                         child: Container(
//                           color: Colors.green.withOpacity(0.8),
//                           padding: EdgeInsets.symmetric(horizontal: Dimensions.size20, vertical: Dimensions.size10),
//                           child: Text(
//                             pickedImage!.name,
//                             style: TextStyle(color: Colors.white),
//                           ),
//                         ),
//                       ),
//                     // The Create Button
//                     MainButton(
//                       onPressed: () {
//                         // checking if the pswd1 and pswd2 matches 
//                         if(passwordController.text.trim().length < 9){
//                           UserFeedBack.showError('Needed at least 9 characters for a password');
//                           return;
//                         }

//                         // checking if the pswd1 and pswd2 matches 
//                         if(passwordController.text.trim() != confirmPasswordController.text.trim()){
//                           UserFeedBack.showError('Password Mismatch');
//                           return;
//                         }

//                        // Has image been picked?
//                        if(pickedImage == null){
//                         UserFeedBack.showError('You have not selected any image. Simply tap on the "Upload Image" field to select an image file');
//                        }else{
//                           // checking if form is valid
//                           if(createStaffKey.currentState!.validate()){
//                             UserFeedBack.showConfirmation(
//                               onConfirm: (){
//                                 // pop off the confirm dialog
//                                 Get.back();

//                                 // call the create Staff function                               
//                                 authController.createNewStaff(
//                                   emailController.text.trim(), 
//                                   passwordController.text.trim(),
//                                   firstNameController.text.trim(), 
//                                   surnameController.text.trim(), 
//                                   phoneNumberController.text.trim(), 
//                                   positionController.text.trim(),
//                                   pickedImage!,
//                                 );                              
//                               }, 
//                               confirmQuestion: 'Create New Staff Profile?'
//                             );
//                           }
//                        }
//                       },
//                       text: 'Create',
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }