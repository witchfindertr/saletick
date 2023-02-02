import 'package:flutter/material.dart';
import 'package:saletick/app_constants/app_colors.dart';
import 'package:saletick/app_constants/app_dimensions.dart';


class StaffRowWidget extends StatelessWidget {
  final String text;
  const StaffRowWidget({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: Dimensions.size20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: TextStyle(
              color: AppColors.tarnorTextColor, 
              fontSize: Dimensions.size18,
              fontWeight: FontWeight.w400,
              letterSpacing: 1
            ),
          ),
          // icon
          Icon(
            Icons.arrow_right,
            color: AppColors.tarnorTextColor,
            size: Dimensions.size25,
          ),
        ],
      ),
    );
  }
}