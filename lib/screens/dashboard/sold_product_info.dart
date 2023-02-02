import 'package:flutter/material.dart';
import 'package:saletick/app_constants/app_colors.dart';
import 'package:saletick/app_constants/app_dimensions.dart';
import 'package:saletick/app_constants/custom_text_styles.dart';
import 'package:saletick/custom_widgets/buttons/saletick_back_button.dart';
import 'package:saletick/custom_widgets/header/header_widget.dart';
import 'package:saletick/custom_widgets/texts/text_n_divider_header.dart';
import 'package:saletick/custom_widgets/texts/text_title_value_widget.dart';
import 'package:saletick/models/sales_model.dart';


class SoldProductInfoScreen extends StatelessWidget {

  final SalesModel soldProduct;

  const SoldProductInfoScreen({Key? key, required this.soldProduct}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const HeaderWidget(),
            const TextnDividerHeader(text: 'Sold Product Info'),
            // Staff Name
            Padding(
              padding: EdgeInsets.symmetric(horizontal: Dimensions.size20, vertical: Dimensions.size30),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      soldProduct.productName, // product name
                      style: headline2.copyWith(fontSize: Dimensions.size30, color: AppColors.tarnorFadeTextColor),
                    ),
                  ),
                  SizedBox(height: Dimensions.size30),
                  // Staff Other Info
                  TitleAndValueWidget(title: 'Units Sold', value: soldProduct.unitSold.toString()), // units sold
                  SizedBox(height: Dimensions.size20),
                  TitleAndValueWidget(title: 'When Product Was Sold', value: "${soldProduct.date} | ${soldProduct.time}"), // date&time sold
                  SizedBox(height: Dimensions.size20),
                  TitleAndValueWidget(title: 'Who It Was Sold To', value: soldProduct.soldTo),  // soldTo                 
                  SizedBox(height: Dimensions.size30),
                  const SaletickBackButton(),
                  SizedBox(height: Dimensions.size30), // space at screen end
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}