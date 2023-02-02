import 'package:cloud_firestore/cloud_firestore.dart';

class ProductModel {
  String name;
  String amount;
  List colors;
  int unit;
  int unitSold;
  int unitAvailable;
  String shape;
  String size;
  String type;
  String material;
  String length;
  List categories;


  ProductModel({
    required this.name,
    required this.amount,
    required this.colors,
    required this.unit,
    required this.unitSold,
    required this.unitAvailable,
    required this.shape,
    required this.size,
    required this.type,
    required this.material,
    required this.length,
    required this.categories,
  });


  ProductModel.fromJson(Map<String, dynamic> json):
    name = json['name'],
    amount = json['amount'],
    colors = json['colors'],
    unit = json['unit'],
    unitSold = json['unit_sold'],
    unitAvailable = json['unit_available'],
    shape = json['shape'],
    size = json['size'],
    type = json['type'],
    material = json['material'],
    length = json['length'],
    categories = json['categories'];
    // category = (json['category'] as List).map((e) => CategoryModel.fromJson(e)).toList();


  ProductModel.fromSnapshot(DocumentSnapshot<Map<String, dynamic>> snapshot):
    name = snapshot['name'],
    amount = snapshot['amount'],
    colors = snapshot['colors'],
    unit = snapshot['unit'],
    unitSold = snapshot['unit_sold'],
    unitAvailable = snapshot['unit_available'],
    shape = snapshot['shape'],
    size = snapshot['size'],
    type = snapshot['type'],
    material = snapshot['material'],
    length = snapshot['length'],
    categories = snapshot['categories'];
    // category = (snapshot['category'] as List).map((e) => CategoryModel.fromJson(e)).toList();




  Map<String, dynamic> toJson(){
    final Map<String, dynamic> data = new Map<String, dynamic>();

    data['name'] = this.name;
    data['amount'] = this.amount;
    data['colors'] = this.colors;
    data['unit'] = this.unit;
    data['unit_sold'] = this.unitSold;
    data['unit_available'] = this.unitAvailable;
    data['shape'] = this.shape;
    data['size'] = this.size;
    data['type'] = this.type;
    data['material'] = this.material;
    data['length'] = this.length;
    data['categories'] = this.categories;

    return data;
  }


}


