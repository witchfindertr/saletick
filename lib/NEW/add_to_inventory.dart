import 'package:flutter/material.dart';
import 'package:saletick/utilities/utils.dart';


class AddProductsToInventory extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Container(
          // frame28Fhi (126:26)
          width: double.infinity,
          decoration: BoxDecoration (
            color: Color(0xffffffff),
            gradient: RadialGradient (
              center: Alignment(0.917, 0.862),
              radius: 1.31,
              colors: <Color>[Color(0x0c8c7bff), Color(0x0c69059c), Color(0x0c8f7aff)],
              stops: <double>[0, 1, 1],
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                // autogroupher4XQL (NCtyeFAQcGBpViDpXther4)
                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 52.61*fem),
                width: 391.5*fem,
                height: 171.89*fem,
                child: Stack(
                  children: [
                    Positioned(
                      // incomesummary3Ng (126:35)
                      left: 135*fem,
                      top: 113*fem,
                      child: Align(
                        child: SizedBox(
                          width: 112*fem,
                          height: 15*fem,
                          child: Text(
                            'Income Summary',
                            style: SafeGoogleFont (
                              'Montserrat',
                              fontSize: 12*ffem,
                              fontWeight: FontWeight.w700,
                              height: 1.2175*ffem/fem,
                              color: Color(0xffffffff),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // rectangle11vhN (126:40)
                      left: 0*fem,
                      top: 0*fem,
                      child: Align(
                        child: SizedBox(
                          width: 391.5*fem,
                          height: 171.89*fem,
                          child: Image.asset(
                            'assets/images/rectangle-11-sTW.png',
                            width: 391.5*fem,
                            height: 171.89*fem,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // group7e7a (126:41)
                      left: 26*fem,
                      top: 18*fem,
                      child: Container(
                        width: 60*fem,
                        height: 57*fem,
                        child: Stack(
                          children: [
                            Positioned(
                              // ellipse4BNQ (126:42)
                              left: 0*fem,
                              top: 0*fem,
                              child: Align(
                                child: SizedBox(
                                  width: 57*fem,
                                  height: 57*fem,
                                  child: Container(
                                    decoration: BoxDecoration (
                                      borderRadius: BorderRadius.circular(28.5*fem),
                                      image: DecorationImage (
                                        fit: BoxFit.cover,
                                        image: AssetImage (
                                          'assets/images/ellipse-4-bg-Zsn.png',
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // ellipse5HwE (126:43)
                              left: 40*fem,
                              top: 37*fem,
                              child: Align(
                                child: SizedBox(
                                  width: 20*fem,
                                  height: 20*fem,
                                  child: Container(
                                    decoration: BoxDecoration (
                                      borderRadius: BorderRadius.circular(10*fem),
                                      border: Border.all(color: Color(0xffffffff)),
                                      color: Color(0xff00a660),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Color(0x19000000),
                                          offset: Offset(0*fem, 2*fem),
                                          blurRadius: 2.5*fem,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      // group6Ztk (126:44)
                      left: 325*fem,
                      top: 31*fem,
                      child: Container(
                        width: 29*fem,
                        height: 31*fem,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // rectangle33gTa (126:45)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 10*fem),
                              width: double.infinity,
                              height: 4*fem,
                              decoration: BoxDecoration (
                                color: Color(0xff550080),
                              ),
                            ),
                            Container(
                              // rectangle34oo6 (126:46)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 9*fem),
                              width: double.infinity,
                              height: 4*fem,
                              decoration: BoxDecoration (
                                color: Color(0xff550080),
                              ),
                            ),
                            Container(
                              // rectangle35kCY (126:47)
                              width: double.infinity,
                              height: 4*fem,
                              decoration: BoxDecoration (
                                color: Color(0xff550080),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      // welcomederau5S (126:48)
                      left: 132*fem,
                      top: 39*fem,
                      child: Align(
                        child: SizedBox(
                          width: 124*fem,
                          height: 25*fem,
                          child: RichText(
                            text: TextSpan(
                              style: SafeGoogleFont (
                                'Montserrat',
                                fontSize: 12*ffem,
                                fontWeight: FontWeight.w700,
                                height: 1.2175*ffem/fem,
                                color: Color(0xffffffff),
                              ),
                              children: [
                                TextSpan(
                                  text: 'Welcome,',
                                ),
                                TextSpan(
                                  text: ' Dera!',
                                  style: SafeGoogleFont (
                                    'Montserrat',
                                    fontSize: 20*ffem,
                                    fontWeight: FontWeight.w700,
                                    height: 1.2175*ffem/fem,
                                    color: Color(0xffffffff),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // addinventoryFoW (126:70)
                      left: 92*fem,
                      top: 131*fem,
                      child: Align(
                        child: SizedBox(
                          width: 117*fem,
                          height: 24*fem,
                          child: Text(
                            'Add Inventory',
                            style: SafeGoogleFont (
                              'Poppins',
                              fontSize: 16*ffem,
                              fontWeight: FontWeight.w700,
                              height: 1.5*ffem/fem,
                              color: Color(0xffffffff),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // avatardefaultsvgrepocom198C (126:71)
                      left: 60.625*fem,
                      top: 129.8125*fem,
                      child: Align(
                        child: SizedBox(
                          width: 21.75*fem,
                          height: 25.38*fem,
                          child: Image.asset(
                            'assets/images/avatar-default-svgrepo-com-1-3eY.png',
                            width: 21.75*fem,
                            height: 25.38*fem,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                // addproductr2c (126:56)
                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 273*fem, 0*fem),
                child: Text(
                  'Add Product',
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
                // autogroupnujcxbS (NCu2D1DsRpy2B4VXKgNUJc)
                width: double.infinity,
                height: 475*fem,
                child: Stack(
                  children: [
                    Positioned(
                      // autogroup4cvn6Br (NCu1L7X13T4veovgGE4cVN)
                      left: 38*fem,
                      top: 408*fem,
                      child: Container(
                        width: 314*fem,
                        height: 59*fem,
                        decoration: BoxDecoration (
                          borderRadius: BorderRadius.circular(5*fem),
                          gradient: LinearGradient (
                            begin: Alignment(-1, -1.075),
                            end: Alignment(0.931, 0.613),
                            colors: <Color>[Color(0xbcc373eb), Color(0xbc0081d1), Color(0xbc640893)],
                            stops: <double>[0, 0.722, 1],
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0x1c22092e),
                              offset: Offset(0*fem, 2*fem),
                              blurRadius: 5*fem,
                            ),
                          ],
                        ),
                        child: Center(
                          child: Text(
                            'Add Sale +',
                            style: SafeGoogleFont (
                              'Poppins',
                              fontSize: 16*ffem,
                              fontWeight: FontWeight.w700,
                              height: 1.5*ffem/fem,
                              color: Color(0xffe9e4ff),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // autogroupccrwt7i (NCtz2z1X5Y9BURHPZSCcRW)
                      left: 40*fem,
                      top: 3*fem,
                      child: Container(
                        width: 312*fem,
                        height: 42*fem,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // autogrouptqp41CL (NCtzJtigHBeZoGqCtMtqp4)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 21*fem, 0*fem),
                              padding: EdgeInsets.fromLTRB(13*fem, 11.43*fem, 18*fem, 11.41*fem),
                              height: double.infinity,
                              decoration: BoxDecoration (
                                color: Color(0x428f7aff),
                                borderRadius: BorderRadius.circular(3*fem),
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // barcodesvgrepocom16zU (126:65)
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 13*fem, 0*fem),
                                    width: 28*fem,
                                    height: 19.16*fem,
                                    child: Image.asset(
                                      'assets/images/barcode-svgrepo-com-1-AuE.png',
                                      width: 28*fem,
                                      height: 19.16*fem,
                                    ),
                                  ),
                                  Container(
                                    // addbarcodeRWx (126:57)
                                    margin: EdgeInsets.fromLTRB(0*fem, 0.98*fem, 0*fem, 0*fem),
                                    child: Text(
                                      'Add Barcode',
                                      style: SafeGoogleFont (
                                        'Poppins',
                                        fontSize: 11*ffem,
                                        fontWeight: FontWeight.w700,
                                        height: 1.5*ffem/fem,
                                        color: Color(0xff430463),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              // autogroupnlvvk3S (NCtzUobq3nroQQKXk7NLVv)
                              padding: EdgeInsets.fromLTRB(32*fem, 10*fem, 28*fem, 10*fem),
                              height: double.infinity,
                              decoration: BoxDecoration (
                                color: Color(0x428f7aff),
                                borderRadius: BorderRadius.circular(3*fem),
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // qrcodesvgrepocom1UEL (126:67)
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 11*fem, 0*fem),
                                    width: 22*fem,
                                    height: 22*fem,
                                    child: Image.asset(
                                      'assets/images/qr-code-svgrepo-com-1-qpL.png',
                                      width: 22*fem,
                                      height: 22*fem,
                                    ),
                                  ),
                                  Text(
                                    // qrcodebJx (126:58)
                                    'QR Code',
                                    style: SafeGoogleFont (
                                      'Poppins',
                                      fontSize: 12*ffem,
                                      fontWeight: FontWeight.w700,
                                      height: 1.5*ffem/fem,
                                      color: Color(0xff430463),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      // autogroupe8rnjvx (NCtzpNsYjdSDqRThgye8Rn)
                      left: 40*fem,
                      top: 94*fem,
                      child: Container(
                        width: 312*fem,
                        height: 42*fem,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // rectangle18GAC (126:52)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 22*fem, 0*fem),
                              width: 145*fem,
                              height: 42*fem,
                              decoration: BoxDecoration (
                                borderRadius: BorderRadius.circular(3*fem),
                                color: Color(0x428f7aff),
                              ),
                            ),
                            Container(
                              // rectangle23Nyv (126:74)
                              width: 145*fem,
                              height: 42*fem,
                              decoration: BoxDecoration (
                                borderRadius: BorderRadius.circular(3*fem),
                                color: Color(0x428f7aff),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      // autogrouptkxx7gc (NCu16NQuDjZHkgxLwStkxx)
                      left: 40*fem,
                      top: 187*fem,
                      child: Container(
                        width: 314*fem,
                        height: 42*fem,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // rectangle203qA (126:53)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 36*fem, 0*fem),
                              width: 139*fem,
                              height: 42*fem,
                              decoration: BoxDecoration (
                                borderRadius: BorderRadius.circular(3*fem),
                                color: Color(0x428f7aff),
                              ),
                            ),
                            Container(
                              // rectangle21yip (126:55)
                              width: 139*fem,
                              height: 42*fem,
                              decoration: BoxDecoration (
                                borderRadius: BorderRadius.circular(3*fem),
                                color: Color(0x428f7aff),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      // rectangle22jT6 (126:54)
                      left: 40*fem,
                      top: 266*fem,
                      child: Align(
                        child: SizedBox(
                          width: 312*fem,
                          height: 71*fem,
                          child: Container(
                            decoration: BoxDecoration (
                              borderRadius: BorderRadius.circular(3*fem),
                              color: Color(0x428f7aff),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // autogroupdpr6Ttt (NCtzfxwu5HJGuizFT2DpR6)
                      left: 44*fem,
                      top: 73*fem,
                      child: Container(
                        width: 266*fem,
                        height: 18*fem,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // categoryCLg (126:59)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 104*fem, 0*fem),
                              child: Text(
                                'Category',
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
                              // nameofproductXNx (126:75)
                              'Name of Product',
                              style: SafeGoogleFont (
                                'Poppins',
                                fontSize: 12*ffem,
                                fontWeight: FontWeight.w700,
                                height: 1.5*ffem/fem,
                                color: Color(0xff430463),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      // autogrouppqqzUJC (NCtzxTURG97SPU9rEkpqqz)
                      left: 40*fem,
                      top: 166*fem,
                      child: Container(
                        width: 238*fem,
                        height: 18*fem,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // noofunitsoLU (126:60)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 107*fem, 0*fem),
                              child: Text(
                                'No. of Units ',
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
                              // unitpriceiyE (126:62)
                              'Unit Price',
                              style: SafeGoogleFont (
                                'Poppins',
                                fontSize: 12*ffem,
                                fontWeight: FontWeight.w700,
                                height: 1.5*ffem/fem,
                                color: Color(0xff430463),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      // descriptionGUx (126:61)
                      left: 38*fem,
                      top: 248*fem,
                      child: Align(
                        child: SizedBox(
                          width: 72*fem,
                          height: 18*fem,
                          child: Text(
                            'Description',
                            style: SafeGoogleFont (
                              'Poppins',
                              fontSize: 12*ffem,
                              fontWeight: FontWeight.w700,
                              height: 1.5*ffem/fem,
                              color: Color(0xff430463),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // autogroup3t3aakY (NCu1DhY2C7hMy294BL3t3a)
                      left: 73*fem,
                      top: 359*fem,
                      child: Container(
                        width: 249*fem,
                        height: 36*fem,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // totalpossiblesalestWL (126:63)
                              margin: EdgeInsets.fromLTRB(0*fem, 1*fem, 14*fem, 0*fem),
                              child: Text(
                                'Total Possible Sales: ',
                                style: SafeGoogleFont (
                                  'Poppins',
                                  fontSize: 15*ffem,
                                  fontWeight: FontWeight.w600,
                                  height: 1.5*ffem/fem,
                                  color: Color(0xff430463),
                                ),
                              ),
                            ),
                            Text(
                              // bvY (126:64)
                              '25,778',
                              style: SafeGoogleFont (
                                'Poppins',
                                fontSize: 24*ffem,
                                fontWeight: FontWeight.w700,
                                height: 1.5*ffem/fem,
                                color: Color(0xff430463),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                // autogroupqkpnkoS (NCu1V2RpQYty8z563SqKPn)
                width: double.infinity,
                height: 126*fem,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      // autogroupfwraWGp (NCu1mrH7jFArzP1zXMfwRA)
                      width: 390*fem,
                      height: double.infinity,
                      child: Stack(
                        children: [
                          Positioned(
                            // img57211recoveredgrey1r5n (126:27)
                            left: 38*fem,
                            top: 69*fem,
                            child: Align(
                              child: SizedBox(
                                width: 27*fem,
                                height: 20*fem,
                                child: Image.asset(
                                  'assets/images/img5721-1-recovered-grey-1-cMe.png',
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            // overviewxPi (126:28)
                            left: 29*fem,
                            top: 94*fem,
                            child: Align(
                              child: SizedBox(
                                width: 45*fem,
                                height: 11*fem,
                                child: Text(
                                  'Overview',
                                  textAlign: TextAlign.center,
                                  style: SafeGoogleFont (
                                    'Montserrat',
                                    fontSize: 9*ffem,
                                    fontWeight: FontWeight.w700,
                                    height: 1.2175*ffem/fem,
                                    color: Color(0xff8f8f8f),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            // staffmanagement4xY (126:29)
                            left: 225.5*fem,
                            top: 95*fem,
                            child: Align(
                              child: SizedBox(
                                width: 53*fem,
                                height: 20*fem,
                                child: Text(
                                  'Staff \nManagement',
                                  textAlign: TextAlign.center,
                                  style: SafeGoogleFont (
                                    'Montserrat',
                                    fontSize: 8*ffem,
                                    fontWeight: FontWeight.w700,
                                    height: 1.2175*ffem/fem,
                                    color: Color(0xff8f8f8f),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            // settingsm6G (126:30)
                            left: 331*fem,
                            top: 97*fem,
                            child: Align(
                              child: SizedBox(
                                width: 40*fem,
                                height: 11*fem,
                                child: Text(
                                  'Settings',
                                  style: SafeGoogleFont (
                                    'Montserrat',
                                    fontSize: 9*ffem,
                                    fontWeight: FontWeight.w700,
                                    height: 1.2175*ffem/fem,
                                    color: Color(0xff8f8f8f),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            // staffgray1suz (126:31)
                            left: 237*fem,
                            top: 66*fem,
                            child: Align(
                              child: SizedBox(
                                width: 30*fem,
                                height: 23*fem,
                                child: Image.asset(
                                  'assets/images/staff-gray-1-xWU.png',
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            // settingsgrey1oYk (126:32)
                            left: 331*fem,
                            top: 66*fem,
                            child: Align(
                              child: SizedBox(
                                width: 32*fem,
                                height: 26*fem,
                                child: Image.asset(
                                  'assets/images/settings-grey-1-Erk.png',
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            // rectangle17jhJ (126:33)
                            left: 103*fem,
                            top: 30*fem,
                            child: Align(
                              child: SizedBox(
                                width: 83*fem,
                                height: 96*fem,
                                child: Image.asset(
                                  'assets/images/rectangle-17-Kqa.png',
                                  width: 83*fem,
                                  height: 96*fem,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            // inventoryclicked1Ffe (126:34)
                            left: 132*fem,
                            top: 68*fem,
                            child: Align(
                              child: SizedBox(
                                width: 26*fem,
                                height: 25*fem,
                                child: Image.asset(
                                  'assets/images/inventory-clicked-1-j8U.png',
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            // vector2n9n (126:36)
                            left: 0*fem,
                            top: 0*fem,
                            child: Align(
                              child: SizedBox(
                                width: 390*fem,
                                height: 126*fem,
                                child: Image.asset(
                                  'assets/images/vector-2-h1S.png',
                                  width: 390*fem,
                                  height: 126*fem,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            // inventory6AU (126:38)
                            left: 120*fem,
                            top: 93*fem,
                            child: Align(
                              child: SizedBox(
                                width: 51*fem,
                                height: 13*fem,
                                child: Text(
                                  'Inventory',
                                  style: SafeGoogleFont (
                                    'Montserrat',
                                    fontSize: 10*ffem,
                                    fontWeight: FontWeight.w700,
                                    height: 1.2175*ffem/fem,
                                    color: Color(0xff8f7aff),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // vector312Y (126:39)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 372.5*fem, 0.5*fem),
                      width: 102.5*fem,
                      height: 119.5*fem,
                      child: Image.asset(
                        'assets/images/vector-3-ppp.png',
                        width: 102.5*fem,
                        height: 119.5*fem,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
            ),
    );
  }
}