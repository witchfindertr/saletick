import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:saletick/models/sales_model.dart';


class UserModel {
  String firstName;
  String surname;
  String email;
  bool isAdmin;
  String phoneNumber;
  String position;
  String dateEmployed;
  String imageUrl;
  String myAdminEmailAddress;
  List<SalesModel> mySales;

  UserModel({
    required this.firstName,
    required this.surname,
    required this.email,
    required this.isAdmin,
    required this.phoneNumber,
    required this.position,
    required this.dateEmployed,
    required this.imageUrl,
    required this.myAdminEmailAddress,
    required this.mySales,
  });


  UserModel.fromSnapshot(DocumentSnapshot<Map<String, dynamic>> snapshot):
    firstName = snapshot['first_name'],
    surname = snapshot['surname'],
    email = snapshot['email'],
    isAdmin = snapshot['is_admin'],
    phoneNumber = snapshot['phone'],
    position = snapshot['position'],
    dateEmployed = snapshot['date_employed'],
    imageUrl = snapshot['image_url'],
    myAdminEmailAddress = snapshot['my_admin_email'],
    mySales = snapshot['my_sales'] == null? [] : (snapshot['my_sales'] as List).map((e) => SalesModel.fromJson(e as Map<String, dynamic>)).toList();



  UserModel.fromJson(Map<String, dynamic> json):
    firstName = json['first_name'],
    surname = json['surname'],
    email = json['email'],
    isAdmin = json['is_admin'],
    phoneNumber = json['phone'],
    position = json['position'],
    dateEmployed = json['date_employed'],
    imageUrl = json['image_url'],
    myAdminEmailAddress = json['my_admin_email'],
    mySales = json['my_sales'] == null? [] : (json['my_sales'] as List).map((e) => SalesModel.fromJson(e as Map<String, dynamic>)).toList();


  
  Map<String, dynamic> toJson(){
    final Map<String, dynamic> data = new Map<String, dynamic>();

    data['first_name'] = this.firstName;
    data['surname'] = this.surname;
    data['email'] = this.email;
    data['is_admin'] = this.isAdmin;
    data['phone'] = this.phoneNumber;
    data['position'] = this.position;
    data['date_employed'] = this.dateEmployed;
    data['image_url'] = this.imageUrl;
    data['my_admin_email'] = this.myAdminEmailAddress;
    data['my_sales'] = this.mySales;

    return data;
  }

  
}