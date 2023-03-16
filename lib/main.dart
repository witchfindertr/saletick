import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:saletick/app_constants/routes.dart';
import 'package:saletick/bindings/custom_bindings.dart';
import 'package:saletick/firebase_options.dart';
import 'package:saletick/screens/intro/intro_screen.dart';
import 'package:saletick/screens/subscriptions/subscription_plans_screen.dart';






Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  CustomAppBindings().dependencies();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp()); 
}




class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final productN = ProductModel(name: 'AdaPro', amount: '700', colors: [], unit: 33, unitSold: 0, unitAvailable: 33, shape: 'null', size: '1', type: 'null', material: 'null', length: '3', categories: ['red', 'Niger']);
    // final userN = UserModel(firstName: 'Chinaza', surname: 'Ababa', email: 'chi@gmail.com', isAdmin: false, phoneNumber: '0907378272882', position: 'Sales Rep', dateEmployed: '12th Jan, 2024', imageUrl: '', myAdminEmailAddress: '', mySales:[] );
    // final salesN = SalesModel(product: {}, whoSoldIt: 'Ugwu Rose', unitSold: 23, totalAmount: '43,400', productName: 'MemPack', time: '12:45 pm', date: '22/2/23', dateCreated: DateTime.now(), soldTo: 'Emeka Abasili');

    return GetMaterialApp(   
      debugShowCheckedModeBanner: false,
      // scrollBehavior: MyCustomScrollBehavior(),
      getPages: Routes.saletickRoutes,  
      theme: ThemeData(
        primarySwatch: Colors.purple,
        fontFamily: 'Georgia',
      ),
      // home: Scaffold(body: SingleChildScrollView(child: AdminSalesSummaryPopupWidget())),
      // home: SubscriptionPlansScreen(),
      // home: IntroScreen(),
    );
  }
}