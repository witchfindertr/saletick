import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saletick/app_constants/app_dimensions.dart';

class SubscriptionButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  
  const SubscriptionButton({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  const EdgeInsets.only(left: 65, right: 65, top: 15),
      child: ElevatedButton(
        child: Ink(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xffaa076b),
                Color(0xff61045f),
              ],
            ),
            borderRadius: BorderRadius.all(Radius.circular(Dimensions.size9)),
          ),
          child: Container(
            constraints: BoxConstraints(minWidth: 108, minHeight: 36.0),
            padding: EdgeInsets.all(12),
            child: Padding(
              padding: EdgeInsets.all(Dimensions.size12),
              child: Text(
                text,
                style: GoogleFonts.montserrat(
                  textStyle: TextStyle(
                    fontSize: 23,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ),
        style: ElevatedButton.styleFrom(
          elevation: 15,
          shadowColor: Colors.black.withOpacity(0.5),
          padding: const EdgeInsets.all(0.0),
          foregroundColor: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(58.0),
          ),
        ),
        onPressed: onPressed,
      ),
    );
  }
}