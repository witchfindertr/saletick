import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:saletick/controllers/auth_controller.dart';
import 'package:saletick/custom_widgets/header/header_one_widget.dart';
import 'package:saletick/custom_widgets/cards/trasaction_card.dart';
import 'package:saletick/app_constants/app_dimensions.dart';
import 'package:saletick/models/user_model.dart';

class SeeMyExpensesScreen extends GetView<AuthController> {
  final UserModel user;
  
  const SeeMyExpensesScreen({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:  SingleChildScrollView(
        child: Column(
          children: [
            const SaletickHeaderOne(headerOneTitleText: "My Expenses"),
              // LIST OF ALL SALES
            Container(
              padding: EdgeInsets.symmetric(horizontal: Dimensions.size10, vertical: Dimensions.size20),
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: user.myExpenses.length,     
                physics: const NeverScrollableScrollPhysics(), 
                itemBuilder: (BuildContext context, int index){
                  // reverse the list
                  var myExpensesSort = user.myExpenses.reversed.toList();
                  // Getting each expenses by indx
                  var myExpenses = myExpensesSort[index];                   
                  return  InkWell(
                    onTap: (){},
                    child: TransactionCard(
                      amount: controller.convertStringAmountToActualMoney(myExpenses.totalAmount), //'50,0596',
                      date: myExpenses.date, // '21/2/2023',
                      time: myExpenses.time, // '12:26:09',
                      unitsSold: 'X', // not available for expenses 
                      nameOfProduct: myExpenses.productName.isEmpty? myExpenses.expensesName : "", // 'FineProduct',
                      nameOfSalesRep: myExpenses.whoSoldIt , // 'emeka@gmail.com',
                      isExpense: myExpenses.isExpenses,
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