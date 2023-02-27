import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:saletick/app_constants/app_dimensions.dart';
import 'package:saletick/app_constants/dimensions2.dart';
import 'package:saletick/controllers/auth_controller.dart';
import 'package:saletick/screens/dashboard/all_expenses_list_screen.dart';
import 'package:saletick/screens/dashboard/create_new_staff_screen.dart';
import 'package:saletick/screens/transactions/make_expenses.dart';
import 'package:saletick/screens/products/add_products_to_inventory.dart';
import 'package:saletick/screens/settings/settings_screen.dart';
import 'package:saletick/utilities/feedback.dart';
import 'package:saletick/utilities/utils.dart';
import 'package:uuid/uuid.dart';

class TranslucentPopupWidget extends StatefulWidget {

  final bool isAddStaff;
  final bool isAddSale;
  final bool isAddToInventory;
  final bool isSettings;
  final bool isDownload;
  final bool isDelete;
  final bool isExpenses;
  
  const TranslucentPopupWidget({
    super.key, 
    this.isAddStaff = false, 
    this.isAddSale = false, 
    this.isAddToInventory = false,
    this.isSettings = false, 
    this.isDownload = false, 
    this.isDelete = false,
    this.isExpenses = false
  });

  @override
  State<TranslucentPopupWidget> createState() => _TranslucentPopupWidgetState();
}

class _TranslucentPopupWidgetState extends State<TranslucentPopupWidget> with TickerProviderStateMixin {

  // Animation Controller
  late AnimationController controller;

  // Auth Controller
  var authController = Get.find<AuthController>();
  
  double _bottom = 0, _fromTop = Dimensions.size100*3, _screenHeight = Dimensions.screenHeight, _containerHeight = Dimensions.size100*3;

   @override
  void initState() {
    super.initState();
    controller = AnimationController(duration: const Duration(milliseconds: 300), vsync: this)
      ..addListener(() {
        Timer.periodic(Duration(milliseconds: 15), (timer) {
          if (_bottom < _screenHeight - _fromTop - Dimensions.size100*3) {
            _bottom += 1;
            setState(() {});
          }
        });
      });
    controller.forward();
  }


   @override
    void dispose() {
      controller.dispose();
      super.dispose();
    }

