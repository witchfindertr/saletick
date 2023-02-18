import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:saletick/NEW/widgets/header_one_widget.dart';
import 'package:saletick/NEW/widgets/header_two_widget.dart';
import 'package:saletick/NEW/widgets/item_card_widget.dart';
import 'package:saletick/NEW/widgets/saletick_bottom_nav_bar.dart';
import 'package:saletick/NEW/widgets/saletick_floatinActButton.dart';
import 'package:saletick/NEW/widgets/search_input_widget.dart';
import 'package:saletick/NEW/widgets/staff_card.dart';
import 'package:saletick/NEW/widgets/translucent_popup_widget.dart';
import 'package:saletick/NEW/widgets/trasaction_card.dart';
import 'package:saletick/app_constants/app_colors.dart';
import 'package:saletick/app_constants/app_dimensions.dart';
import 'package:saletick/app_constants/dimensions2.dart';
import 'package:saletick/custom_widgets/buttons/main_button.dart';
import 'package:saletick/custom_widgets/inputs/input_field_plus_text.dart';
import 'package:saletick/utilities/feedback.dart';
import 'package:saletick/utilities/utils.dart';
import 'package:uuid/uuid.dart';


class TestScreen extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SaletickHeaderTwo(),
            SizedBox(height: 40),        
            // ItemCardWidget(
            //   productName: 'Abachca',
            //   dateSold: '3 March, 2023',
            //   nameOfWhoSoldIt: 'Ugwuoke Chinaza',
            //   unitsRemaining: 45,
            // ),
            // // SizedBox(height: 21),
            //   TransactionCard(
            //   time: '2:00:00pm', 
            //   date: '15 February, 2023', 
            //   unitsSold: '12 items', 
            //   amount: '4,300', 
            //   nameOfProduct: 'Nsukka Chocolate', 
            //   nameOfSalesRep: 'Ugwuoke Chinaza',
            // ),
            // TranslucentPopupWidget(),
             SizedBox(height: 120),
            Text("Hello"),
             SizedBox(height: 120),
            Text("Hello"),
             SizedBox(height: 120),
            Text("Hello"),
            SizedBox(height: 20,),
            MainButton(
              onPressed: (){
                print("I am alive");
                var random = Uuid();
                var n1 = random.v1();
                
                print("UNIQUE: $n1");
                // UserFeedBack.showSuccess(
                //   buttonText: 'Go to Home',
                //   infoMessage: 'How are you trying to get your way with everything you come in contact with',
                //   onTap: (){print("I am on my way home!"); Get.back();}
                // );
                UserFeedBack.showConfirmation(
                  confirmQuestion: 'What do you think you are trying to do?',
                  onConfirm: () {
                    print("Confirmed");
                  },
                );
              }, 
              text: "Register Here"
            ),
            SizedBox(height: 20,),
            SearchInputWidget(onTapped: () {
              print("I am searching now . . .");
            }),
            SizedBox(height: 40,),
            // staff card
            const StaffCardWidget(
              staffFirstName: 'Chinaza',
              staffLastName: 'Ugwuoke',
              profileImage: 'assets/images/ellipse-11-bg-mix.png',
            ),
            SizedBox(height: 40,),
            // Align(
            //   alignment: Alignment.bottomCenter,
            //   child: Container(
            //   width: 390*fem,
            //   height: 126*fem,
            //   decoration: BoxDecoration(
            //     color: Colors.white,
            //     image: DecorationImage(
            //       image: AssetImage('assets/images/vector-2-5Sg.png'),
            //     ),
            //   ),
            //   child:  Row(
            //     children: [
            //       Text("Staff Control")
            //     ],
            //   ),            
            // )),

   
            
            // SizedBox(height: 300,) 
            
          ],
        ),
      ),
      floatingActionButton: SaletickFloatingActionButton(),
      bottomNavigationBar: SaletickBottomNavBar(isSettings: true),
    );
  }
}



