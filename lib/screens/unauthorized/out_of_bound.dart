import 'package:flutter/material.dart';
import 'package:saletick/app_constants/app_colors.dart';
import 'package:saletick/app_constants/app_dimensions.dart';
import 'package:saletick/app_constants/dimensions2.dart';
import 'package:saletick/utilities/utils.dart';

class OutOfBoundForStaffScreen extends StatelessWidget {
  const OutOfBoundForStaffScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.saletickScaffoldColor,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: Dimensions.size20),
          child: Column(
            children: [
              SizedBox(height: Dimensions.size100),
              Container(
                margin: EdgeInsets.fromLTRB(0*Dimensions2.fem, 0*Dimensions2.fem, 0*Dimensions2.fem, 30*Dimensions2.fem),
                width: 336*Dimensions2.fem,
                height: 257*Dimensions2.fem,
                child: Image.asset(
                  'assets/images/outOfBound.png',
                ),
              ),
              SizedBox(height: Dimensions.size5),
              Text(
                'Oops . . . this screen can only be viewed by your Boss !',
                textAlign: TextAlign.center,
                style: SafeGoogleFont (
                  'Montserrat',
                  fontSize: 26*Dimensions2.ffem,
                  fontWeight: FontWeight.w700,
                  height: 1.2175*Dimensions2.ffem/Dimensions2.fem,
                  color: AppColors.mainColor2,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}