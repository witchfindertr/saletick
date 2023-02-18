import 'package:flutter/material.dart';
import 'package:saletick/NEW/widgets/header_one_widget.dart';
import 'package:saletick/app_constants/app_dimensions.dart';
import 'package:saletick/utilities/utils.dart';


class TransactionDetailsScreen extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: SingleChildScrollView(
        child: Column(
          children: [
             // HEADER HERE
           const SaletickHeaderOne(headerOneTitleText: 'Transaction',),
            // Container Housing: Staff Profile Image & Settings Icon
            Container(
              padding: EdgeInsets.fromLTRB(38*fem, 14.73*fem, 30.4*fem, 14*fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: Dimensions.size30),
                  // Download receipt Section
                  Padding(
                    padding: EdgeInsets.only(left: Dimensions.size100*1.8),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        // Text
                        Container(
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 7.13*fem, 0*fem),
                          child: Text(
                            'Download Receipt',
                            style: SafeGoogleFont (
                              'Poppins',
                              fontSize: 13*ffem,
                              fontWeight: FontWeight.w500,
                              height: 1.5*ffem/fem,
                              color: Color(0xff430463),
                            ),
                          ),
                        ),
                        // download-icon-image
                        Container(
                          margin: EdgeInsets.fromLTRB(0*fem, 1*fem, 0*fem, 0*fem),
                          width: 8.75*fem,
                          height: 14*fem,
                          child: Image.asset(
                            'assets/images/download-1-svgrepo-com-2.png',
                            width: 8.75*fem,
                            height: 14*fem,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: Dimensions.size3),
                  // Lines
                  Positioned(
                    // line1959a (145:3169)
                    left: 30*fem,
                    top: 419.6110839844*fem,
                    child: Align(
                      child: SizedBox(
                        width: 303*fem,
                        height: 1*fem,
                        child: Container(
                          decoration: BoxDecoration (
                            color: Color(0xffb8b8b8),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: Dimensions.size30),
                  // PRODUCT NAME
                  Container(
                    margin: EdgeInsets.fromLTRB(46*fem, 0*fem, 10*fem, 19*fem),
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 33*fem, 0*fem),
                          child: Text(
                            'Product Name',
                            style: SafeGoogleFont (
                              'Poppins',
                              fontSize: 12*ffem,
                              fontWeight: FontWeight.w700,
                              height: 1.5*ffem/fem,
                              color: Color(0xff430463),
                            ),
                          ),
                        ),
                        Text(
                          'Chocolate Bar',
                          style: SafeGoogleFont (
                            'Poppins',
                            fontSize: 12*ffem,
                            fontWeight: FontWeight.w500,
                            height: 1.5*ffem/fem,
                            color: Color(0xff430463),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: Dimensions.size15),
                  // PRODUCT NUMBER
                  Container(
                    margin: EdgeInsets.fromLTRB(34*fem, 0*fem, 40.6*fem, 19*fem),
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 33*fem, 0*fem),
                          child: Text(
                            'Product Number',
                            style: SafeGoogleFont (
                              'Poppins',
                              fontSize: 12*ffem,
                              fontWeight: FontWeight.w700,
                              height: 1.5*ffem/fem,
                              color: Color(0xff430463),
                            ),
                          ),
                        ),
                        Text(
                          // PNg (128:739)
                          '9383ed83028',
                          style: SafeGoogleFont (
                            'Poppins',
                            fontSize: 12*ffem,
                            fontWeight: FontWeight.w500,
                            height: 1.5*ffem/fem,
                            color: Color(0xff430463),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: Dimensions.size15),
                  // SALES Rep
                  Container(
                    margin: EdgeInsets.fromLTRB(73*fem, 0*fem, 33*fem, 19*fem),
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 36*fem, 0*fem),
                          child: Text(
                            'Sales Rep',
                            style: SafeGoogleFont (
                              'Poppins',
                              fontSize: 12*ffem,
                              fontWeight: FontWeight.w700,
                              height: 1.5*ffem/fem,
                              color: Color(0xff430463),
                            ),
                          ),
                        ),
                        Container(
                          width: Dimensions.size100*1.2,
                          child: Text(                              
                            'Chiomachukwu',
                            overflow: TextOverflow.ellipsis,
                            style: SafeGoogleFont (
                              'Poppins',
                              fontSize: 12*ffem,
                              fontWeight: FontWeight.w500,
                              height: 1.5*ffem/fem,
                              color: Color(0xff430463),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: Dimensions.size15),
                  // DATE
                  Container(
                    margin: EdgeInsets.fromLTRB(100*fem, 0*fem, 30*fem, 17*fem),
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 33*fem, 0*fem),
                          child: Text(
                            'Date',
                            style: SafeGoogleFont (
                              'Poppins',
                              fontSize: 12*ffem,
                              fontWeight: FontWeight.w700,
                              height: 1.5*ffem/fem,
                              color: Color(0xff430463),
                            ),
                          ),
                        ),
                        Text(
                          '16-12-23 12:23:01',
                          style: SafeGoogleFont (
                            'Poppins',
                            fontSize: 12*ffem,
                            fontWeight: FontWeight.w500,
                            height: 1.5*ffem/fem,
                            color: Color(0xff430463),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: Dimensions.size15),
                  // UNIT PRICE
                  Container(
                    margin: EdgeInsets.fromLTRB(76*fem, 0*fem, 55.6*fem, 19*fem),
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 33*fem, 2*fem),
                          child: Text(
                            'Unit Price',
                            style: SafeGoogleFont (
                              'Poppins',
                              fontSize: 12*ffem,
                              fontWeight: FontWeight.w700,
                              height: 1.5*ffem/fem,
                              color: Color(0xff430463),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0*fem, 2*fem, 0*fem, 0*fem),
                          child: Text(
                            '20,000',
                            style: SafeGoogleFont (
                              'Poppins',
                              fontSize: 12*ffem,
                              fontWeight: FontWeight.w500,
                              height: 1.5*ffem/fem,
                              color: Color(0xff430463),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: Dimensions.size15),
                  // TOTAL SALE
                  Container(
                    margin: EdgeInsets.fromLTRB(75*fem, 0*fem, 80*fem, 19*fem),
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 36*fem, 0*fem),
                          child: Text(
                            'Total Sale',
                            style: SafeGoogleFont (
                              'Poppins',
                              fontSize: 12*ffem,
                              fontWeight: FontWeight.w700,
                              height: 1.5*ffem/fem,
                              color: Color(0xff430463),
                            ),
                          ),
                        ),
                        Text(
                          '365,000',
                          style: SafeGoogleFont (
                            'Poppins',
                            fontSize: 12*ffem,
                            fontWeight: FontWeight.w500,
                            height: 1.5*ffem/fem,
                            color: Color(0xff430463),
                          ),
                        ),
                      ],
                    ),
                  ),
                SizedBox(height: Dimensions.size15),
                 Positioned(
                    // line1959a (145:3169)
                    left: 30*fem,
                    top: 419.6110839844*fem,
                    child: Align(
                      child: SizedBox(
                        width: 303*fem,
                        height: 1*fem,
                        child: Container(
                          decoration: BoxDecoration (
                            color: Color(0xffb8b8b8),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: Dimensions.size10),                 
                  // The Last Row of texts of the screen
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // quantitylefthjN (145:3170)
                        padding: EdgeInsets.fromLTRB(50*fem, 0*fem, 33*fem, 0*fem),
                        child: Text(
                          'Quantity Left',
                          style: SafeGoogleFont (
                            'Poppins',
                            fontSize: 13*ffem,
                            fontWeight: FontWeight.w700,
                            height: 1.5*ffem/fem,
                            color: Color(0xff430463),
                          ),
                        ),
                      ),
                      Text(
                        // cartons2me (145:3172)
                        '234  Cartons',
                        style: SafeGoogleFont (
                          'Poppins',
                          fontSize: 13*ffem,
                          fontWeight: FontWeight.w500,
                          height: 1.5*ffem/fem,
                          color: Color(0xff430463),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


