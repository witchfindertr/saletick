import 'package:flutter/material.dart';
import 'package:saletick/app_constants/app_colors.dart';
import 'package:saletick/app_constants/app_dimensions.dart';
import 'package:saletick/app_constants/custom_text_styles.dart';



class ProductItemWidget extends StatelessWidget {
  final String productName;
  final String date;
  final String time;
  final String price;
  final String quantity;

  const ProductItemWidget({Key? key, required this.productName, required this.date, required this.time, required this.price, required this.quantity}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: Dimensions.size10),
      child: Material(
        color: AppColors.tarnorCardColor,
        borderRadius: BorderRadius.circular(Dimensions.size9),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: Dimensions.size10, vertical: Dimensions.size15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Name of product
                  Text(
                    productName, // "POLYCARD WIRE",
                    style: headline4.copyWith(color: AppColors.tarnorTextColor),
                  ),
                  SizedBox(height: Dimensions.size5),
                  // Time and Date
                  Text(
                    "$time| $date",
                    style: headline5.copyWith(color: AppColors.tarnorFadeTextColor),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  // price
                  Text(
                    price,
                    style: headline3.copyWith(color: AppColors.tarnorGreen),
                  ),
                  SizedBox(height: Dimensions.size5),
                  //quantity
                  Text(
                    quantity,
                    style: headline5.copyWith(color: AppColors.tarnorFadeTextColor),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}