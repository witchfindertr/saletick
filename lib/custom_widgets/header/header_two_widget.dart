import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:saletick/app_constants/app_colors.dart';
import 'package:saletick/app_constants/app_dimensions.dart';
import 'package:saletick/app_constants/dimensions2.dart';
import 'package:saletick/controllers/auth_controller.dart';
import 'package:saletick/controllers/chart_controller.dart';
import 'package:saletick/custom_widgets/lists/chart_filter_card.dart';
import 'package:saletick/models/chart_model.dart';
import 'package:saletick/screens/transactions/see_my_expenses_screen.dart';
import 'package:saletick/screens/transactions/see_my_sales_screen.dart';
import 'package:saletick/utilities/utils.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class SaletickHeaderTwo extends StatefulWidget {

  const SaletickHeaderTwo({super.key});

  @override
  State<SaletickHeaderTwo> createState() => _SaletickHeaderTwoState();
}

class _SaletickHeaderTwoState extends State<SaletickHeaderTwo> {
  // instance of chart controller
  ChartController chartController = Get.find<ChartController>();

  // instance of auth controller
  AuthController authController = Get.find<AuthController>();

  @override
  Widget build(BuildContext context) {
    // The container image
    return Obx(() {
        return Container(
          margin: EdgeInsets.fromLTRB(0*Dimensions2.fem, 0*Dimensions2.fem, 0*Dimensions2.fem, 12.61*Dimensions2.fem),
          padding: EdgeInsets.fromLTRB(24*Dimensions2.fem, 27*Dimensions2.fem, 36*Dimensions2.fem, 38.39*Dimensions2.fem),
          width: double.infinity,
          height: 510*Dimensions2.fem,    ///396.39*Dimensions2.fem,
          decoration: const BoxDecoration (
            image: DecorationImage (
              fit: BoxFit.cover,
              image: AssetImage (
                'assets/images/rectangle-11-KoN.png',
              ),
            ),
          ),
          // The Child Column that houses every widget in this header image
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(0*Dimensions2.fem, 0*Dimensions2.fem, 0*Dimensions2.fem, 38*Dimensions2.fem),
                width: double.infinity,
                height: 57*Dimensions2.fem,
                // Row Containing Profile Pic, Name, and Hamburger Icon
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(0*Dimensions2.fem, 0*Dimensions2.fem, 20*Dimensions2.fem, 0*Dimensions2.fem),
                      width: 60*Dimensions2.fem,
                      height: double.infinity,
                      child: Stack(
                        children: [
                          // Profile Image
                          Positioned(
                            left: 0*Dimensions2.fem,
                            top: 0*Dimensions2.fem,
                            child: Align(
                              child: SizedBox(
                                width: 57*Dimensions2.fem,
                                height: 57*Dimensions2.fem,
                                // if imageUrl is empty use default avatar image for profile
                                child: (authController.usersProfileImage.value.isEmpty)? Container(
                                  decoration: BoxDecoration (
                                    borderRadius: BorderRadius.circular(28.5*Dimensions2.fem),
                                    image: const DecorationImage (
                                      fit: BoxFit.cover,
                                      image: AssetImage (
                                        'assets/images/avatar.png',
                                      ),
                                    ),
                                  ),
                                ) : Container(
                                  decoration: BoxDecoration (
                                    borderRadius: BorderRadius.circular(28.5*Dimensions2.fem),
                                    image: DecorationImage (
                                      fit: BoxFit.cover,
                                      image: NetworkImage (
                                        authController.usersProfileImage.value, //'assets/images/ellipse-4-bg-NaC.png',
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          // The greenish online indicator
                          Positioned(
                            left: 40*Dimensions2.fem,
                            top: 37*Dimensions2.fem,
                            child: Align(
                              child: SizedBox(
                                width: 15*Dimensions2.fem,
                                height: 15*Dimensions2.fem,
                                child: Container(
                                  decoration: BoxDecoration (
                                    borderRadius: BorderRadius.circular(10*Dimensions2.fem),
                                    border: Border.all(color: Color(0xffffffff)),
                                    color: Color(0xff00a660),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Color(0x19000000),
                                        offset: Offset(0*Dimensions2.fem, 2*Dimensions2.fem),
                                        blurRadius: 2.5*Dimensions2.fem,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    // Welcome TEXT
                    Container(
                      margin: EdgeInsets.fromLTRB(0*Dimensions2.fem, 0*Dimensions2.fem, 38*Dimensions2.fem, 2*Dimensions2.fem),
                      width: Dimensions.size100*1.8,
                      child: RichText(
                        overflow: TextOverflow.fade,
                        text: TextSpan(
                          style: SafeGoogleFont (
                            'Montserrat',
                            fontSize: 12*Dimensions2.ffem,
                            fontWeight: FontWeight.w700,
                            height: 1.2175*Dimensions2.ffem/Dimensions2.fem,
                            color: Color(0xffffffff),
                          ),
                          children: [
                            const TextSpan(
                              text: 'Welcome,',
                            ),
                            TextSpan(
                              text: ' ${authController.currentUserData.firstName}!',
                              style: SafeGoogleFont (
                                'Montserrat',
                                fontSize: 20*Dimensions2.ffem,
                                fontWeight: FontWeight.w700,
                                height: 1.2175*Dimensions2.ffem/Dimensions2.fem,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    // The Menu (Hambugger icon)
                    Container(
                      margin: EdgeInsets.fromLTRB(0*Dimensions2.fem, 8*Dimensions2.fem, 0*Dimensions2.fem, 4*Dimensions2.fem),
                      width: 29*Dimensions2.fem,
                      height: double.infinity,
                      child: PopupMenuButton<int>(
                        color: const Color(0xFFFAF4F4),
                        elevation: 2,
                        onSelected: ((value) {
                          if(value == 1){
                            //See my Sales   
                            Get.to(SeeMySalesScreen(user: authController.currentUserData));             
                          }else if(value == 2){
                            // go to my expenses
                            Get.to(SeeMyExpensesScreen(user: authController.currentUserData));                     
                          }else if(value == 3){
                            // calling logOut function
                            authController.signOutUser();                      
                          }
                        }),
                        itemBuilder: (context) {
                          return [
                            // My Sales
                            PopupMenuItem(
                              value: 1,
                              child: Row(
                              children: [
                                const Icon(Icons.stacked_line_chart_rounded),
                                SizedBox(width: Dimensions.size5),
                                const Text("My Sales"),
                              ]),
                            ),
                            // My Expenses
                            PopupMenuItem(
                              value: 2,
                              child: Row(
                              children: [
                                const Icon(Icons.money_off),
                                SizedBox(width: Dimensions.size5),
                                const Text("My Expenses"),
                              ]),
                            ),
                            // Logout
                            PopupMenuItem(
                              value: 3,
                              child: Row(
                              children: [
                                const Icon(Icons.logout),
                                SizedBox(width: Dimensions.size5),
                                const Text("Log Out"),
                              ]),
                            ),
                          ];
                        },
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(0*Dimensions2.fem, 0*Dimensions2.fem, 0*Dimensions2.fem, 10*Dimensions2.fem),
                              width: double.infinity,
                              height: 4*Dimensions2.fem,
                              decoration: const BoxDecoration (
                                color: Color(0xff550080),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(0*Dimensions2.fem, 0*Dimensions2.fem, 0*Dimensions2.fem, 9*Dimensions2.fem),
                              width: double.infinity,
                              height: 4*Dimensions2.fem,
                              decoration: const BoxDecoration (
                                color: Color(0xff550080),
                              ),
                            ),
                            Container(
                              width: double.infinity,
                              height: 4*Dimensions2.fem,
                              decoration: const BoxDecoration (
                                color: Color(0xff550080),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // Income Summary
              Container(
                margin: EdgeInsets.fromLTRB(2*Dimensions2.fem, 0*Dimensions2.fem, 0*Dimensions2.fem, 0*Dimensions2.fem),
                child: Text(
                  'Income Summary',
                  style: SafeGoogleFont (
                    'Montserrat',
                    fontSize: 12*Dimensions2.ffem,
                    fontWeight: FontWeight.w700,
                    height: 1.2175*Dimensions2.ffem/Dimensions2.fem,
                    color: Color(0xffffffff),
                  ),
                ),
              ),
              // Total AMOUNT
              Container(
                margin: EdgeInsets.fromLTRB(84*Dimensions2.fem, 0*Dimensions2.fem, 78*Dimensions2.fem, 20*Dimensions2.fem),
                width: double.infinity,
                height: 68*Dimensions2.fem,
                child: Stack(
                  children: [
                    Positioned(
                      left: 0*Dimensions2.fem,
                      top: 0*Dimensions2.fem,
                      child: Align(
                        child: SizedBox(
                          width: 166*Dimensions2.fem,
                          height: 54*Dimensions2.fem,
                          // All Sales total amount
                          child: Text(
                            chartController.allSalesTotalAmount(), // '345,070',
                            style: SafeGoogleFont (
                              'Podkova',
                              fontSize: 48*Dimensions2.fem,
                              fontWeight: FontWeight.w600,
                              height: 1.11*Dimensions2.fem/Dimensions2.fem,
                              color: Color(0xffffffff),
                            ),
                          ),
                        ),
                      ),
                    ),
                    // Total amount Gotten TODAY
                    Positioned(
                      left: 38*Dimensions2.fem,
                      top: 53*Dimensions2.fem,
                      child: Align(
                        child: SizedBox(
                          width: 150*Dimensions2.fem,
                          height: 15*Dimensions2.fem,
                          // Total amount of all sales today
                          child: Text(
                            '+${chartController.todaysTotalAmount.value} Today',
                            style: SafeGoogleFont (
                              'Podkova',
                              fontSize: 13*Dimensions2.ffem,
                              fontWeight: FontWeight.w600,
                              height: 1.11*Dimensions2.ffem/Dimensions2.fem,
                              color: Color(0xb5e4fff5),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // CHART HERE : Charts area
              Material(
                color: Colors.white, // AppColors.mainTextColor3.withOpacity(0.1),
                borderRadius: BorderRadius.circular(Dimensions.size15),            
                child: SizedBox(
                  width: Dimensions.screenWidth*0.95,
                  height: Dimensions.size100*2.3,
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
            ],
          ),
        );
      }
    );
  }
}