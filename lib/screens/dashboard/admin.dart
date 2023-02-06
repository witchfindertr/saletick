
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:saletick/app_constants/app_colors.dart';
import 'package:saletick/app_constants/app_dimensions.dart';
import 'package:saletick/app_constants/custom_text_styles.dart';
import 'package:saletick/controllers/auth_controller.dart';
import 'package:saletick/controllers/chart_controller.dart';
import 'package:saletick/controllers/product_controller.dart';
import 'package:saletick/custom_widgets/header/header_widget.dart';
import 'package:saletick/custom_widgets/lists/chart_filter_card.dart';
import 'package:saletick/custom_widgets/lists/product_item_widget.dart';
import 'package:saletick/models/chart_model.dart';
import 'package:saletick/models/sales_model.dart';
import 'package:saletick/screens/dashboard/admin_total_income.dart';
import 'package:saletick/screens/dashboard/sold_product_info.dart';
import 'package:syncfusion_flutter_charts/charts.dart';


class AdminScreen extends StatefulWidget {
  const AdminScreen({Key? key}) : super(key: key);

  static const String routeName = '/admin';
    

  @override
  State<AdminScreen> createState() => _AdminScreenState();
}

class _AdminScreenState extends State<AdminScreen> {

  // instance of product controller
  ProductController _productController = Get.find<ProductController>();

  // instance of auth controller
  var authController = Get.find<AuthController>();

  // instance of chartController
  late ChartController chartController;

  // Dropdown list
  var sortDropDownList = ['Today', 'Last Week', 'Last Month'];
  String currentSort = 'Today';

  // The dynamic salesList which changes based on sort
  final sortedSalesList = <SalesModel>[].obs;