  @override
  Widget build(BuildContext context) {

    return Stack(
      children: [
        Positioned(
          bottom: _bottom,
          left: 0,
          right: 0,
          child:  ClipRect(
            child: BackdropFilter(
              filter: ImageFilter.blur (
                sigmaX: 11.5*Dimensions2.fem,
                sigmaY: 11.5*Dimensions2.fem,
              ),
              child: Align(
                alignment: Alignment.centerRight,
                child: Container(
                  width: 232*Dimensions2.fem,
                  height: widget.isSettings && widget.isAddStaff? 180*Dimensions2.fem : 234*Dimensions2.fem,
                  margin: EdgeInsets.only(right: 12*Dimensions2.fem),
                  child: Container(
                    decoration: BoxDecoration (
                      borderRadius: BorderRadius.circular(8*Dimensions2.fem),
                      gradient: const LinearGradient (
                        begin: Alignment(-1, -0.237),
                        end: Alignment(0.693, -0.373),
                        colors: <Color>[Color(0x3a5b44d5), Color(0x3a62c3ff)],
                        stops: <double>[0, 1],
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: Dimensions.size15, vertical: Dimensions.size20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [                      
                          // ADD STAFF
                          if(widget.isAddStaff)
                            GestureDetector(
                              onTap: (){
                                Get.to(const CreateNewStaffScreen());
                              },
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      // image
                                      SizedBox(
                                        width: 21.75*Dimensions2.fem,
                                        height: 25.38*Dimensions2.fem,
                                        child: Image.asset(
                                          'assets/images/avatar-default-svgrepo-com-1-xPr.png',
                                          width: 21.75*Dimensions2.fem,
                                          height: 25.38*Dimensions2.fem,
                                        ),
                                      ),
                                      SizedBox(width: Dimensions.size10),
                                      // text
                                      SizedBox(
                                        width: 57*Dimensions2.fem,
                                        height: 18*Dimensions2.fem,
                                        child: Text(
                                          'Add Staff',
                                          style: SafeGoogleFont (
                                            'Poppins',
                                            fontSize: 12*Dimensions2.ffem,
                                            fontWeight: FontWeight.w700,
                                            height: 1.5*Dimensions2.ffem/Dimensions2.fem,
                                            color: Color(0xff352490),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: Dimensions.size10),
                                  // DIVIDER LINE
                                  SizedBox(
                                    width: double.infinity,
                                    height: 1*Dimensions2.fem,
                                    child: Container(
                                      decoration: const BoxDecoration (
                                        color: Color(0xffffffff),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            // ADD to SALE
                            if(widget.isAddSale)                            
                              GestureDetector(
                                onTap: (){
                                  UserFeedBack.showError("Click on any product you want to sell in order to get options to add it to sales");
                                },
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        // image
                                        SizedBox(
                                          width: 29.39*Dimensions2.fem,
                                          height: 31*Dimensions2.fem,
                                          child: Image.asset(
                                            'assets/images/sale-tag-for-online-shops-svgrepo-com-1.png',
                                            width: 29.39*Dimensions2.fem,
                                            height: 31*Dimensions2.fem,
                                          ),
                                        ),
                                        SizedBox(width: Dimensions.size10),
                                        // text
                                        SizedBox(
                                          width: 55*Dimensions2.fem,
                                          height: 18*Dimensions2.fem,
                                          child: Text(
                                            'Add Sale',
                                            style: SafeGoogleFont (
                                              'Poppins',
                                              fontSize: 12*Dimensions2.ffem,
                                              fontWeight: FontWeight.w700,
                                              height: 1.5*Dimensions2.ffem/Dimensions2.fem,
                                              color: Color(0xff352490),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: Dimensions.size10),
                                    // DIVIDER LINE
                                    SizedBox(
                                      width: double.infinity,
                                      height: 1*Dimensions2.fem,
                                      child: Container(
                                        decoration: const BoxDecoration (
                                          color: Color(0xffffffff),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            // SEE EXPENSES
                            if(widget.isExpenses)                            
                              GestureDetector(
                                onTap: (){
                                  Get.to(AllExpensesListScreen());
                                },
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        // image
                                        SizedBox(
                                          width: 29.39*Dimensions2.fem,
                                          height: 31*Dimensions2.fem,
                                          child: Image.asset(
                                            'assets/images/sale-tag-for-online-shops-svgrepo-com-1.png',
                                            width: 29.39*Dimensions2.fem,
                                            height: 31*Dimensions2.fem,
                                          ),
                                        ),
                                        SizedBox(width: Dimensions.size10),
                                        // text
                                        SizedBox(
                                          width: 103*Dimensions2.fem,
                                          height: 18*Dimensions2.fem,
                                          child: Text(
                                            'See Expenses',
                                            style: SafeGoogleFont (
                                              'Poppins',
                                              fontSize: 12*Dimensions2.ffem,
                                              fontWeight: FontWeight.w700,
                                              height: 1.5*Dimensions2.ffem/Dimensions2.fem,
                                              color: Color(0xff352490),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: Dimensions.size10),
                                    // DIVIDER LINE
                                    SizedBox(
                                      width: double.infinity,
                                      height: 1*Dimensions2.fem,
                                      child: Container(
                                        decoration: const BoxDecoration (
                                          color: Color(0xffffffff),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            // ADD to INVENTORY
                            if(widget.isAddToInventory)
                              GestureDetector(
                                onTap: (){
                                  if(authController.currentUserData.isAdmin){
                                    // Generating a unique code from UUID()
                                    var uuid = Uuid();
                                    var uniqueID = uuid.v1();
                                    Get.to(AddProductsToInventory(uniqueProductId: "PID_$uniqueID"));
                                  }else{
                                    UserFeedBack.showError("Only an Admin can add new products");
                                  }                                  
                                },
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        // image
                                        SizedBox(
                                          width: 29*Dimensions2.fem,
                                          height: 23.97*Dimensions2.fem,
                                          child: Image.asset(
                                            'assets/images/boxes-svgrepo-com-1-BqS.png',
                                            width: 29*Dimensions2.fem,
                                            height: 23.97*Dimensions2.fem,
                                          ),
                                        ),
                                        SizedBox(width: Dimensions.size10),
                                        // text
                                        SizedBox(
                                          width: 103*Dimensions2.fem,
                                          height: 18*Dimensions2.fem,
                                          child: Text(
                                            'Add to Inventory',
                                            style: SafeGoogleFont (
                                              'Poppins',
                                              fontSize: 12*Dimensions2.ffem,
                                              fontWeight: FontWeight.w700,
                                              height: 1.5*Dimensions2.ffem/Dimensions2.fem,
                                              color: Color(0xff352490),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: Dimensions.size10),
                                    // DIVIDER LINE
                                    SizedBox(
                                      width: double.infinity,
                                      height: 1*Dimensions2.fem,
                                      child: Container(
                                        decoration: const BoxDecoration (
                                          color: Color(0xffffffff),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            // SETTINGS
                            if(widget.isSettings)
                              GestureDetector(
                                onTap: (){
                                  Get.to(const SettingsScreen());
                                },
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        // image
                                        SizedBox(
                                          width: 29*Dimensions2.fem,
                                          height: 23.97*Dimensions2.fem,
                                          child: Image.asset(
                                            'assets/images/settings-svgrepo-com-1.png',
                                            width: 29*Dimensions2.fem,
                                            height: 23.97*Dimensions2.fem,
                                          ),
                                        ),
                                        SizedBox(width: Dimensions.size10),
                                        // text
                                        SizedBox(
                                          width: 103*Dimensions2.fem,
                                          height: 18*Dimensions2.fem,
                                          child: Text(
                                            'Settings',
                                            style: SafeGoogleFont (
                                              'Poppins',
                                              fontSize: 12*Dimensions2.ffem,
                                              fontWeight: FontWeight.w700,
                                              height: 1.5*Dimensions2.ffem/Dimensions2.fem,
                                              color: Color(0xff352490),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: Dimensions.size10),
                                    // DIVIDER LINE
                                    SizedBox(
                                      width: double.infinity,
                                      height: 1*Dimensions2.fem,
                                      child: Container(
                                        decoration: const BoxDecoration (
                                          color: Color(0xffffffff),
                                        ),
                                      ),
                                    ),         
                                  ],
                                ),
                              ),                             
                          // DOWNLOAD
                          if(widget.isDownload)  
                            Column(
                              children: [
                                Row(
                                  children: [
                                    // image
                                    SizedBox(
                                      width: 29*Dimensions2.fem,
                                      height: 23.97*Dimensions2.fem,
                                      child: Image.asset(
                                        'assets/images/download-1-svgrepo-com-2.png',
                                        width: 29*Dimensions2.fem,
                                        height: 23.97*Dimensions2.fem,
                                      ),
                                    ),
                                    SizedBox(width: Dimensions.size10),
                                    // text
                                    SizedBox(
                                      width: 103*Dimensions2.fem,
                                      height: 18*Dimensions2.fem,
                                      child: Text(
                                        'Download',
                                        style: SafeGoogleFont (
                                          'Poppins',
                                          fontSize: 12*Dimensions2.ffem,
                                          fontWeight: FontWeight.w700,
                                          height: 1.5*Dimensions2.ffem/Dimensions2.fem,
                                          color: Color(0xff352490),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: Dimensions.size10),
                                // DIVIDER LINE
                                SizedBox(
                                  width: double.infinity,
                                  height: 1*Dimensions2.fem,
                                  child: Container(
                                    decoration: const BoxDecoration (
                                      color: Color(0xffffffff),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          // ADD EXPENSES
                          GestureDetector(
                            onTap: (){
                              Get.to(const MakeExpensesScreen());
                            },
                            child: Row(
                              children: [
                                // image
                                SizedBox(
                                  width: 29*Dimensions2.fem,
                                  height: 23.97*Dimensions2.fem,
                                  child: Image.asset(
                                    'assets/images/sort-svgrepo-com 2.png',
                                    width: 29*Dimensions2.fem,
                                    height: 23.97*Dimensions2.fem,
                                  ),
                                ),
                                SizedBox(width: Dimensions.size10),
                                // text
                                SizedBox(
                                  width: 103*Dimensions2.fem,
                                  height: 18*Dimensions2.fem,
                                  child: Text(
                                    'Add Expenses',
                                    style: SafeGoogleFont (
                                      'Poppins',
                                      fontSize: 12*Dimensions2.ffem,
                                      fontWeight: FontWeight.w700,
                                      height: 1.5*Dimensions2.ffem/Dimensions2.fem,
                                      color: Color(0xff352490),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),                      
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}