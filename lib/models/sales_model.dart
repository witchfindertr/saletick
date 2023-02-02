import 'package:cloud_firestore/cloud_firestore.dart';


class SalesModel {
  Map product;
  String whoSoldIt;
  int unitSold;
  String totalAmount;
  String productName;
  String time;  // eg 12:30:43 pm
  String date;  // eg 3 March 2022
  DateTime dateCreated;
  String soldTo;

  SalesModel({
    required this.product,
    required this.whoSoldIt,
    required this.unitSold,
    required this.totalAmount,
    required this.productName,
    required this.time,
    required this.date,
    required this.dateCreated,
    required this.soldTo
  });



  SalesModel.fromSnapshot(DocumentSnapshot<Map<String, dynamic>> snapshot):
    product = snapshot['product'],
    whoSoldIt = snapshot['who_sold_it'],
    unitSold = snapshot['unit_sold'], 
    totalAmount = snapshot['total_amount'],
    productName = snapshot['product_name'],
    time = snapshot['time'],
    date = snapshot['date'],
    dateCreated = (snapshot['date_created'] as Timestamp).toDate(),
    soldTo = snapshot['sold_to'];



  SalesModel.fromJson(Map<String, dynamic> json):
    product = json['product'],
    whoSoldIt = json['who_sold_it'],
    unitSold = json['unit_sold'], 
    totalAmount = json['total_amount'],
    productName = json['product_name'],
    time = json['time'],
    date = json['date'],
    dateCreated = (json['date_created'] as Timestamp).toDate(),
    soldTo = json['sold_to'];


  
  Map<String, dynamic> toJson() {
    Map<String, dynamic> data = new Map<String, dynamic>();
    data['product'] = this.product;
    data['who_sold_it'] = this.whoSoldIt;
    data['unit_sold'] = this.unitSold;
    data['total_amount'] = this.totalAmount;
    data['product_name'] = this.productName;
    data['time'] = this.time;
    data['date'] = this.date;
    data['date_created'] = this.dateCreated;
    data['sold_to'] = this.soldTo;
    return data;
  }
  

}