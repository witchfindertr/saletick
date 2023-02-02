import 'package:flutter/material.dart';
import 'package:saletick/app_constants/app_dimensions.dart';


class MainButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  const MainButton({Key? key, required this.onPressed, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(horizontal: Dimensions.size40, vertical: Dimensions.size15),
        backgroundColor: Color(0xff600091), // background (button) color
        foregroundColor: Colors.white, // foreground (text) color
        shadowColor: Colors.deepPurple,
        elevation: 3.00,
        textStyle: TextStyle(
          fontSize: Dimensions.size18,
          fontWeight: FontWeight.bold,
          fontFamily: "Georgia"
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(Dimensions.size9),
        )
      ),
      child: Text(text),
    );
  }
}