import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:money_formatter/money_formatter.dart';
import 'package:saletick/controllers/auth_controller.dart';
import 'package:saletick/models/product_category_model.dart';
import 'package:saletick/models/product_model.dart';
import 'package:saletick/models/transaction_model.dart';
import 'package:saletick/utilities/feedback.dart';
import 'package:saletick/utilities/firebase_references.dart';
import 'package:saletick/utilities/logger.dart';


class ProductController extends GetxController{

  // final allProductsList = <ProductModel>[].obs;
  final allProductsCategoryList = <ProductCategoryModel>[].obs;
  final allTransactionsDataList = <TransactionModel>[].obs;
  final allExpensesDataList = <TransactionModel>[].obs;
  final allSalesDataList = <TransactionModel>[].obs;

  // final currentUserSalesList = <SalesModel>[].obs;


  // For sell of product
  final myDate = ''.obs;
  final myTime = ''.obs;
  final sellProductTotalAmount = 0.0.obs;

  // instance of auth controller
  AuthController _authController = Get.find<AuthController>();





  // A function which gets all the products in the inventory
  Future<void> getAllProducts(bool isAdmin) async {
    try{
      if(isAdmin){
        QuerySnapshot<Map<String, dynamic>> productData = await productFirestoreReference.doc(_authController.getCurrentUser()!.email).collection('PRODUCTS').get();
        var products = productData.docs.map((e) => ProductModel.fromSnapshot(e)).toList();
        

        // Setting the products categories list to empty before adding new items
        allProductsCategoryList.value = [];
        // A set object for categories
        Set<String> distinctCategories = {};
        
        // Creating a distinct set of category names by looping through the products
        for(var p in products){
          distinctCategories.add(p.category);
        }

        // Using loop to assign a particular categoryName the products associated with it.
        // For each item in the distinctCategories Set, find products associated with it and make a list out of them
        for(var cat in distinctCategories){
          var categoryName = cat;
          List<ProductModel> productsList = [];

          for(var p in products){
            if(p.category == cat){
             productsList.add(p);
            }
          }

          allProductsCategoryList.add(ProductCategoryModel(category: categoryName, products: productsList));
          print('PRODUCTS--category--GOTTEN et ADMIN  (success) $allProductsCategoryList');
        }
      }else{
        QuerySnapshot<Map<String, dynamic>> productData = await productFirestoreReference.doc(_authController.currentUserData.myAdminEmailAddress).collection('PRODUCTS').get();
        var products = productData.docs.map((e) => ProductModel.fromSnapshot(e)).toList();

       // Setting the products categories list to empty before adding new items
        allProductsCategoryList.value = [];
        // A set object for categories
        Set<String> distinctCategories = {};
        
        // Creating a distinct set of category names by looping through the products
        for(var p in products){
          distinctCategories.add(p.category);
        }

        // Using loop to assign a particular categoryName the products associated with it.
        // For each item in the distinctCategories Set, find products associated with it and make a list out of them
        for(var cat in distinctCategories){
          var categoryName = cat;
          List<ProductModel> productsList = [];

          for(var p in products){
            if(p.category == cat){
             productsList.add(p);
            }
          }
        }

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
      Get.back(); // stopping the loading
      UserFeedBack.showSuccess(infoMessage: '${product.name} has been added to your inventory', buttonText: 'Completed');
      // delay and go to home
      await Future.delayed(const Duration(seconds: 2));
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
      TransactionModel txnModel = TransactionModel(
        product: productModel.toJson(), 
        whoSoldIt: _authController.getCurrentUser()!.email!, 
        unitSold: unitSold, 
        totalAmount: sellProductTotalAmount.value.toString(), 
        productName: productModel.name,
        expensesName: "",
        time: myTime.value, 
        date: myDate.value,
        dateCreated: currentDateTime,
        soldTo: soldTo,
        isExpenses: false,
      );

      // Save sales info to the general sales collection in the DB
      if(isAdmin){
        //for admin
        await transactionsFirestoreReference.doc(_authController.getCurrentUser()!.email).collection('TRANSACTIONS').doc("$productName : $currentDateTime").set(txnModel.toJson());
      }else{
        // for staff
        await transactionsFirestoreReference.doc(adminEmail).collection('TRANSACTIONS').doc("$productName : $currentDateTime").set(txnModel.toJson());
      }
      
      // little delay before the next operation
      await Future.delayed(const Duration(seconds: 1));

      // Save current user's sales to the user data in the DB
      await userFirestoreReference.doc(_authController.getCurrentUser()!.email).collection('myTransactions').doc("$productName : $currentDateTime").set(txnModel.toJson());
    
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
      // Getting transactions data: checks if user is an Admin before continuing
      isAdmin? getAllTransactionsData(true) : getAllTransactionsData(false);
      Get.back(); // stop loading
      UserFeedBack.showSuccess(infoMessage: 'Product has been added to sales !', buttonText: 'Success');
      // delay and go to home
      await Future.delayed(const Duration(seconds: 2));
      _authController.goToHomeScreen();
    }catch (e){
      AppLogger.e(e);
      Get.back();
      UserFeedBack.showError('Failed to add product to sales. Try Again !');
    }
  }





  // A function which updates key variables during sell of a product
  void updateProductSaleVariables(double unit, double amount){

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
  void getAllTransactionsData(bool isAdmin) async {
    try{
      if(isAdmin){
        QuerySnapshot<Map<String, dynamic>> txnData = await transactionsFirestoreReference.doc(_authController.getCurrentUser()!.email).collection('TRANSACTIONS').get();
        var transactions = txnData.docs.map((e) => TransactionModel.fromSnapshot(e)).toList();
        allTransactionsDataList.assignAll(transactions);

        // Emptying the lists incase there are any contents . . .
        allSalesDataList.value = [];
        allExpensesDataList.value = [];

        // Looping through transactions LIST to separate sales and expenses
        for(var txn in transactions){
          if(txn.isExpenses){
            allExpensesDataList.add(txn);
          }else{
            allSalesDataList.add(txn);
          }
        }
        print('ALL TXN GOTTEN by ADMIN  (success) $allTransactionsDataList');
      }else{
        QuerySnapshot<Map<String, dynamic>> txnData = await transactionsFirestoreReference.doc(_authController.currentUserData.myAdminEmailAddress).collection('TRANSACTIONS').get();
        var transactions = txnData.docs.map((e) => TransactionModel.fromSnapshot(e)).toList();

        // Emptying the lists incase there are any contents . . .
        allSalesDataList.value = [];
        allExpensesDataList.value = [];

        // Looping through transactions LIST to separate sales and expenses
        for(var txn in transactions){
          if(txn.isExpenses){
            allExpensesDataList.add(txn);
          }else{
            allSalesDataList.add(txn);
          }
        }
        print('ALL TXN GOTTEN by STAFF  (success) $allTransactionsDataList');  
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
      Get.back(); // stop loading
      UserFeedBack.showSuccess(infoMessage: 'Product successfully restocked !', buttonText: 'Done');
      // delay and go to home

      await Future.delayed(const Duration(seconds: 2));
      _authController.goToHomeScreen();

    }catch (e){
      AppLogger.e(e);
      Get.back();
     UserFeedBack.showError('Restock operation failed. Try Again !'); 
    }
  }





// Processing the product inside the staff sales model
ProductModel processSpecificProductsSold(TransactionModel mySale) {
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






  // A helps a user add expenses when called: to make an expenses
  Future<void> addExpensesToRecords({required String expensesName, required String amountSpent, required bool isAdmin, required String adminEmail}) async {
    DateTime currentDateTime = DateTime.now();

    try{
      UserFeedBack.showLoading();
      // Creating an object of the Transaction Model
      TransactionModel txnModel = TransactionModel(
        product: {}, 
        whoSoldIt: "", 
        unitSold: 0, 
        totalAmount: amountSpent, 
        productName: "",
        expensesName: expensesName,
        time: "", 
        date: "",
        dateCreated: currentDateTime,
        soldTo: "",
        isExpenses: true,
      );

      // Save sales info to the general sales collection in the DB
      if(isAdmin){
        //for admin
        await transactionsFirestoreReference.doc(_authController.getCurrentUser()!.email).collection('TRANSACTIONS').doc("$expensesName : $currentDateTime").set(txnModel.toJson());
      }else{
        // for staff
        await transactionsFirestoreReference.doc(adminEmail).collection('TRANSACTIONS').doc("$expensesName : $currentDateTime").set(txnModel.toJson());
      }
      
      // little delay before the next operation
      await Future.delayed(const Duration(seconds: 1));
      // Save current user's sales to the user data in the DB
      await userFirestoreReference.doc(_authController.getCurrentUser()!.email).collection('myTransactions').doc("$expensesName : $currentDateTime").set(txnModel.toJson());
      // little delay before getting updated products from our DB
      await Future.delayed(const Duration(seconds: 1));

      // fetch all sales & expenses data (i.e transactions)
      if(isAdmin){
        getAllTransactionsData(true);
      }else{
        getAllTransactionsData(false);
      }
      
      // little delay before getting sales Data
      await Future.delayed(const Duration(seconds: 1));
 
      Get.back(); // stop loading
      UserFeedBack.showSuccess(infoMessage: 'You have added this expenses to the records !', buttonText: 'Success');
      // delay and go to home
      await Future.delayed(const Duration(seconds: 2));
      _authController.goToHomeScreen();
    }catch (e){
      AppLogger.e(e);
      Get.back();
      UserFeedBack.showError('Failed to add expenses to the records. Try Again !');
    }
  }




}