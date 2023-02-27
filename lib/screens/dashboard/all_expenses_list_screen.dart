import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:saletick/controllers/auth_controller.dart';
import 'package:saletick/controllers/product_controller.dart';
import 'package:saletick/custom_widgets/header/header_one_widget.dart';
import 'package:saletick/custom_widgets/cards/trasaction_card.dart';
import 'package:saletick/app_constants/app_colors.dart';
import 'package:saletick/app_constants/app_dimensions.dart';
import 'package:saletick/app_constants/dimensions2.dart';


class AllExpensesListScreen extends GetView<ProductController> {

  // auth controller instance
  var authController = Get.find<AuthController>();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: AppColors.saletickScaffoldColor,
      body: SingleChildScrollView(
        child: Obx(() {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
               // Header HERE
               const SaletickHeaderOne(headerOneTitleText: 'All Expenses'),
                Container(
                  padding: EdgeInsets.fromLTRB(20*Dimensions2.fem, 44.61*Dimensions2.fem, 15*Dimensions2.fem, 8*Dimensions2.fem),
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(7*Dimensions2.fem, 0*Dimensions2.fem, 0*Dimensions2.fem, 6*Dimensions2.fem),
                        width: double.infinity,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            // The bigger rectanle just above Income container
                            Container(
                              margin: EdgeInsets.fromLTRB(0*Dimensions2.fem, 0*Dimensions2.fem, 9*Dimensions2.fem, 0*Dimensions2.fem),
                              width: 278*Dimensions2.fem,
                              height: 29*Dimensions2.fem,
                              decoration: BoxDecoration (
                                borderRadius: BorderRadius.circular(5*Dimensions2.fem),
                                color: Color(0x388f7aff),
                              ),
                            ),
                            // The smaller rectangle above Expenses
                            Container(
                              width: 61*Dimensions2.fem,
                              height: 29*Dimensions2.fem,
                              decoration: BoxDecoration (
                                borderRadius: BorderRadius.circular(5*Dimensions2.fem),
                                color: Color(0x388f7aff),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ), 
                SizedBox(height: Dimensions.size20),
                // The Transaction Card and List
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: Dimensions.size10),
                  child: MediaQuery.removePadding(
                    context: context,
                    removeTop: true,
                    child: ListView.builder(
                      itemCount: controller.allExpensesDataList.length,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),                      
                      itemBuilder: ((context, index) {
                        // reverse list so that newest txn stays atop
                        var newAllExpensesList = controller.allExpensesDataList.reversed.toList();
                        var expenses = newAllExpensesList[index];
                        return  InkWell(
                          onTap: (){},
                          child:  TransactionCard(
                            amount: authController.convertStringAmountToActualMoney(expenses.totalAmount), //'50,0596',
                            date: expenses.date, // '21/2/2023',
                            time: expenses.time, // '12:26:09',
                            unitsSold: 'X', // not available for expenses 
                            nameOfProduct: expenses.productName.isEmpty? expenses.expensesName : "", // 'FineProduct',
                            nameOfSalesRep: expenses.whoSoldIt , // 'emeka@gmail.com',
                            isExpense: expenses.isExpenses,
                          ),
                        );
                      })
                    ),
                  ),
                ),
                SizedBox(height: Dimensions.size50),  // space at screen end                             
              ],
            );
          }
        ),
      ),
    );
  }
}