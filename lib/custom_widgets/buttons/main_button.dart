import 'package:flutter/material.dart';
import 'package:saletick/app_constants/app_colors.dart';
import 'package:saletick/app_constants/app_dimensions.dart';
import 'package:saletick/app_constants/dimensions2.dart';
import 'package:saletick/utilities/utils.dart';


class MainButton extends StatelessWidget {

  final VoidCallback onPressed;
  final String text;
  final double? width;
  final double? height;
  final double? borderRadius;
  final bool isTripleGradient;

  
  const MainButton({Key? key, required this.onPressed, required this.text, this.width, this.height, this.borderRadius, this.isTripleGradient=false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return Material(
      child: InkWell(
        onTap: onPressed,
        child: Container(
          width: width??Dimensions.size100*3,
          height: height??Dimensions.size30*1.9,
          decoration: BoxDecoration (
            borderRadius: BorderRadius.circular(borderRadius?? 5*Dimensions2.fem),
            // want the gradient with 3 colors?
            gradient: isTripleGradient? const LinearGradient (
              begin: Alignment(-1, -1.075),
              end: Alignment(0.931, 0.613),
              colors: <Color>[AppColors.mainColorLight, Color(0xbc0081d1), Color(0xbc640893)],
              stops: <double>[0, 0.722, 1],
            ) : const LinearGradient (
              begin: Alignment(0, -1),
              end: Alignment(0, 1),
              colors: <Color>[AppColors.mainTextColor1, AppColors.mainTextColor2],
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
          child: Center(
            child: Text(
              text,
              style: SafeGoogleFont (
                'Montserrat',
                fontSize: 16*Dimensions2.ffem,
                fontWeight: FontWeight.w700,
                height: 1.2175*Dimensions2.ffem/Dimensions2.fem,
                color: Color(0xffffffff),
              ),
            ),
          ),
        ),
      ),
    );
  }
}