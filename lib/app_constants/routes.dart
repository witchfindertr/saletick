import 'package:get/get.dart';
import 'package:saletick/screens/auth_screens/login.dart';
import 'package:saletick/screens/auth_screens/register_screen.dart';
import 'package:saletick/screens/home/tarnor_home.dart';
import 'package:saletick/screens/intro/intro_screen.dart';
import 'package:saletick/screens/intro/splash_screen.dart';
import 'package:saletick/screens/products/add_new_product.dart';


class Routes {

  static List<GetPage> saletickRoutes =  [
    // splash screen
    GetPage(
      name: '/',
      page: () => const SplashScreen(),
      transition: Transition.fadeIn,      
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
      name: TanorHomeScreen.routeName,
      page: () => const TanorHomeScreen(),
      transition: Transition.fadeIn,      
    ),
    // login screen
    GetPage(
      name: LoginScreen.routeName,
      page: () => const LoginScreen(),
      transition: Transition.fade,      
    ),
    // register screen
    GetPage(
      name: RegisterScreen.routeName,
      page: () => RegisterScreen(),
      transition: Transition.fade,      
    ),
    // Create A New Product
    GetPage(
      name: AddNewProductScreen.routeName,
      page: () => const AddNewProductScreen(),
      transition: Transition.fade,      
    ),
  ];
}