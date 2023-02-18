import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:saletick/NEW/READY_SCREENS/staff_details_screen.dart';
import 'package:saletick/NEW/add_staff_screen.dart';
import 'package:saletick/NEW/add_to_inventory.dart';
import 'package:saletick/NEW/admin_sales_summary.dart';
import 'package:saletick/NEW/admin_sales_summary_pop_widget.dart';
import 'package:saletick/NEW/inventory_category_list.dart';
import 'package:saletick/NEW/inventory_list_dropdown.dart';
import 'package:saletick/NEW/inventory_list_popup_widget.dart';
import 'package:saletick/NEW/sign_in_screen.dart';
import 'package:saletick/NEW/staff_list_screen.dart';
import 'package:saletick/NEW/test.dart';
import 'package:saletick/NEW/READY_SCREENS/transaction_details_screen.dart';
import 'package:saletick/NEW/transaction_history_list_screen.dart';
import 'package:saletick/app_constants/routes.dart';
import 'package:saletick/bindings/custom_bindings.dart';
import 'package:saletick/firebase_options.dart';
import 'package:saletick/screens/dashboard/admin.dart';
import 'package:saletick/screens/intro/intro_screen.dart';
import 'package:saletick/screens/intro/splash_screen.dart';




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
    return GetMaterialApp(   
      debugShowCheckedModeBanner: false,
      // scrollBehavior: MyCustomScrollBehavior(),
      // getPages: Routes.saletickRoutes,  
      theme: ThemeData(
        primarySwatch: Colors.purple,
        fontFamily: 'Georgia',
      ),
      // home: Scaffold(body: SingleChildScrollView(child: StaffListScreen())),
      // home: TestScreen(),
      home: SignInScreen()
    );
  }
}