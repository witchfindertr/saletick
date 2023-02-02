import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saletick/app_constants/app_colors.dart';
import 'package:saletick/app_constants/app_dimensions.dart';
import 'package:saletick/app_constants/custom_text_styles.dart';



class InventoryItemCard extends StatelessWidget {
  final String itemName;
  final String quantity;
  
  const InventoryItemCard({Key? key, required this.itemName, required this.quantity}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: Dimensions.size10, vertical: Dimensions.size10),
      // width: Dimensions.screenWidth*0.3,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(Dimensions.size9),
        color: AppColors.tarnorCardColor,
      ),
      child: Column(
        children: [
          Center(
            child: Text(
              itemName,
              style: GoogleFonts.montserrat(
                color: AppColors.mainTextColor2,
                fontWeight: FontWeight.bold,
                fontSize: Dimensions.size20,
              ),
            ),
          ),
          SizedBox(height: Dimensions.size10),
          // No. of items
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                '$quantity items',                    
                style: headline5.copyWith(color: AppColors.tarnorTextColor, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),
              ),
            ],
          ),
        ],
      ),
    );
  }
}