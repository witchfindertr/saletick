import 'package:flutter/material.dart';
import 'package:saletick/custom_widgets/footer/saletick_bottom_nav_bar.dart';
import 'package:saletick/custom_widgets/footer/saletick_floatinActButton.dart';
import 'package:saletick/custom_widgets/cards/trasaction_card.dart';
import 'package:saletick/app_constants/app_dimensions.dart';
import 'package:saletick/app_constants/dimensions2.dart';
import 'package:saletick/custom_widgets/header/header_two_widget.dart';
import 'package:saletick/utilities/utils.dart';

class AdminSalesSummaryScreen extends StatefulWidget {

  const AdminSalesSummaryScreen({Key? key});

  static const String routeName = '/admin-overview';

  @override
  State<AdminSalesSummaryScreen> createState() => _AdminSalesSummaryScreenState();
}

class _AdminSalesSummaryScreenState extends State<AdminSalesSummaryScreen> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [             
            // Header HERE
            SaletickHeaderTwo(),
            SizedBox(height: Dimensions.size25),
            Container(
              margin: EdgeInsets.fromLTRB(14*Dimensions2.fem, 0*Dimensions2.fem, 20*Dimensions2.fem, 6*Dimensions2.fem),
              width: double.infinity,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Overview Text
                  Container(
                    margin: EdgeInsets.fromLTRB(0*Dimensions2.fem, 3*Dimensions2.fem, 131*Dimensions2.fem, 0*Dimensions2.fem),
                    child: Text(
                      'Overview',
                      style: SafeGoogleFont (
                        'Poppins',
                        fontSize: 25*Dimensions2.ffem,
                        fontWeight: FontWeight.w700,
                        height: 1.5*Dimensions2.ffem/Dimensions2.fem,
                        color: Color(0xff8f7aff),
                      ),
                    ),
                  ),
                  // See all Transactions container
                  // Container(
                  //   width: 125*Dimensions2.fem,
                  //   height: 29*Dimensions2.fem,
                  //   decoration: BoxDecoration (
                  //     color: Color(0x388f7aff),
                  //     borderRadius: BorderRadius.circular(5*Dimensions2.fem),
                  //   ),
                  //   child: Center(
                  //     child: Text(
                  //       'See All Transactions',
                  //       style: SafeGoogleFont (
                  //         'Poppins',
                  //         fontSize: 8*Dimensions2.ffem,
                  //         fontWeight: FontWeight.w700,
                  //         height: 1.5*Dimensions2.ffem/Dimensions2.fem,
                  //         color: Color(0xff440564),
                  //       ),
                  //     ),
                  //   ),
                  // ),
                ],
              ),
            ),
            SizedBox(height: Dimensions.size5),
            // Container housing 'sales' text and 'Sort By' text
            Container(
              margin: EdgeInsets.fromLTRB(24*Dimensions2.fem, 0*Dimensions2.fem, 41*Dimensions2.fem, 1*Dimensions2.fem),
              width: double.infinity,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Sales
                  Container(
                    margin: EdgeInsets.fromLTRB(0*Dimensions2.fem, 0*Dimensions2.fem, 236*Dimensions2.fem, 0*Dimensions2.fem),
                    child: Text(
                      'Sales',
                      style: SafeGoogleFont (
                        'Poppins',
                        fontSize: 15*Dimensions2.ffem,
                        fontWeight: FontWeight.w700,
                        height: 1.5*Dimensions2.ffem/Dimensions2.fem,
                        color: Color(0xff979797),
                      ),
                    ),
                  ),
                  // Sort By
                  Container(
                    margin: EdgeInsets.fromLTRB(0*Dimensions2.fem, 0*Dimensions2.fem, 10*Dimensions2.fem, 2*Dimensions2.fem),
                    child: Text(
                      'Sort By',
                      style: SafeGoogleFont (
                        'Poppins',
                        fontSize: 10*Dimensions2.ffem,
                        fontWeight: FontWeight.w500,
                        height: 1.5*Dimensions2.ffem/Dimensions2.fem,
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // The Divider
            Container(
              margin: EdgeInsets.fromLTRB(23*Dimensions2.fem, 0*Dimensions2.fem, 25*Dimensions2.fem, 0*Dimensions2.fem),
              width: double.infinity,
              height: 1*Dimensions2.fem,
              decoration: const BoxDecoration (
                color: Color(0xffdddddd),
              ),
            ),
            SizedBox(height: Dimensions.size20),
             // LIST OF ALL SALES
            Container(
              padding: EdgeInsets.symmetric(horizontal: Dimensions.size10),
              child: MediaQuery.removePadding(
                context: context,
                removeTop: true,
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: 6, //specificStaff.mySales.length,     
                  physics: const NeverScrollableScrollPhysics(),   
                  itemBuilder: (BuildContext context, int index){
                    // var sale = specificStaff.mySales[index];                   
                    return  InkWell(
                      onTap: (() {
                        // Get.to(SoldProductInfoScreen(soldProduct: sale));   
                        // Here insert receipt screen                  
                      }),
                      child: const TransactionCard(
                        amount: '50,0596',
                        date: '21/2/2023',
                        time: '12:26:09',
                        unitsSold: '4',
                        nameOfProduct: 'FineProduct',
                        nameOfSalesRep: 'Ugwuoke Chinaza',
                      ),
                    );
                  }
                ),
              ),
            ),
            // Extra space at the bottom of screen
            SizedBox(height: Dimensions.size50),
          ],
        ),
      ),
      floatingActionButton: const SaletickFloatingActionButton(isAddToInventory: true, isAddStaff: true, isExpenses: true),
      bottomNavigationBar: const SaletickBottomNavBar(isOverview: true),
    );
  }
}