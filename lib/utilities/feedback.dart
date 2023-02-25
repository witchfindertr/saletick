import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:saletick/app_constants/app_colors.dart';
import 'package:saletick/app_constants/app_dimensions.dart';
import 'package:saletick/app_constants/custom_text_styles.dart';
import 'package:saletick/app_constants/dimensions2.dart';
import 'package:saletick/custom_widgets/buttons/main_button.dart';
import 'package:saletick/utilities/utils.dart';


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
  static void showSuccess({required String infoMessage, required String buttonText}){
    showDialog(
      context: Get.context!, 
      barrierDismissible: false,
      barrierColor: Colors.transparent,
      builder: (context) => Dialog(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ClipRect(
              child: BackdropFilter(
                filter: ImageFilter.blur (
                  sigmaX: 11.5*Dimensions2.fem,
                  sigmaY: 11.5*Dimensions2.fem,
                ),
                child: SizedBox(                    
                  width: 322*Dimensions2.fem,
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: Dimensions.size30),
                    decoration: BoxDecoration (
                      borderRadius: BorderRadius.circular(8*Dimensions2.fem),
                      gradient: const LinearGradient (
                        begin: Alignment(-1, -0.237),
                        end: Alignment(0.693, -0.373),
                        colors: <Color>[Color(0x3a5b44d5), Color(0x3a62c3ff)],
                        stops: <double>[0, 1],
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          'assets/images/circle-check-filled-svgrepo-com-1.png',
                          width: 77*Dimensions2.fem,
                          height: 77*Dimensions2.fem,
                        ),
                        SizedBox(height: Dimensions.size10),
                        Text(
                          infoMessage, //'“Milk” Category Successfully created',
                          textAlign: TextAlign.center,
                          style: SafeGoogleFont (
                            'Poppins',
                            fontSize: 16*Dimensions2.ffem,
                            fontWeight: FontWeight.w600,
                            height: 1.5*Dimensions2.ffem/Dimensions2.fem,
                            color: AppColors.mainColor,
                          ),
                        ),
                        SizedBox(height: Dimensions.size20),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: Dimensions.size20),
                          child: MainButton(
                            onPressed: (){}, 
                            text: buttonText, //'+ Create Category',
                            height: Dimensions.size40,
                            isTripleGradient: true,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      )
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