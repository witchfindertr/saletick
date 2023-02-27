import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:saletick/app_constants/app_colors.dart';
import 'package:saletick/app_constants/custom_text_styles.dart';
import 'package:saletick/controllers/auth_controller.dart';
import 'package:saletick/controllers/chart_controller.dart';
import 'package:saletick/controllers/product_controller.dart';
import 'package:saletick/custom_widgets/footer/saletick_bottom_nav_bar.dart';
import 'package:saletick/custom_widgets/footer/saletick_floatinActButton.dart';
import 'package:saletick/custom_widgets/cards/trasaction_card.dart';
import 'package:saletick/app_constants/app_dimensions.dart';
import 'package:saletick/app_constants/dimensions2.dart';
import 'package:saletick/custom_widgets/header/header_two_widget.dart';
import 'package:saletick/models/transaction_model.dart';
import 'package:saletick/screens/dashboard/transaction_history_list_screen.dart';
import 'package:saletick/utilities/utils.dart';

class AdminSalesSummaryScreen extends StatefulWidget {

  const AdminSalesSummaryScreen({Key? key});

  static const String routeName = '/admin-overview';

  @override
  State<AdminSalesSummaryScreen> createState() => _AdminSalesSummaryScreenState();
}

class _AdminSalesSummaryScreenState extends State<AdminSalesSummaryScreen> {

  // instance of auth controller
  var authController = Get.find<AuthController>();

  // instance of product controller
  ProductController productController = Get.find<ProductController>();

  // instance of chart controller
  ChartController chartController = Get.find<ChartController>();

  // Dropdown list
  var sortDropDownList = ['Today', 'Last Week', 'Last Month'];
  String currentSort = 'Today';

  // The dynamic salesList which changes based on sort
  final sortedSalesList = <TransactionModel>[].obs;


