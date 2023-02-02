import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:saletick/app_constants/app_colors.dart';
import 'package:saletick/app_constants/custom_text_styles.dart';
import 'package:saletick/controllers/auth_controller.dart';
import 'package:saletick/screens/dashboard/admin.dart';
import 'package:saletick/screens/dashboard/staff_list_screen.dart';
import 'package:saletick/screens/products/inventory_list_screen.dart';
import 'package:saletick/screens/settings_screen.dart';


class TanorHomeScreen extends StatefulWidget {
  const TanorHomeScreen({ Key? key }) : super(key: key);

  static const String routeName = '/home';

  @override
  State<TanorHomeScreen> createState() => _TanorHomeScreenState();
}
   
class _TanorHomeScreenState extends State<TanorHomeScreen> {

  int pageIndex = 1;

  List pages = [
    const AdminScreen(),
    const InventoryListScreen(),
    const StaffListScreen(),
    const SettingsScreen()
  ];

  // instance of authController
  AuthController _authController = Get.find<AuthController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[pageIndex],
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: AppColors.tarnorTextColor,
        selectedItemColor: AppColors.mainColor,
        selectedLabelStyle: headline5,
        currentIndex: pageIndex,
        onTap: (index){
          setState(() {
            pageIndex = index;
          });
          
        },
        items:  const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.stacked_line_chart_rounded,
            ),
            label: "Sales summary",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.spoke_outlined),
            label: "Inventory",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.groups_rounded),
            label: "Staff Management",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.miscellaneous_services_outlined),
            label: "Settings",
          ),
        ],
      ),
    );

  }

}