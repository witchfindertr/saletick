import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:saletick/app_constants/app_colors.dart';
import 'package:saletick/app_constants/app_dimensions.dart';
import 'package:saletick/app_constants/custom_text_styles.dart';
import 'package:saletick/controllers/chart_controller.dart';
import 'package:saletick/controllers/product_controller.dart';
import 'package:saletick/custom_widgets/header/header_widget.dart';
import 'package:saletick/custom_widgets/lists/chart_filter_card.dart';
import 'package:saletick/custom_widgets/lists/product_item_widget.dart';
import 'package:saletick/models/chart_model.dart';
import 'package:saletick/screens/dashboard/sold_product_info.dart';
import 'package:syncfusion_flutter_charts/charts.dart';


class AdminTotalIcomeScreen extends StatefulWidget {
  const AdminTotalIcomeScreen({Key? key}) : super(key: key);


  @override
  State<AdminTotalIcomeScreen> createState() => _AdminTotalIcomeScreenState();
}

class _AdminTotalIcomeScreenState extends State<AdminTotalIcomeScreen> {

  // instance of product controller
  ProductController _productController = Get.find<ProductController>();
  // instance of chart controller
  ChartController chartController = Get.find<ChartController>();



  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      body: Obx(() {
          return SingleChildScrollView(
            child: Column(
              children: [
                const HeaderWidget(),
                SizedBox(height: Dimensions.size25),
                Column(
                  children: [
                    Text(
                      "Total Income",
                      style: headline4.copyWith(color: AppColors.mainTextColor2),
                    ),
                    SizedBox(height: Dimensions.size5),
                    // Column for total income amount & the green Added Amount
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          chartController.allSalesTotalAmount(), // total income "11,345,070",
                          style: headline1.copyWith(color: AppColors.mainTextColor2, letterSpacing: 1),
                        ),
                        Text(
                          "+${chartController.todaysTotalAmount.value}", // total income today "+331,993",
                          style: headline3.copyWith(color: AppColors.tarnorGreen, letterSpacing: 1),                         
                        ),                    
                      ],
                    ),
                  ],
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
                                  dataSource: chartController.dailyChart,// chartController.getDailyChart(),  // daily chart
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
                                  dataSource: chartController.weeklyChart,//chartController.getWeeklyChart(), // weekly chart
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
                                  dataSource: chartController.monthlyChart, //chartController.getMonthlyChart(), // monthly chart
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
                                  dataSource: chartController.yearlyChart, //chartController.getYearlyChart(), // yearly chart 
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
                SizedBox(height: Dimensions.size30),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: Dimensions.size15),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Sales',
                      style: headline4.copyWith(fontWeight: FontWeight.bold, color: AppColors.tarnorFadeTextColor, letterSpacing: 1),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: Dimensions.size10),
                  child: Divider(height: Dimensions.size9, thickness: 2.5),
                ),
                Container(
                  child: ListView.separated(
                    shrinkWrap: true,
                    itemCount: _productController.allSalesDataList.length,     
                    physics: const NeverScrollableScrollPhysics(),
                    separatorBuilder: (context, index) =>  SizedBox(height: Dimensions.size9),   
                    itemBuilder: (BuildContext context, int index){
                      var productSold = _productController.allSalesDataList[index];

                      return   InkWell(
                        onTap: (){
                           Get.to(SoldProductInfoScreen(soldProduct: productSold));
                        },
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
                SizedBox(height: Dimensions.size30),
              ],
            ),
          );
        }
      ),
    );
  }
}