  @override
  void initState() {
    // injecting chartController
    chartController = Get.put(ChartController());

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
      // checking if data is being fetched, if null, show circularProgressIndicator
      // if not null, check if user has made any sell, 
      body: Obx(() {
          return authController.isLoading.value? const Center(child: CircularProgressIndicator()) : SingleChildScrollView(
            child: !(authController.currentUserData.isAdmin)? Center(
              child: Container( 
                margin: EdgeInsets.only(top: Dimensions.screenHeight*0.5),           
                child: Text(
                  'Only the Admin can see this screen',
                  style: headline5,
                ),
              ),
            ) : Column(
              children: [
                const HeaderWidget(isSecondHeader: true),
                SizedBox(height: Dimensions.size25),
                Text(
                  "Sales Summary",
                  style: headline4.copyWith(color: AppColors.tarnorTextColor),
                ),
                SizedBox(height: Dimensions.size20),
                // Charts area
                Material(
                  color: AppColors.mainTextColor3.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(Dimensions.size15),            
                  child: SizedBox(
                    width: Dimensions.screenWidth*0.95,
                    height: Dimensions.size100*3,
                    child: Column(
                      children: [
                        // List of Chart filters : daily, weekly, monthly & yearly
                        Container(
                          margin: EdgeInsets.symmetric(vertical: Dimensions.size10),
                          padding: EdgeInsets.symmetric(horizontal: Dimensions.size10),
                          height: Dimensions.size30,
                          child: ListView.separated(
                            itemCount: ChartFilterListCard.chartFilter.length,
                            scrollDirection: Axis.horizontal,
                            separatorBuilder: ((context, index) => SizedBox(width: Dimensions.size5)),
                            itemBuilder: ((context, index) {
                              var filterText = ChartFilterListCard.chartFilter[index]['filter'];
                              var list = ChartFilterListCard.chartFilter[index];
                              return ChartFilterListCard(
                                onTap: (){
                                  setState(() {
                                    // deselecting previoulsy selected filter by setting their booleans to false: 
                                    // Using for loop
                                    for(var a in ChartFilterListCard.chartFilter){
                                     if(a['selected'] == true){
                                      a['selected'] = false;
                                     } 
                                    }
                                    // Setting the current index to selected True onTap
                                    list['selected'] = !list['selected'];                                
                                  });
                                }, 
                                filterText: filterText, 
                                isSelected: list['selected'],
                              );
                            }), 
                          ),
                        ),
                        // The Bar Chart from SyncFusion 
                        // DAILY
                        if(ChartFilterListCard.chartFilter[0]['selected'])
                          Expanded(
                            child: SfCartesianChart(
                              primaryXAxis: CategoryAxis(),
                              series: [
                                StackedColumnSeries(
                                  borderRadius: BorderRadius.circular(Dimensions.size3),
                                  color: AppColors.mainTextColor3.withOpacity(0.8),
                                  dataSource: chartController.dailyChart, 
                                  xValueMapper: (DailyChartModel d, _) => d.day, 
                                  yValueMapper: (DailyChartModel d, _) => d.value,
                                ),
                              ],
                            ),
                          ),
                        // WEEKLY
                        if(ChartFilterListCard.chartFilter[1]['selected'])
                          Expanded(
                            child: SfCartesianChart(
                              primaryXAxis: CategoryAxis(),
                              series: [
                                StackedColumnSeries(
                                  borderRadius: BorderRadius.circular(Dimensions.size3),
                                  color: AppColors.mainTextColor3.withOpacity(0.8),
                                  dataSource: chartController.weeklyChart,
                                  xValueMapper: (WeeklyChartModel w, _) => w.week, 
                                  yValueMapper: (WeeklyChartModel w, _) => w.value,
                                ),
                              ],
                            ),
                          ),
                        // MONTHLY
                        if(ChartFilterListCard.chartFilter[2]['selected'])
                          Expanded(
                            child: SfCartesianChart(
                              primaryXAxis: CategoryAxis(),
                              series: [
                                StackedColumnSeries(
                                  borderRadius: BorderRadius.circular(Dimensions.size3),
                                  color: AppColors.mainTextColor3.withOpacity(0.8),
                                  dataSource: chartController.monthlyChart,
                                  xValueMapper: (MonthlyChartModel m, _) => m.month, 
                                  yValueMapper: (MonthlyChartModel m, _) => m.value,
                                ),
                              ],
                            ),
                          ),
                        // YEARLY
                        if(ChartFilterListCard.chartFilter[3]['selected'])
                          Expanded(
                            child: SfCartesianChart(
                              primaryXAxis: CategoryAxis(),
                              series: [
                                StackedColumnSeries(
                                  borderRadius: BorderRadius.circular(Dimensions.size3),
                                  color: AppColors.mainTextColor3.withOpacity(0.8),
                                  dataSource: chartController.yearlyChart,
                                  xValueMapper: (YearlyChartModel y, _) => y.year, 
                                  yValueMapper: (YearlyChartModel y, _) => y.value,
                                ),
                              ],
                            ),
                          ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: Dimensions.size40),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: Dimensions.size15),
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'SALES',//'SALES TODAY',
                        style: headline5.copyWith(fontWeight: FontWeight.bold, color: AppColors.tarnorFadeTextColor, letterSpacing: 1),
                      ),
                      SizedBox(width: Dimensions.size100),
                      // Row for Sort
                      Row(
                        children: [
                          Text(
                            'Sort',
                            style: headline5.copyWith(fontWeight: FontWeight.bold, color: AppColors.tarnorFadeTextColor),
                          ),
                          SizedBox(width: Dimensions.size3),
                          Icon(
                            Icons.sync_alt_outlined,
                            size: Dimensions.size18,
                            color: AppColors.tarnorFadeTextColor,
                          ),
                        ],
                      ),
                      SizedBox(width: Dimensions.size10),
                      // DropDownMenu for sorting the list
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
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: Dimensions.size10),
                  child: Divider(height: Dimensions.size9, thickness: 2.5),
                ),
                if(sortedSalesList.isNotEmpty)
                  // LIST OF ALL SALES
                  Container(
                    child: ListView.separated(
                      shrinkWrap: true,
                      itemCount: sortedSalesList.length,     
                      physics: const NeverScrollableScrollPhysics(),
                      separatorBuilder: (context, index) =>  SizedBox(height: Dimensions.size9),   
                      itemBuilder: (BuildContext context, int index){
                        
                        var productSold = sortedSalesList[index];

                        return InkWell(
                          onTap: (() {
                             Get.to(SoldProductInfoScreen(soldProduct: productSold));
                          }),
                          child: ProductItemWidget(
                            productName: productSold.productName, // name
                            time: '${productSold.time} ',
                            date: productSold.date,
                            price: '+${productSold.totalAmount}',
                            quantity: productSold.unitSold.toString(), // quantity sold
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
          );
        }
      ),
      floatingActionButton: !(authController.currentUserData.isAdmin)? null : FloatingActionButton.extended(
        elevation: 3,
        label: Text(
          'See Total Icome',
          style: headline5.copyWith(color: Colors.white),
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(Dimensions.size10)),
        onPressed: (){ 
          Get.to(AdminTotalIcomeScreen());
          // chartController.testChart();
        },
      ),
    );
  }
}