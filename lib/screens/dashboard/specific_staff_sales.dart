import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:saletick/controllers/auth_controller.dart';
import 'package:saletick/controllers/product_controller.dart';
import 'package:saletick/custom_widgets/header/header_one_widget.dart';
import 'package:saletick/custom_widgets/cards/trasaction_card.dart';
import 'package:saletick/app_constants/app_dimensions.dart';
import 'package:saletick/custom_widgets/texts/text_n_divider_header.dart';
import 'package:saletick/models/user_model.dart';
import 'package:saletick/screens/dashboard/sold_product_receipt_screen.dart';


class SpecificStaffSalesScreen extends StatelessWidget {
  final UserModel specificStaff;
  
  SpecificStaffSalesScreen({Key? key, required this.specificStaff}) : super(key: key);

  // productController instance
  var productController = Get.find<ProductController>();

  // auth controller
  var authController = Get.find<AuthController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SaletickHeaderOne(headerOneTitleText: "Staff Sales"),
            TextnDividerHeader(text: "${specificStaff.firstName}'s Sales", wantDivider: false),
             // LIST OF ALL SALES
            Container(
              padding: EdgeInsets.symmetric(horizontal: Dimensions.size10),
              child: MediaQuery.removePadding(
                context: context,
                removeTop: true,
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: specificStaff.mySales.length,     
                  physics: const NeverScrollableScrollPhysics(),   
                  itemBuilder: (BuildContext context, int index){
                    // Getting staff sales
                    var sale = specificStaff.mySales[index];  
                    // serializing raw product data into our product model
                    var product = productController.processSpecificProductsSold(sale);                 
                    return  InkWell(
                      onTap: (() {                        
                        // Here we go to receipt screen  
                        Get.to(SoldProductReceiptScreen(soldProduct: product,  txnSale: sale));                
                      }),
                      child: TransactionCard(
                        amount: authController.convertStringAmountToActualMoney(sale.totalAmount), //'50,0596',
                        date: sale.date, // '21/2/2023',
                        time: sale.time, // '12:26:09',
                        unitsSold: product.unitSold.toString(), // '4',
                        nameOfProduct: product.name, // 'FineProduct',
                        nameOfSalesRep: "${specificStaff.surname} ${specificStaff.firstName}" , //'Ugwuoke Chinaza',
                      ),
                    );
                  }
                ),
              ),
            ),
            SizedBox(height: Dimensions.size60),
          ],
        ),
      ),
    );
  }
}


