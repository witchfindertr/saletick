import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:money_formatter/money_formatter.dart';
import 'package:saletick/controllers/auth_controller.dart';
import 'package:saletick/controllers/product_controller.dart';
import 'package:saletick/models/chart_model.dart';
import 'package:saletick/models/transaction_model.dart';


class ChartController extends GetxController {

  // instance of auth controller
  AuthController _authController = Get.find<AuthController>();

  // instance of product controller
  ProductController _productController = Get.find<ProductController>();

  // filtered list of sales
  final dailySalesList = <TransactionModel>[].obs;
  final weeklySalesList = <TransactionModel>[].obs;
  final monthlySalesList = <TransactionModel>[].obs;
  final yearlySalesList = <TransactionModel>[].obs;

  // today's total amount
  final todaysTotalAmount = ''.obs;

  final dailyChart = <DailyChartModel>[].obs;
  final weeklyChart =<WeeklyChartModel>[].obs;
  final monthlyChart = <MonthlyChartModel>[].obs;
  final yearlyChart = <YearlyChartModel>[].obs;

  @override
  void onReady() {
    // Calling the functions that will get our various chart analysis upon screen load
    getDailyChart();
    getWeeklyChart();
    getMonthlyChart();
    getYearlyChart();
    // Calling the function that will get the totalAmount of the day upon screen load
    totalAmountSoldToday();
    super.onReady();
  }


  // A function which gets the sales of the requested year according to the number inserted
  // yearBefore and yearAfter are the years before and after the requested year respectively.
  // we return all the sales that lies btw yearBefore and yearAfter. (using where() to filter  the allSales list)
  Map<String, dynamic> getPrevYear(int prevYearNum){
    // total amount
    double total = 0;

    DateTime now = DateTime.now();
    DateTime yearBefore = DateTime(now.year - prevYearNum - 1, now.month, now.day);
    DateTime requestedYear = DateTime(now.year - prevYearNum, now.month, now.day);
    DateTime yearAfter = DateTime(now.year - prevYearNum + 1, now.month, now.day);

    yearlySalesList.assignAll(_productController.allSalesDataList.where((sale) {
      var date = sale.dateCreated;
      return yearBefore.isBefore(date) && date.isBefore(yearAfter);    }));

    for(var y in yearlySalesList){
      total += double.parse(y.totalAmount);
    }

    return {"year" : requestedYear.year.toString(), "amount": total.toInt()};
  }




  // A function that gets the previous week according to the num inserted; then ---
  // Filter the allSalesDataList and return the sales that falls btw the requestedWeek and the next 7 days (weekAfter)
  // Eg. if one adds a prevWeekNum=2 and requests for sales in the last two weeks, then
  // the function will return: 1) the list of sales that occurred last 2 weeks starting from that date to the next 7days 
  // 2) A string showing the week requested eg 2w ago, 3w ago, etc
  Map<String, dynamic> getPrevWeek(int prevWeekNum){
    // total amount variable
    double total = 0;

    DateTime now = DateTime.now();
    DateTime requestedWeek= now.subtract(Duration(days: 7*prevWeekNum));
    DateTime weekAfter = requestedWeek.add(const Duration(days: 7));

    weeklySalesList.assignAll(_productController.allSalesDataList.where((sale) {
      var date = sale.dateCreated;
      return requestedWeek.isBefore(date) && date.isBefore(weekAfter);
    }));

    // Getting the amount (i.e the total amount of sales of this particular week)
    for(var a in weeklySalesList){
      total += double.parse(a.totalAmount);
    }

    return {"week" : "${prevWeekNum}w ago", "amount" : total.toInt()};
  }




  // A function which returns a Map<String, dynamic>: the day & total amount of the sales done that day
  // When a prevDayNum is specified, the function goes backwards and retrieves that day which was requested and fetches the name of that day.
  // NB: normalDay is the actual day requested, why prevDay & dayAfter are manipulated --- 
  // Each standing for a day before and a day after the requested day respectively
  Map<String, dynamic> getPrevDay(int prevDayNum){
    double total = 0;

    DateTime now = DateTime.now();
    DateTime prevDay = now.subtract(Duration(days: prevDayNum + 1)); 
    DateTime normalDay = now.subtract(Duration(days: prevDayNum));
    DateTime dayAfter = prevDay.add(const Duration(days: 2));

    // filtering the allSales list to get the sales of a particular day.
    // We get the sales of a particular day that was requested
    dailySalesList.assignAll(_productController.allSalesDataList.where((sale) {
      var date = sale.dateCreated;
      // return goods sold after prevDay and before dayAfter. NB the day requested lies btw prevDay && dayAfter
      return prevDay.isBefore(date) && date.isBefore(dayAfter);
    }));

    // Getting the amount (i.e the total amount of sales of this particular day)
    for(var a in dailySalesList){
      total += double.parse(a.totalAmount);
    }

    String nameOftheDay = DateFormat('EEEE').format(normalDay);

    return {'day': nameOftheDay, 'amount': total.toInt()};
  }




