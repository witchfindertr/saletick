import 'package:flutter/material.dart';
import 'package:saletick/app_constants/app_colors.dart';
import 'package:saletick/app_constants/app_dimensions.dart';
import 'package:saletick/app_constants/dimensions2.dart';
import 'package:saletick/utilities/utils.dart';

class SaletickBottomNavBar extends StatelessWidget {
  final bool isOverview;
  final bool isInventory;
  final bool isStaffMgt;
  final bool isSettings;
  
  const SaletickBottomNavBar({super.key, this.isOverview=false, this.isInventory=false, this.isStaffMgt=false, this.isSettings=false});

  @override
  Widget build(BuildContext context) {

    return BottomAppBar(
      elevation: 0.0,
      color: Colors.grey,
      child: Container(
        width: 390*Dimensions2.fem,
        height: 126*Dimensions2.fem,
        decoration: const BoxDecoration(
          color: Colors.white,
          image: DecorationImage(
            image: AssetImage('assets/images/vector-2-5Sg.png'),
            fit: BoxFit.fill
          ),
        ),
        child:  Row(
          children: [
            // Overview
            Expanded(
              child: InkWell(
                onTap: (){print("Hello");},
                child: Column(
                  children: [
                    SizedBox(height: Dimensions.size60),
                    Icon(
                      Icons.store_mall_directory_outlined,
                      color: isOverview? AppColors.mainColor :AppColors.bottomNavInactive,
                    ),
                    SizedBox(height: Dimensions.size5),
                    Text(
                      'Overview',
                      textAlign: TextAlign.center,
                      style: SafeGoogleFont (
                        'Montserrat',
                        fontSize: Dimensions.size10,
                        fontWeight: FontWeight.w700,
                        color: isOverview? AppColors.mainColor :AppColors.bottomNavInactive,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // Inventory
            Expanded(
              child: InkWell(
                onTap: (){print("Hello");},
                child: Column(
                  children: [
                    SizedBox(height: Dimensions.size60),
                    Icon(
                      Icons.spoke_outlined,
                      color: isInventory? AppColors.mainColor :AppColors.bottomNavInactive,
                    ),
                    SizedBox(height: Dimensions.size5),
                    Text(
                      'Inventory',
                      textAlign: TextAlign.center,
                      style: SafeGoogleFont (
                        'Montserrat',
                        fontSize: Dimensions.size10,
                        fontWeight: FontWeight.w700,
                        color: isInventory? AppColors.mainColor :AppColors.bottomNavInactive,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // Staff Management
            Expanded(
              child: InkWell(
                onTap: (){print("Hello");},
                child: Column(
                  children: [
                    SizedBox(height: Dimensions.size60),
                    Icon(
                      Icons.groups,
                      color: isStaffMgt? AppColors.mainColor : AppColors.bottomNavInactive,
                    ),
                    SizedBox(height: Dimensions.size5),
                    Text(
                      'Staff\nManagement',
                      textAlign: TextAlign.center,
                      style: SafeGoogleFont (
                        'Montserrat',
                        fontSize: Dimensions.size10,
                        fontWeight: FontWeight.w700,
                        color: isStaffMgt? AppColors.mainColor :AppColors.bottomNavInactive,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // Settings
            Expanded(
              child: InkWell(
                onTap: (){print("Hello");},
                child: Column(
                  children: [
                    SizedBox(height: Dimensions.size60),
                    Icon(
                      Icons.miscellaneous_services_outlined,
                      color: isSettings? AppColors.mainColor :AppColors.bottomNavInactive,
                    ),
                    SizedBox(height: Dimensions.size5),
                    Text(
                      'Settings',
                      textAlign: TextAlign.center,
                      style: SafeGoogleFont (
                        'Montserrat',
                        fontSize: Dimensions.size10,
                        fontWeight: FontWeight.w700,
                        color: isSettings? AppColors.mainColor :AppColors.bottomNavInactive,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),            
      ),
    );
  }
}