import 'package:flutter/material.dart';
import 'package:saletick/app_constants/app_colors.dart';
import 'package:saletick/app_constants/app_dimensions.dart';
import 'package:saletick/app_constants/custom_text_styles.dart';


class TextnDividerHeader extends StatelessWidget {
  final String text;
  final bool wantDivider;

  const TextnDividerHeader({Key? key, required this.text, this.wantDivider = true}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: Dimensions.size30),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: Dimensions.size16),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              text,
              textAlign: TextAlign.left,
              style: headline3.copyWith(color: AppColors.mainTextColor3),
            ),
          ),
        ),
        SizedBox(height: Dimensions.size20),
        if(wantDivider)
          Padding(
            padding: EdgeInsets.symmetric(horizontal: Dimensions.size20),
            child: Divider(height: Dimensions.size9, thickness: 2),
          ),
      ],
    );
  }
}