import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:saletick/app_constants/routes.dart';
import 'package:saletick/bindings/custom_bindings.dart';
import 'package:saletick/firebase_options.dart';



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
      getPages: Routes.saletickRoutes,  
      theme: ThemeData(
        primarySwatch: Colors.purple,
        fontFamily: 'Georgia',
      ),
      // home: AddNewProductScreen(),
    );
  }
}