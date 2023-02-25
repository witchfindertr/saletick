import 'package:get/get.dart';
import 'package:saletick/controllers/chart_controller.dart';
import 'package:saletick/screens/auth_screens/register_screen.dart';
import 'package:saletick/screens/auth_screens/sign_in_screen.dart';
import 'package:saletick/screens/dashboard/admin_sales_summary.dart';
import 'package:saletick/screens/home/inventory_category_list.dart';
import 'package:saletick/screens/intro/intro_screen.dart';
import 'package:saletick/screens/intro/splash_screen.dart';
import 'package:saletick/screens/products/add_new_product.dart';


class Routes {

  static List<GetPage> saletickRoutes =  [
    // splash screen
    GetPage(
      name: '/',
      page: () => const SplashScreen(),     
    ),
    // Get started screen
    GetPage(
      name: IntroScreen.routeName,
      page: () => const IntroScreen(),
      transition: Transition.fade,   
      transitionDuration: const Duration(seconds: 3),   
    ),
    // Home screen
    GetPage(
      name: InventoryCategoryListScreen.routeName,
      page: () => InventoryCategoryListScreen(),
      transition: Transition.circularReveal,   
      transitionDuration: const Duration(seconds: 2),   
      binding: BindingsBuilder.put(() => ChartController()) 
    ),
    // signin screen
    GetPage(
      name: SignInScreen.routeName,
      page: () => SignInScreen(),
      transition: Transition.fade,      
    ),
    // register screen
    GetPage(
      name: RegisterScreen.routeName,
      page: () => const RegisterScreen(),
      transition: Transition.fade,      
    ),
    // Create A New Product
    GetPage(
      name: AdminSalesSummaryScreen.routeName,
      page: () => const AdminSalesSummaryScreen(),
      transition: Transition.fade,  
      binding: BindingsBuilder.put(() => ChartController())
    ),
  ];
}