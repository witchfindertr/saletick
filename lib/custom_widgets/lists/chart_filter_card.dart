import 'package:flutter/material.dart';
import 'package:saletick/app_constants/app_colors.dart';
import 'package:saletick/app_constants/app_dimensions.dart';
import 'package:google_fonts/google_fonts.dart';


class ChartFilterListCard extends StatelessWidget {
  final VoidCallback onTap;
  final String filterText;
  final bool isSelected;

  const ChartFilterListCard({Key? key, required this.onTap, required this.filterText, this.isSelected =  false}) : super(key: key);

  static List<Map> chartFilter = [
    {
      'filter' : 'Daily',
      'selected' : true,
    },
    {
      'filter' : 'Weekly',
      'selected' : false,
    },
    {
      'filter' : 'Monthly',
      'selected' : false,
    },
    {
      'filter' : 'Yearly',
      'selected' : false,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: Dimensions.size18, vertical: Dimensions.size3*2),
        decoration: BoxDecoration(
          color: isSelected? AppColors.mainTextColor3.withOpacity(0.2) : null,
          borderRadius: BorderRadius.circular(Dimensions.size20),                              
        ),
        child: Text(
          filterText,
          style: GoogleFonts.montserrat(
            color: AppColors.mainTextColor2,
            fontWeight: FontWeight.w700,
            fontSize: Dimensions.size12,
          ),
        ),
      ),
    );
  }
}