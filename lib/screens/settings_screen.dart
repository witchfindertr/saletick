import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:saletick/app_constants/app_dimensions.dart';
import 'package:saletick/custom_widgets/header/header_widget.dart';
import 'package:saletick/custom_widgets/lists/staff_row_widget.dart';
import 'package:saletick/custom_widgets/texts/text_n_divider_header.dart';
import 'package:saletick/screens/auth_screens/update_profile_screen.dart';


class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          const HeaderWidget(),
          const TextnDividerHeader(text: 'Settings'),
          // List of Options in the Settings
          MediaQuery.removePadding(
            context: context,
            removeTop: true,
            child: ListView(
              shrinkWrap: true,
              children: [
                SizedBox(height: Dimensions.size5),
                // Password
                InkWell(
                  onTap: (){
                    Get.to(const UpdateProfileScreen());
                  },
                  child: StaffRowWidget(text: 'Update Profile Image'),
                ),
                // Separator
                Column(
                  children: [
                    SizedBox(height: Dimensions.size5),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: Dimensions.size20),
                      child: Divider(height: Dimensions.size9, thickness: 1),
                    ),
                  ],
                ),
                // Notifications
                InkWell(
                  onTap: (){},
                  child: StaffRowWidget(text: 'Notifications'),
                ),
                // Separator
                Column(
                  children: [
                    SizedBox(height: Dimensions.size5),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: Dimensions.size20),
                      child: Divider(height: Dimensions.size9, thickness: 1),
                    ),
                  ],
                ),
                // Theme
                InkWell(
                  onTap: (){},
                  child: StaffRowWidget(text: 'Theme'),
                ),
                //separator
                Column(
                  children: [
                    SizedBox(height: Dimensions.size5),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: Dimensions.size20),
                      child: Divider(height: Dimensions.size9, thickness: 1),
                    ),
                  ],
                ),
              ],            
            ),
          ),           
        ],
      ),
    );
  }
}