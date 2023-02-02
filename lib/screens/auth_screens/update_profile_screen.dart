import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:saletick/app_constants/app_dimensions.dart';
import 'package:saletick/controllers/auth_controller.dart';
import 'package:saletick/custom_widgets/buttons/main_button.dart';
import 'package:saletick/custom_widgets/header/header_widget.dart';
import 'package:saletick/custom_widgets/inputs/input_field_plus_text.dart';
import 'package:saletick/custom_widgets/texts/text_n_divider_header.dart';
import 'package:saletick/utilities/feedback.dart';


class UpdateProfileScreen extends StatefulWidget {

  const UpdateProfileScreen({Key? key}) : super(key: key);

  @override
  State<UpdateProfileScreen> createState() => _UpdateProfileScreenState();
}

class _UpdateProfileScreenState extends State<UpdateProfileScreen> {

  // form key
  var createStaffKey = GlobalKey<FormState>();

  // IMAGE UPLOAD
  PlatformFile? pickedImage;
  

  // instance of auth controller
  var authController = Get.find<AuthController>();


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

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const HeaderWidget(),
            const TextnDividerHeader(text: 'Update Profile Image'),
            // Form Section
            Container(
              padding: EdgeInsets.symmetric(horizontal: Dimensions.size5, vertical: Dimensions.size20),
              margin: EdgeInsets.symmetric(vertical: Dimensions.size30),
              child: Column(
                children: [                  
                  // Upload Image
                  Row(
                    children: [                      
                      Expanded(
                        child: GestureDetector(
                          onTap: pickImage,
                          child: AbsorbPointer(
                            child: InputFieldPlusTextWidget(text: 'Choose Image', textController: TextEditingController(), myHintText: 'Pick Image File'),
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
                          style: const TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  // The Create Button
                  MainButton(
                    onPressed: () {                       
                     // Has image been picked?
                     if(pickedImage == null){
                      UserFeedBack.showError('You have not selected any image. Simply tap on the "Pick Image File" field to select an image file');
                     }else{

                      UserFeedBack.showConfirmation(
                        onConfirm: (){
                          // pop off the confirm dialog
                          Get.back();
                          // call the upload Staff function
                          authController.changeProfileImage(pickedImage!);
                        },
                        confirmQuestion: 'Proceed To Upload Profile Picture?' ,
                      );
                      
                     }
                    },
                    text: 'Update',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}