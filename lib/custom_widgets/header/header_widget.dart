import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:saletick/app_constants/app_colors.dart';
import 'package:saletick/app_constants/app_dimensions.dart';
import 'package:saletick/app_constants/custom_text_styles.dart';
import 'package:saletick/controllers/auth_controller.dart';
import 'package:saletick/screens/dashboard/see_my_sales_screen.dart';



class HeaderWidget extends GetView<AuthController> {
  final bool isSecondHeader;

  const HeaderWidget({Key? key, this.isSecondHeader = false}) : super(key: key);


  @override
  Widget build(BuildContext context) {

    return Material(
      elevation: 2.0,
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: Dimensions.size5, vertical: Dimensions.size15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            if(!isSecondHeader)
              Image.asset(
                  "lib/assets/images/logo.png",
                  width: Dimensions.size45*1.5,
                  height: Dimensions.size45*1.5,
              ),
            if(isSecondHeader)
              Column(
                children: [
                  Text(''),
                  SizedBox(height: Dimensions.size20),
                  Row(
                    children: [
                      // welcome text
                      Text(
                        'Welcome, ',
                        style: headline5,
                      ),
                      // Name
                      Container(
                        width: Dimensions.size100*2,
                        child: Text(
                          controller.currentUserData.firstName.toUpperCase(), // name at header
                          style: headline3.copyWith(color: AppColors.mainTextColor2),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            Row(
              children: [
                Obx(() {
                    return CircleAvatar(
                      radius: Dimensions.size20*1.4,
                      backgroundImage: const AssetImage('lib/assets/images/avatar.png'),
                      foregroundImage: NetworkImage(controller.usersProfileImage.value),
                    );
                  }
                ),             
                PopupMenuButton<int>(
                  color: const Color(0xFFFAF4F4),
                  elevation: 2,
                  onSelected: ((value) {
                    if(value == 1){
                      print('Clicked on MySales'); 
                      //See my Sales   
                      Get.to(SeeMySalesScreen(user: controller.currentUserData));
                      controller.getCurrentUserDetails();              
                    }else if(value == 2){
                      // calling logOut function
                      controller.signOutUser();                      
                    }
                  }),
                  itemBuilder: (context) {
                    return [
                      // Notifications
                      PopupMenuItem(
                        value: 1,
                        child: Row(
                        children: [
                          const Icon(Icons.stacked_line_chart_rounded),
                          SizedBox(width: Dimensions.size5),
                          const Text("My Sales"),
                        ]),
                      ),
                      // Logout
                      PopupMenuItem(
                        value: 2,
                        child: Row(
                        children: [
                          const Icon(Icons.logout),
                          SizedBox(width: Dimensions.size5),
                          const Text("Log Out"),
                        ]),
                      ),
                    ];
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}