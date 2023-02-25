import 'package:cloud_firestore/cloud_firestore.dart';

class ProductModel {
  String name;
  String amount;
  List colors;
  int unit;
  int unitSold;
  int unitAvailable;
  String category;
  String productID;
  String description;


  ProductModel({
    required this.name,
    required this.amount,
    required this.colors,
    required this.unit,
    required this.unitSold,
    required this.unitAvailable,
    required this.category,
    required this.productID,
    required this.description,
  });


  ProductModel.fromJson(Map<String, dynamic> json):
    name = json['name'],
    amount = json['amount'],
    colors = json['colors'],
    unit = json['unit'],
    unitSold = json['unit_sold'],
    unitAvailable = json['unit_available'],
    category = json['category'],
    productID = json['product_id'],
    description = json['description'];


  ProductModel.fromSnapshot(DocumentSnapshot<Map<String, dynamic>> snapshot):
    name = snapshot['name'],
    amount = snapshot['amount'],
    colors = snapshot['colors'],
    unit = snapshot['unit'],
    unitSold = snapshot['unit_sold'],
    unitAvailable = snapshot['unit_available'],
    category = snapshot['category'],
    productID = snapshot['product_id'],
    description = snapshot['description'];





  Map<String, dynamic> toJson(){
    final Map<String, dynamic> data = new Map<String, dynamic>();

    data['name'] = this.name;
    data['amount'] = this.amount;
    data['colors'] = this.colors;
    data['unit'] = this.unit;
    data['unit_sold'] = this.unitSold;
    data['unit_available'] = this.unitAvailable;
    data['category'] = this.category;
    data['product_id'] = this.productID;
    data['description'] = this.description;


    return data;
  }


}


