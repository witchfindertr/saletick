import 'package:flutter/material.dart';
import 'package:saletick/custom_widgets/header/header_one_widget.dart';
import 'package:saletick/custom_widgets/cards/trasaction_card.dart';
import 'package:saletick/app_constants/app_dimensions.dart';

class SeeMyExpensesScreen extends StatelessWidget {
  const SeeMyExpensesScreen({super.key});

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
                itemCount: 11, //user.mySales.length,     
                physics: const NeverScrollableScrollPhysics(), 
                itemBuilder: (BuildContext context, int index){
                  //var sale = user.mySales[index];                   
                  return  InkWell(
                    onTap: (() {                     
                    }),
                    child: const TransactionCard(
                      amount: '50,0596',
                      date: '21/2/2023',
                      time: '12:26:09',
                      unitsSold: '4',
                      nameOfProduct: 'FineProduct',
                      nameOfSalesRep: 'Ugwuoke Chinaza',
                      isExpense: true,
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