  @override
  void initState() {
    // Getting today's sales
    chartController.getPrevDay(0);
    sortedSalesList.value = chartController.dailySalesList;

    if(authController.currentUserData == null){
      authController.getCurrentUserDetails();
    }
  
    super.initState();
  }



  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [             
            // Header HERE
            const SaletickHeaderTwo(),
            SizedBox(height: Dimensions.size25),
            Container(
              margin: EdgeInsets.fromLTRB(14*Dimensions2.fem, 0*Dimensions2.fem, 20*Dimensions2.fem, 6*Dimensions2.fem),
              width: double.infinity,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Overview Text
                  Container(
                    margin: EdgeInsets.fromLTRB(0*Dimensions2.fem, 0*Dimensions2.fem, 100*Dimensions2.fem, 10*Dimensions2.fem),
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
                  InkWell(
                    onTap: (){
                      Get.to(
                        TransactionHistoryListScreen(),
                        transition: Transition.cupertino,
                        duration: const Duration(seconds: 1),
                      );
                    },
                    child: Container(
                      width: 125*Dimensions2.fem,
                      height: 29*Dimensions2.fem,
                      decoration: BoxDecoration (
                        color: Color(0x388f7aff),
                        borderRadius: BorderRadius.circular(5*Dimensions2.fem),
                      ),
                      child: Center(
                        child: Text(
                          'See All Transactions',
                          style: SafeGoogleFont (
                            'Poppins',
                            fontSize: 8*Dimensions2.ffem,
                            fontWeight: FontWeight.w700,
                            height: 1.5*Dimensions2.ffem/Dimensions2.fem,
                            color: Color(0xff440564),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: Dimensions.size5),
            // Container housing 'sales' text and 'Sort By' text
            Container(
              margin: EdgeInsets.fromLTRB(24*Dimensions2.fem, 0*Dimensions2.fem, 30*Dimensions2.fem, 1*Dimensions2.fem),
              width: double.infinity,
              child: Row(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // Sales
                      Text(
                        'Sales',
                        style: SafeGoogleFont (
                          'Poppins',
                          fontSize: 15*Dimensions2.ffem,
                          fontWeight: FontWeight.w700,
                          height: 1.5*Dimensions2.ffem/Dimensions2.fem,
                          color: Color(0xff979797),
                        ),
                      ),
                      SizedBox(width: Dimensions.size100*1.2),
                      // Sort By Text
                      Text(
                        'Sort By',
                        style: SafeGoogleFont (
                          'Poppins',
                          fontSize: 10*Dimensions2.ffem,
                          fontWeight: FontWeight.w500,
                          height: 1.5*Dimensions2.ffem/Dimensions2.fem,
                          color: Color(0xff000000),
                        ),
                      ),
                      SizedBox(width: Dimensions.size9),
                    ],
                  ),
                  //DROP-DOWN HERE : DropDownMenu for sorting the list
                  Expanded(
                    child: DecoratedBox(                          
                      decoration: BoxDecoration( 
                        color:Colors.white, //background color of dropdown button
                        border: Border.all(color: Colors.grey.withOpacity(0.6), width:2), //border of dropdown button
                        borderRadius: BorderRadius.circular(Dimensions.size30), //border raiuds of dropdown button
                        boxShadow: const <BoxShadow>[ //apply shadow on Dropdown button
                          BoxShadow(
                            color: AppColors.tarnorCardColor, //shadow for button
                            blurRadius: 2,
                          ) //blur radius of shadow
                        ]
                      ),                        
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: Dimensions.size10),
                        height: Dimensions.size30,
                        child:DropdownButton(
                          value: currentSort,
                          items: sortDropDownList.map((item) {
                            return DropdownMenuItem(
                              child: Text(item),
                              value: item,
                            );
                          }).toList(),
                          onChanged: (String? value){ //get value when changed
                              setState(() {
                                currentSort = value!;
                                // Logic to filter sales based on the choice of user on the dropDown list
                                // it filters today's, last week's, and last month's sales
                                if(value == sortDropDownList[0]){
                                  chartController.getPrevDay(0);
                                  sortedSalesList.value = chartController.dailySalesList;
                                  print(sortedSalesList);
                                }else if(value == sortDropDownList[1]){  
                                  chartController.getPrevWeek(1);
                                  sortedSalesList.value = chartController.weeklySalesList;
                                  print(sortedSalesList);
                                }else if(value == sortDropDownList[2]){
                                  chartController.getPrevMonth(0);
                                  sortedSalesList.value = chartController.monthlySalesList;
                                  print(sortedSalesList);
                                }                                    
                              });
                          },
                          icon: Padding( 
                            padding: EdgeInsets.only(left: Dimensions.size5),
                            child:Icon(Icons.arrow_circle_down_sharp)
                          ), 
                          iconEnabledColor: AppColors.tarnorFadeTextColor, //Icon color
                          style: headline5.copyWith(color: AppColors.tarnorFadeTextColor),                    
                          // dropdownColor: C, //dropdown background color
                          underline: Container(), //remove underline
                          isExpanded: true, //make true to make width 100%
                        )
                      )
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
                color: Color.fromARGB(255, 77, 58, 58),
              ),
            ),
            SizedBox(height: Dimensions.size20),
            // LIST OF ALL SALES
            if(sortedSalesList.isNotEmpty)
              // LIST OF ALL SALES
              Container(
                padding: EdgeInsets.symmetric(horizontal: Dimensions.size9),
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: sortedSalesList.length,     
                  physics: const NeverScrollableScrollPhysics(), 
                  itemBuilder: (BuildContext context, int index){
                    // Getting each sale for a particular index
                    var sale = sortedSalesList[index]; 
                    // serializing raw product data into our product model
                    var product = productController.processSpecificProductsSold(sale);  

                    return InkWell(
                      onTap: (() {
                        // View receipt on tap
                        // Get.to(SoldProductReceiptScreen(soldProduct: soldProduct, txnSale: txnSale));
                      }),
                      child: TransactionCard(
                        amount: authController.convertStringAmountToActualMoney(sale.totalAmount), //'50,0596',
                        date: sale.date, // '21/2/2023',
                        time: sale.time, // '12:26:09',
                        unitsSold: product.unitSold.toString(), // '4',
                        nameOfProduct: product.name, // 'FineProduct',
                        nameOfSalesRep: sale.whoSoldIt , // 'emeka@gmail.com',
                      ),
                    );
                  }
                ),
              ),
            if(sortedSalesList.isEmpty)
              Container(
                padding: EdgeInsets.symmetric(vertical: Dimensions.size20),
                child: Card(
                  child: Padding(
                    padding: EdgeInsets.all(Dimensions.size20),
                    child: Text(
                      'No Sales Yet',
                      style: headline3.copyWith(color: AppColors.tarnorFadeTextColor),
                    ),
                  ),
                ),
              ),
            SizedBox(height: Dimensions.size100),           
          ],           
        ),
      ),
      floatingActionButton: const SaletickFloatingActionButton(isAddToInventory: true, isAddStaff: true, isExpenses: true),
      bottomNavigationBar: const SaletickBottomNavBar(isOverview: true),
    );
  }
}