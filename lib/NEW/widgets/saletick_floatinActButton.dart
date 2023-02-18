import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:saletick/NEW/widgets/translucent_popup_widget.dart';
import 'package:saletick/app_constants/app_dimensions.dart';
import 'package:saletick/app_constants/dimensions2.dart';
import 'package:saletick/utilities/utils.dart';

class SaletickFloatingActionButton extends StatefulWidget {
  const SaletickFloatingActionButton({super.key});

  @override
  State<SaletickFloatingActionButton> createState() => _SaletickFloatingActionButtonState();
}

class _SaletickFloatingActionButtonState extends State<SaletickFloatingActionButton> {

  bool isTapped = false;
  // BuildContext? popContext;


  void showTranslucentPopup() {
    showDialog(
      context: context,
      builder: (context) {
        return const TranslucentPopupWidget();
      },
      barrierColor: Colors.transparent,
      // barrierDismissible: false,
    );
  }
  

  @override
  Widget build(BuildContext context) {
    
    return FloatingActionButton.extended(
      onPressed: () {
        // calling the popup widget
        showTranslucentPopup();       
      }, 
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5*Dimensions2.fem),
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
      label: SizedBox(
        width: 75*Dimensions2.fem,
        height: 73*Dimensions2.fem,
        child: Container(
          margin: EdgeInsets.only(bottom: Dimensions.size15),
          decoration: BoxDecoration (
            borderRadius: BorderRadius.circular(5*Dimensions2.fem),
            gradient: const LinearGradient (
              begin: Alignment(0, -1),
              end: Alignment(0, 1),
              colors: <Color>[Color(0xff8f7aff), Color(0xff74caff)],
              stops: <double>[0, 1],
            ),
            boxShadow: [
              BoxShadow(
                color: Color(0x1c22092e),
                offset: Offset(0*Dimensions2.fem, 2*Dimensions2.fem),
                blurRadius: 5*Dimensions2.fem,
              ),
            ],
          ),
          child:  SizedBox(
            width: 28*Dimensions2.fem,
            height: 59*Dimensions2.fem,
            child: Center(
              // if action button is tapped, show a different icon and size
              child: Text(
                true? '+' : 'x',
                style: SafeGoogleFont (
                  'Montserrat',
                  fontSize: true? 48*Dimensions2.fem : 39*Dimensions2.ffem,
                  fontWeight: FontWeight.w500,
                  height: 1.2175*Dimensions2.ffem/Dimensions2.fem,
                  color: Color(0xffffffff),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
