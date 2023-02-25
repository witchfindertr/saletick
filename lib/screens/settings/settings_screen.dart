import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:saletick/custom_widgets/header/header_one_widget.dart';
import 'package:saletick/custom_widgets/footer/saletick_bottom_nav_bar.dart';
import 'package:saletick/app_constants/app_colors.dart';
import 'package:saletick/app_constants/app_dimensions.dart';
import 'package:saletick/app_constants/custom_text_styles.dart';
import 'package:saletick/screens/auth_screens/update_profile_screen.dart';


class SettingsScreen extends StatelessWidget {

  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          const SaletickHeaderOne(headerOneTitleText: 'Settings'),
          // List of Options in the Settings
          SizedBox(height: Dimensions.size40),
          // Our custom widget (A function)
          settingsCard(
            text: 'Update Profile Image',
            onTap: () =>  Get.to(const UpdateProfileScreen()),
          ),
          SizedBox(height: Dimensions.size15),
          // Our custom widget
          settingsCard(
            text: 'Notifications',
            onTap: () {},
          ),           
        ],
      ),
      bottomNavigationBar: const SaletickBottomNavBar(isSettings: true),
    );
  }


  Widget settingsCard({required String text, required VoidCallback onTap}){
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: Dimensions.size20),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: Dimensions.size30, vertical: Dimensions.size15),
          width: double.infinity,
          decoration: BoxDecoration(
            color: AppColors.mainColorLight.withOpacity(0.2),
            borderRadius: BorderRadius.circular(Dimensions.size9),
          ),
          child: Text(
            text, //'Update Profile Image',
            style: headline4.copyWith(color: AppColors.mainColor.withOpacity(0.5))
          ),
        ),
      ),
    );
  }



}