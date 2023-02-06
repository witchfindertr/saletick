import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:money_formatter/money_formatter.dart';
import 'package:saletick/controllers/auth_controller.dart';
import 'package:saletick/models/product_model.dart';
import 'package:saletick/models/sales_model.dart';
import 'package:saletick/utilities/feedback.dart';
import 'package:saletick/utilities/firebase_references.dart';
import 'package:saletick/utilities/logger.dart';


class ProductController extends GetxController{

  final allProductsList = <ProductModel>[].obs;
  final allSalesDataList = <SalesModel>[].obs;
  final currentUserSalesList = <SalesModel>[].obs;


  // For sell of product
  final myDate = ''.obs;
  final myTime = ''.obs;
  final sellProductTotalAmount = 0.0.obs;

  // instance of auth controller
  AuthController _authController = Get.find<AuthController>();
  

  @override
  void onReady() {
    getAllProducts(_authController.currentUserData.isAdmin);
    getAllSalesData(_authController.currentUserData.isAdmin);
    super.onReady();
  }






  // A function which gets all the products in the inventory
  Future<void> getAllProducts(bool isAdmin) async {
    try{
      if(isAdmin){
        QuerySnapshot<Map<String, dynamic>> productData = await productFirestoreReference.doc(_authController.getCurrentUser()!.email).collection('PRODUCTS').get();
        var products = productData.docs.map((e) => ProductModel.fromSnapshot(e)).toList();
        allProductsList.assignAll(products);
        print('PRODUCTS GOTTEN  (success) $allProductsList');
      }else{
        QuerySnapshot<Map<String, dynamic>> productData = await productFirestoreReference.doc(_authController.currentUserData.myAdminEmailAddress).collection('PRODUCTS').get();
        var products = productData.docs.map((e) => ProductModel.fromSnapshot(e)).toList();
        allProductsList.assignAll(products);
        print('PRODUCTS GOTTEN  (success) $allProductsList');
      }
     
      
    }catch (e){
      AppLogger.e(e);
    }
  }




  // A function which creates a product when it is called
  Future<void> createProductItem(ProductModel product) async {
    try{
      UserFeedBack.showLoading();
      await productFirestoreReference.doc(_authController.getCurrentUser()!.email).collection('PRODUCTS').doc(product.name.toUpperCase()).set(product.toJson());
      // little delay before getting updated products from our DB
      await Future.delayed(const Duration(seconds: 1));
      // Getting all products from the DB
      getAllProducts(true);
      UserFeedBack.showSuccess('Product has been added successfully !');
      // delay and go to home
      await Future.delayed(const Duration(seconds: 1));
      _authController.goToHomeScreen();
    }catch (e){
      AppLogger.e(e);
      Get.back();
      UserFeedBack.showError('Product Creation Failed. Try Again !');
    }
  }




  // A function which Sells a product
  Future<void> sellProductItem(String adminEmail, {required ProductModel productModel, required int unitSold, required String soldTo, required bool isAdmin}) async {
    DateTime currentDateTime = DateTime.now();
    String productName = productModel.name.toUpperCase();

    try{
      UserFeedBack.showLoading();
      // Creating an object of the Sales Model
      SalesModel salesModel = SalesModel(
        product: productModel.toJson(), 
        whoSoldIt: _authController.getCurrentUser()!.email!, 
        unitSold: unitSold, 
        totalAmount: sellProductTotalAmount.value.toString(), 
        productName: productModel.name,
        time: myTime.value, 
        date: myDate.value,
        dateCreated: currentDateTime,
        soldTo: soldTo
      );

      // Save sales info to the general sales collection in the DB
      if(isAdmin){
        //for admin
        await salesFirestoreReference.doc(_authController.getCurrentUser()!.email).collection('SALES').doc("$productName : $currentDateTime").set(salesModel.toJson());
      }else{
        // for staff
        await salesFirestoreReference.doc(adminEmail).collection('SALES').doc("$productName : $currentDateTime").set(salesModel.toJson());
      }
      
      // little delay before the next operation
      await Future.delayed(const Duration(seconds: 1));

      // Save current user's sales to the user data in the DB
      await userFirestoreReference.doc(_authController.getCurrentUser()!.email).collection('mySales').doc("$productName : $currentDateTime").set(salesModel.toJson());
    
      // Update the units(quantity) of the product: checks wether user is an admin before processing . . .
      isAdmin? updateUnitsOfProducts(productModel, unitSold, true) : updateUnitsOfProducts(productModel, unitSold, false);

      // little delay before getting updated products from our DB
      await Future.delayed(const Duration(seconds: 1));

      // fetch all products data
      if(isAdmin){
        getAllProducts(true);
      }else{
        getAllProducts(false);
      }
      
      // little delay before getting sales Data
      await Future.delayed(const Duration(seconds: 1));
      // Getting sales data: checks if user is an Admin before continuing
      isAdmin? getAllSalesData(true) : getAllSalesData(false);

      UserFeedBack.showSuccess('Product has been added to sales !');
      // delay and go to home
      await Future.delayed(const Duration(seconds: 1));
      _authController.goToHomeScreen();
    }catch (e){
      AppLogger.e(e);
      Get.back();
      UserFeedBack.showError('Failed to add product to sales. Try Again !');
    }
  }