  // A function which gets a previous month and its sales based on the integer num you inserted into it
  // Eg. 2 means, two months ago; 1 means, one month ago
  Map<String, dynamic> getPrevMonth(int prevMonthNum){
    // for total amount
    double total = 0;

    // the item of this list is returned based on the index returned by DateTime.month
    List<String> months = ['Jan', 'Feb', 'Mar', 'Apr', 'May','Jun','Jul','Aug','Sep','Oct','Nov','Dec'];
    
    DateTime now = DateTime.now();

    DateTime prevMonthBefore = DateTime(now.year, now.month-prevMonthNum-1, now.day);
    DateTime prevMonth = DateTime(now.year, now.month-prevMonthNum, now.day);
    DateTime prevMonthAfter = DateTime(now.year, now.month-prevMonthNum+1, now.day);

    monthlySalesList.assignAll(_productController.allSalesDataList.where((sale) {
      var date = sale.dateCreated;
      // return goods sold btw prevMonth and the month after the actual month
      return prevMonthBefore.isBefore(date) && date.isBefore(prevMonthAfter);
    }));

     // Getting the amount (i.e the total amount of sales of this particular month)
    for(var a in monthlySalesList){
      total += double.parse(a.totalAmount);
    }

    // removing extra 1 because of the list index
    return {"month" : months[prevMonth.month - 1], "amount" : total.toInt()};
  }




  // A function which returns the chart of each day, as requested
  // Using list.generate() to generate a daily chart data for 5 different days.
  List<DailyChartModel> getDailyChart(){

    dailyChart.value = List<DailyChartModel>.generate(5, (index) {
      return DailyChartModel(
        day: getPrevDay(index+1)['day'], 
        value: getPrevDay(index+1)['amount']
      );
    });

    return List<DailyChartModel>.generate(5, (index) {
      return DailyChartModel(
        day: getPrevDay(index+1)['day'], 
        value: getPrevDay(index+1)['amount']
      );
    });

  }



  // A function which returns the chart of each week, as requested
  // Using list.generate() to generate a weekly chart data for 5 different weeks.
  List<WeeklyChartModel> getWeeklyChart(){

    weeklyChart.value =  List<WeeklyChartModel>.generate(5, (index) {
      return WeeklyChartModel(
        week: getPrevWeek(index+1)['week'], 
        value: getPrevWeek(index+1)['amount']
      );
    });

    return List<WeeklyChartModel>.generate(5, (index) {
      return WeeklyChartModel(
        week: getPrevWeek(index+1)['week'], 
        value: getPrevWeek(index+1)['amount']
      );
    });

  }



  // A function which returns the chart of each month, as requested
  // Using list.generate() to generate a monthly chart data for 5 different months.
  List<MonthlyChartModel> getMonthlyChart(){
    monthlyChart.value = List<MonthlyChartModel>.generate(5, (index) {
      return MonthlyChartModel(
        month: getPrevMonth(index+1)['month'], 
        value: getPrevMonth(index+1)['amount']
      );
    });

    return List<MonthlyChartModel>.generate(5, (index) {
      return MonthlyChartModel(
        month: getPrevMonth(index+1)['month'], 
        value: getPrevMonth(index+1)['amount']
      );
    });
  }



  // A function which returns the chart of each year, as requested
  // Using list.generate() to generate a yearly chart data for 5 different years.
  List<YearlyChartModel> getYearlyChart(){
    yearlyChart.value = List<YearlyChartModel>.generate(5, (index) {
      return YearlyChartModel(
        year: getPrevYear(index+1)['year'], 
        value: getPrevYear(index+1)['amount']
      );
    });

    return List<YearlyChartModel>.generate(5, (index) {
      return YearlyChartModel(
        year: getPrevYear(index+1)['year'], 
        value: getPrevYear(index+1)['amount']
      );
    });
  }





  // A function which gets total amount of all sales
  String allSalesTotalAmount() {
    double overallTotal = 0;

    _productController.allSalesDataList.forEach((e) { 
      overallTotal += double.parse(e.totalAmount);
    });

    // formatting the calculated all sales total amount i.e overallTotal
    MoneyFormatter formatter = MoneyFormatter(amount: overallTotal);
    String formattedTotalAmount = formatter.output.withoutFractionDigits;

    return formattedTotalAmount;
  }


  void totalAmountSoldToday(){
    double totalAmountToday = 0;

    // calling the function that will compute the today's sales.
    // passing zero to it makes it to generate the list of sales done today
    getPrevDay(0);

    dailySalesList.value.forEach((e) { 
      totalAmountToday += double.parse(e.totalAmount);
    });

    MoneyFormatter fm = MoneyFormatter(amount: totalAmountToday);
    String formattedCalculatedAmount = fm.output.withoutFractionDigits;

    todaysTotalAmount.value = formattedCalculatedAmount;
  }





}