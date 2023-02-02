import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:saletick/app_constants/app_dimensions.dart';
import 'package:saletick/custom_widgets/header/header_widget.dart';
import 'package:saletick/custom_widgets/lists/product_item_widget.dart';
import 'package:saletick/custom_widgets/texts/text_n_divider_header.dart';
import 'package:saletick/models/user_model.dart';
import 'package:saletick/screens/dashboard/sold_product_info.dart';


class SpecificStaffSalesScreen extends StatelessWidget {
  final UserModel specificStaff;
  
  const SpecificStaffSalesScreen({Key? key, required this.specificStaff}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const HeaderWidget(),
            TextnDividerHeader(text: "${specificStaff.firstName}'s Sales"),
             // LIST OF ALL SALES
            Container(
              child: ListView.separated(
                shrinkWrap: true,
                itemCount: specificStaff.mySales.length,     
                physics: const NeverScrollableScrollPhysics(),
                separatorBuilder: (context, index) =>  SizedBox(height: Dimensions.size9),   
                itemBuilder: (BuildContext context, int index){
                  var sale = specificStaff.mySales[index];                   
                  return  InkWell(
                    onTap: (() {
                      Get.to(SoldProductInfoScreen(soldProduct: sale));                     
                    }),
                    child: ProductItemWidget(
                      productName: sale .productName, // name
                      time: '${DateFormat.jm().format(sale .dateCreated)} ',
                      date: sale .date, // date
                      price: sale .totalAmount, // totalAmount
                      quantity: sale .unitSold.toString(), // quantity sold
                    ),
                  );
                }
              ),
            ),
            SizedBox(height: Dimensions.size30),
          ],
        ),
      ),
    );
  }
}