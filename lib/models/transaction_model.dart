import 'package:cloud_firestore/cloud_firestore.dart';


class TransactionModel {
  Map product;
  String whoSoldIt;
  int unitSold;
  String totalAmount;
  String productName;
  String expensesName;
  String time;  // eg 12:30:43 pm
  String date;  // eg 3 March 2022
  DateTime dateCreated;
  String soldTo;
  bool isExpenses;

  TransactionModel({
    required this.product,
    required this.whoSoldIt,
    required this.unitSold,
    required this.totalAmount,
    required this.productName,
    required this.expensesName,
    required this.time,
    required this.date,
    required this.dateCreated,
    required this.soldTo,
    required this.isExpenses
  });



  TransactionModel.fromSnapshot(DocumentSnapshot<Map<String, dynamic>> snapshot):
    product = snapshot['product'],
    whoSoldIt = snapshot['who_sold_it'],
    unitSold = snapshot['unit_sold'], 
    totalAmount = snapshot['total_amount'],
    productName = snapshot['product_name'],
    expensesName = snapshot['expenses_name'],
    time = snapshot['time'],
    date = snapshot['date'],
    dateCreated = (snapshot['date_created'] as Timestamp).toDate(),
    soldTo = snapshot['sold_to'],
    isExpenses = snapshot['is_expenses'];



  TransactionModel.fromJson(Map<String, dynamic> json):
    product = json['product'],
    whoSoldIt = json['who_sold_it'],
    unitSold = json['unit_sold'], 
    totalAmount = json['total_amount'],
    productName = json['product_name'],
    expensesName = json['expenses_name'],
    time = json['time'],
    date = json['date'],
    dateCreated = (json['date_created'] as Timestamp).toDate(),
    soldTo = json['sold_to'],
    isExpenses = json['is_expenses'];


  
  Map<String, dynamic> toJson() {
    Map<String, dynamic> data = new Map<String, dynamic>();
    
    data['product'] = this.product;
    data['who_sold_it'] = this.whoSoldIt;
    data['unit_sold'] = this.unitSold;
    data['total_amount'] = this.totalAmount;
    data['product_name'] = this.productName;
    data['expenses_name'] = this.expensesName;
    data['time'] = this.time;
    data['date'] = this.date;
    data['date_created'] = this.dateCreated;
    data['sold_to'] = this.soldTo;
    data['is_expenses'] = this.isExpenses;

    return data;
  }
  

}