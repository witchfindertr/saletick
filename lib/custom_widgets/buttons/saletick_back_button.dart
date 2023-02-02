import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:saletick/app_constants/app_colors.dart';
import 'package:saletick/app_constants/app_dimensions.dart';

class SaletickBackButton extends StatelessWidget {
  const SaletickBackButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Get.back(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // icon
          Icon(
            Icons.arrow_left,
            color: AppColors.mainColor,
            size: Dimensions.size30,
          ),
          // back text
          Text(
            'Back',
            style: TextStyle(
              color: AppColors.tarnorTextColor, 
              fontSize: Dimensions.size16,
              fontWeight: FontWeight.w400,
              letterSpacing: 1
            ),
          ),
        ],
      ),
    );
  }
}