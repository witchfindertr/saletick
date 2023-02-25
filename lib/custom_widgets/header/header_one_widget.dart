import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:saletick/app_constants/app_dimensions.dart';
import 'package:saletick/app_constants/dimensions2.dart';
import 'package:saletick/controllers/auth_controller.dart';
import 'package:saletick/utilities/utils.dart';

class SaletickHeaderOne extends GetView<AuthController> {
  final String headerOneTitleText;
  
  const SaletickHeaderOne({super.key, required this.headerOneTitleText});

  @override
  Widget build(BuildContext context) {
    
    return Container(
      width: double.infinity,
      child: Container(
        width: double.infinity,
        decoration: const BoxDecoration (
          color: Color(0xffffffff),
          gradient: RadialGradient (
            center: Alignment(0.917, 0.862),
            radius: 1.31,
            colors: <Color>[Color(0x0c8c7bff), Color(0x0c69059c), Color(0x0c8f7aff)],
            stops: <double>[0, 1, 1],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              width: 391.5*Dimensions2.fem,
              height: 171.89*Dimensions2.fem,
              child: Stack(
                children: [
                  // This Position is The Image: which is the curved header                  
                  Positioned(
                    left: 0*Dimensions2.fem,
                    top: 0*Dimensions2.fem,
                    child: Align(
                      child: SizedBox(
                        width: 391.5*Dimensions2.fem,
                        height: 171.89*Dimensions2.fem,
                        child: Image.asset(
                          'assets/images/rectangle-11-VAp.png',
                          width: 391.5*Dimensions2.fem,
                          height: 171.89*Dimensions2.fem,
                        ),
                      ),
                    ),
                  ),                  
                  // This Positioned Widget Houses the Container where the profile pic & online dot is
                  Positioned(
                    left: 26*Dimensions2.fem,
                    top: 18*Dimensions2.fem,
                    child: Container(
                      width: 60*Dimensions2.fem,
                      height: 57*Dimensions2.fem,
                      child: Stack(
                        children: [
                          // The image
                          Positioned(
                            left: 0*Dimensions2.fem,
                            top: 0*Dimensions2.fem,
                            child: Align(
                              child: SizedBox(
                                width: 57*Dimensions2.fem,
                                height: 57*Dimensions2.fem,
                                // if imageUrl is empty use default avatar image for profile
                                child: (controller.usersProfileImage.value.isEmpty)? Container(
                                  decoration: BoxDecoration (
                                    borderRadius: BorderRadius.circular(28.5*Dimensions2.fem),
                                    image: const DecorationImage (
                                      fit: BoxFit.cover,
                                      image: AssetImage (
                                        'assets/images/avatar.png',
                                      ),
                                    ),
                                  ),
                                ) : Obx(() {
                                    return Container(
                                      decoration: BoxDecoration (
                                        borderRadius: BorderRadius.circular(28.5*Dimensions2.fem),
                                        image: DecorationImage (
                                          fit: BoxFit.cover,
                                          image: NetworkImage (
                                            controller.usersProfileImage.value,
                                          ),
                                        ),
                                      ),
                                    );
                                  }
                                ),
                              ),
                            ),
                          ),
                          // The Green active dot
                          Positioned(
                            left: 40*Dimensions2.fem,
                            top: 37*Dimensions2.fem,
                            child: Align(
                              child: SizedBox(
                                width: 15*Dimensions2.fem,
                                height: 15*Dimensions2.fem,
                                child: Container(
                                  decoration: BoxDecoration (
                                    borderRadius: BorderRadius.circular(10*Dimensions2.fem),
                                    border: Border.all(color: Color(0xffffffff)),
                                    color: Color(0xff00a660),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Color(0x19000000),
                                        offset: Offset(0*Dimensions2.fem, 2*Dimensions2.fem),
                                        blurRadius: 2.5*Dimensions2.fem,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  // The Hamburger icon at the top right
                  Positioned(
                    left: 325*Dimensions2.fem,
                    top: 31*Dimensions2.fem,
                    child: PopupMenuButton<int>(
                      color: const Color(0xFFFAF4F4),
                      elevation: 2,
                      onSelected: ((value) {
                        if(value == 1){
                          print('Clicked on MySales'); 
                          //See my Sales   
                          // Get.to(SeeMySalesScreen(user: controller.currentUserData));
                          // controller.getCurrentUserDetails();              
                        }else if(value == 2){
                          // go to my expenses                   
                        }else if(value == 3){
                          // calling logOut function
                          controller.signOutUser();                      
                        }
                      }),
                      itemBuilder: (context) {
                        return [
                          // My Sales
                          PopupMenuItem(
                            value: 1,
                            child: Row(
                            children: [
                              const Icon(Icons.stacked_line_chart_rounded),
                              SizedBox(width: Dimensions.size5),
                              const Text("My Sales"),
                            ]),
                          ),
                          // My Expenses
                          PopupMenuItem(
                            value: 2,
                            child: Row(
                            children: [
                              const Icon(Icons.money_off),
                              SizedBox(width: Dimensions.size5),
                              const Text("My Expenses"),
                            ]),
                          ),
                          // Logout
                          PopupMenuItem(
                            value: 3,
                            child: Row(
                            children: [
                              const Icon(Icons.logout),
                              SizedBox(width: Dimensions.size5),
                              const Text("Log Out"),
                            ]),
                          ),
                        ];
                      },
                      // child of the menu popup widget, which signifies the widget to be shown
                      child: Container(
                        width: 29*Dimensions2.fem,
                        height: 31*Dimensions2.fem,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(0*Dimensions2.fem, 0*Dimensions2.fem, 0*Dimensions2.fem, 10*Dimensions2.fem),
                              width: double.infinity,
                              height: 4*Dimensions2.fem,
                              decoration: const BoxDecoration (
                                color: Color(0xff550080),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(0*Dimensions2.fem, 0*Dimensions2.fem, 0*Dimensions2.fem, 9*Dimensions2.fem),
                              width: double.infinity,
                              height: 4*Dimensions2.fem,
                              decoration: const BoxDecoration (
                                color: Color(0xff550080),
                              ),
                            ),
                            Container(
                              width: double.infinity,
                              height: 4*Dimensions2.fem,
                              decoration: const BoxDecoration (
                                color: Color(0xff550080),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  // WELCOME text & NAME
                  Positioned(                     
                    left: 120*Dimensions2.fem,
                    top: 39*Dimensions2.fem,
                    child: Align(
                      child: Container(
                        width: 180*Dimensions2.fem,
                        height: 25*Dimensions2.fem,
                        // color: Colors.red,
                        child: RichText(
                          text: TextSpan(
                            style: SafeGoogleFont (
                              'Montserrat',
                              fontSize: 12*Dimensions2.ffem,
                              fontWeight: FontWeight.w700,
                              height: 1.2175*Dimensions2.ffem/Dimensions2.fem,
                              color: Color(0xffffffff),
                            ),
                            children: [
                              TextSpan(
                                text: 'Welcome,',
                              ),
                              TextSpan(
                                text: ' ${controller.currentUserData.firstName}!', // first name at header
                                style: SafeGoogleFont (
                                  'Montserrat',
                                  fontSize: 20*Dimensions2.fem,
                                  fontWeight: FontWeight.w700,
                                  height: 1.2175*Dimensions2.ffem/Dimensions2.fem,
                                  color: Color(0xffffffff),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  // The Person Icon & The Header Text eg Inventory
                  Positioned(
                    left: 92*Dimensions2.fem,
                    top: 131*Dimensions2.fem,
                    child: Align(
                      child: SizedBox(
                        width: 120*Dimensions2.fem,
                        height: 24*Dimensions2.fem,
                        child: Text(
                          headerOneTitleText, // title Text eg. 'Inventory',
                          style: SafeGoogleFont (
                            'Poppins',
                            fontSize: 16*Dimensions2.ffem,
                            fontWeight: FontWeight.w700,
                            height: 1.5*Dimensions2.ffem/Dimensions2.fem,
                            color: Color(0xffffffff),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 60.625*Dimensions2.fem,
                    top: 129.8125*Dimensions2.fem,
                    child: Align(
                      child: SizedBox(
                        width: 21.75*Dimensions2.fem,
                        height: 25.38*Dimensions2.fem,
                        child: Image.asset(
                          'assets/images/avatar-default-svgrepo-com-1-VDJ.png',
                          width: 21.75*Dimensions2.fem,
                          height: 25.38*Dimensions2.fem,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),            
          ],
        ),
      ),
    );
  }
}