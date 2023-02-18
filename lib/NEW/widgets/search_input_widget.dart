import 'package:flutter/material.dart';
import 'package:saletick/app_constants/app_colors.dart';
import 'package:saletick/app_constants/app_dimensions.dart';
import 'package:saletick/app_constants/dimensions2.dart';

class SearchInputWidget extends StatelessWidget {
  final VoidCallback onTapped;
  
  const SearchInputWidget({super.key, required this.onTapped});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(0*Dimensions2.fem, 0*Dimensions2.fem, 3*Dimensions2.fem, 28*Dimensions2.fem),
      padding: EdgeInsets.fromLTRB(3*Dimensions2.fem, 0*Dimensions2.fem, 4*Dimensions2.fem, 0*Dimensions2.fem),
      width: double.infinity,
      height: 43*Dimensions2.fem,
      decoration: BoxDecoration (
        color: Color(0x1e8f7aff),
        borderRadius: BorderRadius.circular(3*Dimensions2.fem),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container( 
            width: 300*Dimensions2.fem,               
            child: TextFormField(
              autocorrect: true,                
              keyboardType:  TextInputType.text,   
              validator: ((value) {
                if(value!.isEmpty){
                  return 'Provide a value';
                }else{
                  return null;
                }                                
              }),
              decoration: InputDecoration(      
                hintText: 'Search', 
                hintStyle: TextStyle(
                  color: Colors.grey.shade400,
                  letterSpacing: 1,
                  fontWeight: FontWeight.w600,                
                ),   
                border: InputBorder.none,
                contentPadding:     EdgeInsets.symmetric(vertical: Dimensions.size3, horizontal: Dimensions.size10)                      
              ),
            ),
          ),
          // container with search icon wrapped with Expanded()
          Expanded(
            child: InkWell(
              onTap: onTapped,
              child: Container(
                padding: EdgeInsets.fromLTRB(25*Dimensions2.fem, 12.28*Dimensions2.fem, 22.8*Dimensions2.fem, 11.28*Dimensions2.fem),
                height: double.infinity,
                decoration: BoxDecoration (
                  color: AppColors.mainTextColor1,
                  borderRadius: BorderRadius.circular(3*Dimensions2.fem),
                ),
                child: Center(
                 child: Icon(
                  Icons.search,
                  color: Colors.white,
                 ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}