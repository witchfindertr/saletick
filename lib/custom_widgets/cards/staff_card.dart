import 'package:flutter/material.dart';
import 'package:saletick/app_constants/dimensions2.dart';
import 'package:saletick/utilities/utils.dart';

class StaffCardWidget extends StatelessWidget {
  final String staffFirstName;
  final String staffLastName;
  final String profileImage;
  
  const StaffCardWidget({super.key, required this.staffFirstName, required this.staffLastName, required this.profileImage});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(12*Dimensions2.fem, 9*Dimensions2.fem, 15*Dimensions2.fem, 9*Dimensions2.fem),
      height: 60*Dimensions2.fem,
      decoration: BoxDecoration (
        color: Color(0x1e8f7aff),
        borderRadius: BorderRadius.circular(3*Dimensions2.fem),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 2,
            child: Container(
              margin: EdgeInsets.fromLTRB(0*Dimensions2.fem, 0*Dimensions2.fem, 15*Dimensions2.fem, 0*Dimensions2.fem),
              width: 40*Dimensions2.fem,
              height: 40*Dimensions2.fem,
              decoration: BoxDecoration (
                borderRadius: BorderRadius.circular(15.5*Dimensions2.fem),
                image: DecorationImage (
                  fit: BoxFit.cover,
                  image: NetworkImage (
                    profileImage, // 'assets/images/ellipse-11-bg-mix.png',
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 10,
            child: Container(
              child: Text(
                '$staffFirstName  $staffLastName', // 'Annette Black'
                style: SafeGoogleFont (
                  'Poppins',
                  fontSize: 12*Dimensions2.ffem,
                  fontWeight: FontWeight.w700,
                  height: 1.5*Dimensions2.ffem/Dimensions2.fem,
                  color: Color(0xff430463),
                ),
              ),
            ),
          ),
          const Expanded(
            flex: 1,
            child: Icon(
              Icons.more_vert,
            ),
          ),
        ],
      ),
    );
  }
}