  // A function which updates key variables during sell of a product
  void updateProductSellVariables(double unit, double amount){

    myDate.value = DateFormat('yMd').format(DateTime.now());
    myTime.value = DateFormat.jm().format(DateTime.now());

    sellProductTotalAmount.value = unit*amount;
    print('UNIT: $unit and AMOUNT: $amount'); // testing

  }



  // A function which updates the units (quantities) of the product being sold
  Future<void> updateUnitsOfProducts(ProductModel product, int unitSold, bool isAdmin) async {
    try{
      // Get a specific product (that which is being sold)
      if(isAdmin){
        DocumentSnapshot<Map<String, dynamic>> data =  await productFirestoreReference.doc(_authController.getCurrentUser()!.email).collection('PRODUCTS').doc(product.name.toUpperCase()).get();
        // updating the units of the sold product data gotten
        data.reference.update(
          {
            'unit_sold' : product.unitSold += unitSold,
            'unit_available' : product.unitAvailable - unitSold,
          }
        );
      }else{
        DocumentSnapshot<Map<String, dynamic>> data =  await productFirestoreReference.doc(_authController.currentUserData.myAdminEmailAddress).collection('PRODUCTS').doc(product.name.toUpperCase()).get();
        // updating the units of the sold product data gotten
        data.reference.update(
          {
            'unit_sold' : product.unitSold += unitSold,
            'unit_available' : product.unitAvailable - unitSold,
          }
        );
      }      
      
    }catch(e){
      AppLogger.e(e);
    }
  }



  // A function which gets all the sales made
  void getAllSalesData(bool isAdmin) async {
    try{
      if(isAdmin){
        QuerySnapshot<Map<String, dynamic>> salesData = await salesFirestoreReference.doc(_authController.getCurrentUser()!.email).collection('SALES').get();
        var sales = salesData.docs.map((e) => SalesModel.fromSnapshot(e)).toList();
        allSalesDataList.assignAll(sales);
        print('SALES ADMIN GOTTEN  (success) $allSalesDataList');
      }else{
        QuerySnapshot<Map<String, dynamic>> salesData = await salesFirestoreReference.doc(_authController.currentUserData.myAdminEmailAddress).collection('SALES').get();
        var sales = salesData.docs.map((e) => SalesModel.fromSnapshot(e)).toList();
        allSalesDataList.assignAll(sales);
        print('SALES STAFF GOTTEN  (success) $allSalesDataList');  
      }
      
    }catch (e){
      AppLogger.e(e);
    }
  }



  
  // A function which restocks the a product that is out of stock
  Future<void> restockProduct(ProductModel product, int addedUnit) async {
    try{
      // start loading as request is being processed
      UserFeedBack.showLoading();

      // Get a specific product
      DocumentSnapshot<Map<String, dynamic>> data =  await productFirestoreReference.doc(_authController.getCurrentUser()!.email).collection('PRODUCTS').doc(product.name.toUpperCase()).get();
      // updating the units of the product
      await data.reference.update(
        {
          'unit' : addedUnit + product.unitAvailable,
          'unit_available' : product.unitAvailable + addedUnit,
          'unit_sold' : 0
        }
      );
      
      // fetch all products data
      getAllProducts(true);

      UserFeedBack.showSuccess('Product successfully restocked !');
      // delay and go to home

      await Future.delayed(const Duration(seconds: 1));
      _authController.goToHomeScreen();

    }catch (e){
      AppLogger.e(e);
      Get.back();
     UserFeedBack.showError('Restock operation failed. Try Again !'); 
    }
  }





// Processing the product inside the staff sales model
ProductModel processSpecificProductsSold(SalesModel mySale) {
  // Serializing the product data in staff's specific sales
  // first: converting it from Map<dynamic, dynamic> to Map<String, dynamic>
  Map<String, dynamic> renewedMap = {};
  // looping through the product Map gotten online and restructuring it into Map<String, dynamic>
  mySale.product.forEach((key, value) { 
    renewedMap[key] = value;
  });
  
  // Serializing the renewedMap 
  ProductModel productData = ProductModel.fromJson(renewedMap);  

  return productData;  
}



// Getting the total amount sold for a particular Product 
String totalCashgeneratedByProduct(ProductModel productModel){

  int totalAmount = productModel.unitSold * int.parse(productModel.amount);

  MoneyFormatter fm = MoneyFormatter(amount: totalAmount.toDouble());

  String formattedCalculatedAmount = fm.output.withoutFractionDigits;

  return formattedCalculatedAmount;
}



// Getting total amount generated by a product in a day
String totalCashgeneratedByProductToday(ProductModel productModel){
  double totalAmountToday = 0;

  String today = DateFormat.yMd().format(DateTime.now());

  for(var a in allSalesDataList){
    if(a.productName.toLowerCase() == productModel.name.toLowerCase()){
      if(DateFormat.yMd().format(a.dateCreated) == today){
        totalAmountToday += double.parse(a.totalAmount);
      }
    }
  }

  // formatting the figures to look like money
  MoneyFormatter fm = MoneyFormatter(amount: totalAmountToday);
  String formattedCalculatedAmount = fm.output.withoutFractionDigits;

  return formattedCalculatedAmount;
}




}