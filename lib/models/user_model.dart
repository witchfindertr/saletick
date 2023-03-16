import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:saletick/models/transaction_model.dart';


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
  String address;
  String qualification;
  String salary;
  int subscriptionStatus;
  String subscriptionCode;
  String subscriptionEmailToken;
  bool isOnFreetrial;
  DateTime? startedTrialOn;
  bool isDoneWithTrial;
  List<TransactionModel> mySales;
  List<TransactionModel> myExpenses;

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
    required this.address,
    required this.qualification,
    required this.salary,    
    required this.subscriptionStatus,
    required this.subscriptionCode,
    required this.subscriptionEmailToken,
    required this.isOnFreetrial,
    this.startedTrialOn,
    required this.isDoneWithTrial,
    required this.mySales,
    required this.myExpenses
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
    address = snapshot['address'],
    qualification = snapshot['qualification'],
    salary = snapshot['salary'],
    subscriptionStatus = snapshot['subscription_status'],
    subscriptionCode = snapshot['subscription_code'],
    subscriptionEmailToken = snapshot['subscription_email_code'],
    isOnFreetrial = snapshot['isOnFreeTrial'],
    startedTrialOn = snapshot['started_trial_on'] == null? null : ( snapshot['started_trial_on']  as Timestamp).toDate(),
    isDoneWithTrial = snapshot['isDoneWithTrial'],
    mySales = snapshot['my_sales'] == null? [] : (snapshot['my_sales'] as List).map((e) => TransactionModel.fromJson(e as Map<String, dynamic>)).toList(),
    myExpenses = snapshot['my_expenses'] == null? [] : (snapshot['my_expenses'] as List).map((e) => TransactionModel.fromJson(e as Map<String, dynamic>)).toList();



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
    address = json['address'],
    qualification = json['qualification'],
    salary = json['salary'],
    subscriptionStatus = json['subscription_status'],
    subscriptionCode = json['subscription_code'],
    subscriptionEmailToken = json['subscription_email_code'],
    isOnFreetrial = json['isOnFreeTrial'],
    startedTrialOn =  json['started_trial_on'] == null? null : ( json['started_trial_on']  as Timestamp).toDate(),
    isDoneWithTrial = json['isDoneWithTrial'],
    mySales = json['my_sales'] == null? [] : (json['my_sales'] as List).map((e) => TransactionModel.fromJson(e as Map<String, dynamic>)).toList(),
    myExpenses = json['my_expenses'] == null? [] : (json['my_expenses'] as List).map((e) => TransactionModel.fromJson(e as Map<String, dynamic>)).toList();


  
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
    data['address'] = this.address;
    data['qualification'] = this.qualification;
    data['salary'] = this.salary;
    data['subscription_status'] = this.subscriptionStatus;
    data['subscription_code'] = this.subscriptionCode;
    data['subscription_email_code'] = this.subscriptionEmailToken;
    data['isOnFreeTrial'] = this.isOnFreetrial;
    data['started_trial_on'] = this.startedTrialOn;
    data['isDoneWithTrial'] = this.isDoneWithTrial;
    data['my_sales'] = this.mySales;
    data['my_expenses'] = this.myExpenses;

    return data;
  }

  
}