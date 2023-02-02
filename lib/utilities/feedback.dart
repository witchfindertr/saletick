import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:saletick/app_constants/app_colors.dart';
import 'package:saletick/app_constants/app_dimensions.dart';
import 'package:saletick/app_constants/custom_text_styles.dart';


class UserFeedBack {

  // Function which returns a Loading Indicator when called
  static void showLoading(){
    showDialog(
      context: Get.context!, 
      barrierDismissible: false,
      builder: (context) => const Center(
        child: CircularProgressIndicator(
          color: AppColors.mainColor
        ),
      ),
    );
  }


  // A function which shows success dialog
  static void showSuccess(String infoMessage){
    showDialog(
      context: Get.context!, 
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(Dimensions.size5)
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.check_circle,
              size: Dimensions.size100*0.8,
              color: AppColors.mainColor,
            ),
            SizedBox(height: Dimensions.size9),
            // The info text
            Text(
              infoMessage,
              textAlign: TextAlign.center,
              style: headline5,
            ),
          ],
        ),
      ),
    );
  }



  // A function which shows error dialog
  static void showError(String errorMessage){
    showDialog(
      context: Get.context!, 
      builder: (context) => AlertDialog(
        backgroundColor: Colors.red,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(Dimensions.size5)
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              errorMessage,
              textAlign: TextAlign.center,
              style: headline5.copyWith(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }


  // A function which request a confirmation when called
  static void showConfirmation({ required VoidCallback onConfirm, required String confirmQuestion}){
    showDialog(
      context: Get.context!, 
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(Dimensions.size9)
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [            
            // The confirmation text
            Text(
              confirmQuestion,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: Dimensions.size20,
              ),
            ),
            SizedBox(height: Dimensions.size25),
            Row(
              children: [
                Expanded(
                  child: InkWell(
                    onTap: (() => Get.back()),
                    child: Text(
                      'Cancel',
                      style: headline4.copyWith(color: AppColors.mainColor),
                    ),
                  ),
                ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: onConfirm, 
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.mainColor,
                      minimumSize: Size(Dimensions.size100*0.6, Dimensions.size40),
                      textStyle: headline4,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(Dimensions.size5)
                      ),
                    ),
                    child: Text('Confirm'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }


}