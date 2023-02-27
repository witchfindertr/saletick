import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:saletick/controllers/auth_controller.dart';
import 'package:saletick/custom_widgets/header/header_one_widget.dart';
import 'package:saletick/app_constants/app_dimensions.dart';
import 'package:saletick/models/product_model.dart';
import 'package:saletick/models/transaction_model.dart';
import 'package:saletick/utilities/utils.dart';


class SoldProductReceiptScreen extends StatelessWidget {
  final TransactionModel txnSale;
  final ProductModel soldProduct;

  SoldProductReceiptScreen({Key? key, required this.soldProduct, required this.txnSale}) : super(key: key);

  // instance of auth controller
  var authController = Get.find<AuthController>();

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
           const SaletickHeaderOne(headerOneTitleText: 'Receipt'),
            // Container Housing: Staff Profile Image & Settings Icon
            Container(
              padding: EdgeInsets.fromLTRB(38*fem, 14.73*fem, 9*fem, 14*fem),
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
                  // Lines: Divider
                  Positioned(
                    left: 30*fem,
                    top: 419.6110839844*fem,
                    child: Align(
                      child: SizedBox(
                        width: 303*fem,
                        height: 1*fem,
                        child: Container(
                          decoration: const BoxDecoration (
                            color: Color(0xffb8b8b8),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: Dimensions.size30),
                  // PRODUCT NAME
                  Container(
                    margin: EdgeInsets.fromLTRB(46*fem, 0*fem, 4*fem, 19*fem),
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
                        Container(
                          width: Dimensions.size100*1.7,
                          child: Text(
                            soldProduct.name, //'Chocolate Bar',
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
                  SizedBox(height: Dimensions.size10),
                  // PRODUCT NUMBER
                  Container(
                    margin: EdgeInsets.fromLTRB(34*fem, 0*fem, 4*fem, 19*fem),
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
                        Container(
                          width: Dimensions.size100*1.7,
                          child: Text(
                            soldProduct.productID,  // '9383ed83028',
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
                  SizedBox(height: Dimensions.size10),
                  // SALES Rep
                  Container(
                    margin: EdgeInsets.fromLTRB(73*fem, 0*fem, 4*fem, 19*fem),
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
                          width: Dimensions.size100*1.7,
                          child: Text(                              
                            txnSale.whoSoldIt, // 'Chiomachukwu',
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
                  SizedBox(height: Dimensions.size10),
                  // DATE
                  Container(
                    margin: EdgeInsets.fromLTRB(100*fem, 0*fem, 10*fem, 17*fem),
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
                          txnSale.date, //'16-12-23 12:23:01',
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
                  SizedBox(height: Dimensions.size10),
                  // No. of Units Sold
                  Container(
                    margin: EdgeInsets.fromLTRB(50*fem, 0*fem, 10*fem, 17*fem),
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 33*fem, 0*fem),
                          child: Text(
                            'No. of Unit(s)',
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
                          txnSale.unitSold.toString(), //'16-12-23 12:23:01',
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
                  SizedBox(height: Dimensions.size10),
                  // UNIT PRICE
                  Container(
                    margin: EdgeInsets.fromLTRB(76*fem, 0*fem, 4*fem, 19*fem),
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
                          width: Dimensions.size100*1.7,
                          child: Text(
                            authController.convertStringAmountToActualMoney(soldProduct.amount),  // '20,000',
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
                  SizedBox(height: Dimensions.size10),
                  // TOTAL SALE
                  Container(
                    margin: EdgeInsets.fromLTRB(48*fem, 0*fem, 4*fem, 19*fem),
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 36*fem, 0*fem),
                          child: Text(
                            'Total Amount',
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
                          width: Dimensions.size100*1.6,
                          child: Text(
                            authController.convertStringAmountToActualMoney(txnSale.totalAmount),  // totalAmount,
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
                SizedBox(height: Dimensions.size10),
                 Positioned(
                    // line: Divider at bottom
                    left: 30*fem,
                    top: 419.6110839844*fem,
                    child: Align(
                      child: SizedBox(
                        width: 303*fem,
                        height: 1*fem,
                        child: Container(
                          decoration: const BoxDecoration (
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
                      Container(
                        width: Dimensions.size100*1.7,
                        child: Text(
                          '${soldProduct.unitAvailable}  Items',
                          overflow: TextOverflow.ellipsis,
                          style: SafeGoogleFont (
                            'Poppins',
                            fontSize: 13*ffem,
                            fontWeight: FontWeight.w500,
                            height: 1.5*ffem/fem,
                            color: Color(0xff430463),
                          ),
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


