import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saletick/app_constants/app_colors.dart';
import 'package:saletick/app_constants/app_dimensions.dart';
import 'package:saletick/app_constants/custom_text_styles.dart';


class InventoryDetailTextWidget extends StatelessWidget {
  final String titleText;
  final String? valueText;
  final bool isStar;
  final Widget? starWidget;
  
  const InventoryDetailTextWidget({Key? key, required this.titleText, this.valueText, this.isStar = false, this.starWidget}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // title
        Text(
          titleText,
          style: headline5,
        ),
        SizedBox(height: Dimensions.size3),
        if(!isStar)
          // value
          Text(
            valueText!,
            textAlign: TextAlign.center,
            style: GoogleFonts.montserrat(
              fontWeight: FontWeight.w500, 
              color: AppColors.mainTextColor3.withOpacity(0.7),
              fontSize: Dimensions.size15,
            ),
          ),
        if(isStar)
          Column(
            children: [
              SizedBox(height: Dimensions.size5),
              Row(
                children: List.generate(4, (index) {
                  return Row(
                    children: [
                      Container(
                        height: Dimensions.size10,
                        width: Dimensions.size10,
                        color: index.isEven? (index==2? Colors.yellow : Colors.green) : (index==1? Colors.blue : Colors.red),
                      ),
                      SizedBox(width: Dimensions.size3),
                    ],
                  );
                }
              ), // stars
        ),
            ],
          ), 
      ],
    );
  }
}