import 'package:flutter/material.dart';
import 'package:saletick/utilities/utils.dart';


class InventoryCategoryListScreen extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          child: Container(
            // frame39bTE (152:3481)
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
                  // autogrouphjlyU1E (NCtjwtV1FtrSxN5mDgHJLY)
                  width: 391.5*fem,
                  height: 171.89*fem,
                  child: Stack(
                    children: [
                      Positioned(
                        // incomesummaryb5r (152:3490)
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
                        // rectangle11512 (152:3497)
                        left: 0*fem,
                        top: 0*fem,
                        child: Align(
                          child: SizedBox(
                            width: 391.5*fem,
                            height: 171.89*fem,
                            child: Image.asset(
                              'assets/images/rectangle-11-RhA.png',
                              width: 391.5*fem,
                              height: 171.89*fem,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        // group7ayN (152:3498)
                        left: 26*fem,
                        top: 18*fem,
                        child: Container(
                          width: 60*fem,
                          height: 57*fem,
                          child: Stack(
                            children: [
                              Positioned(
                                // ellipse4j5a (152:3499)
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
                                            'assets/images/ellipse-4-bg-eXa.png',
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                // ellipse51on (152:3500)
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
                        // group6UxG (152:3501)
                        left: 325*fem,
                        top: 31*fem,
                        child: Container(
                          width: 29*fem,
                          height: 31*fem,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // rectangle33zvc (152:3502)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 10*fem),
                                width: double.infinity,
                                height: 4*fem,
                                decoration: BoxDecoration (
                                  color: Color(0xff550080),
                                ),
                              ),
                              Container(
                                // rectangle34YBS (152:3503)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 9*fem),
                                width: double.infinity,
                                height: 4*fem,
                                decoration: BoxDecoration (
                                  color: Color(0xff550080),
                                ),
                              ),
                              Container(
                                // rectangle35szQ (152:3504)
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
                        // welcomederaqgL (152:3505)
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
                        // inventoryQsr (152:3507)
                        left: 92*fem,
                        top: 128*fem,
                        child: Align(
                          child: SizedBox(
                            width: 80*fem,
                            height: 24*fem,
                            child: Text(
                              'Inventory',
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
                        // avatardefaultsvgrepocom1HRr (152:3508)
                        left: 60.625*fem,
                        top: 126.8125*fem,
                        child: Align(
                          child: SizedBox(
                            width: 21.75*fem,
                            height: 25.38*fem,
                            child: Image.asset(
                              'assets/images/avatar-default-svgrepo-com-1-YYx.png',
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
                  // autogroupjbxvBGL (NCtmjfqQqfR2EmuHVeJbXv)
                  padding: EdgeInsets.fromLTRB(22*fem, 61.61*fem, 13*fem, 59*fem),
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // autogroupnfuz6PJ (NCtkLdL7jAoow59LFDnFuz)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 9*fem, 22*fem),
                        padding: EdgeInsets.fromLTRB(115*fem, 0*fem, 0*fem, 0*fem),
                        width: double.infinity,
                        height: 43*fem,
                        decoration: BoxDecoration (
                          color: Color(0x1e8f7aff),
                          borderRadius: BorderRadius.circular(3*fem),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // searchcategoryn1E (152:3732)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 79*fem, 2*fem),
                              child: Text(
                                'Search Category',
                                style: SafeGoogleFont (
                                  'Poppins',
                                  fontSize: 10*ffem,
                                  fontWeight: FontWeight.w500,
                                  height: 1.5*ffem/fem,
                                  color: Color(0xff430463),
                                ),
                              ),
                            ),
                            Container(
                              // autogroup7my2tpx (NCtkVd58NjFY1fEZwz7My2)
                              padding: EdgeInsets.fromLTRB(25*fem, 12.28*fem, 22.79*fem, 11.28*fem),
                              height: double.infinity,
                              decoration: BoxDecoration (
                                color: Color(0xff8f7aff),
                                borderRadius: BorderRadius.circular(3*fem),
                              ),
                              child: Center(
                                // vector1ua (152:3733)
                                child: SizedBox(
                                  width: 18.21*fem,
                                  height: 19.45*fem,
                                  child: Image.asset(
                                    'assets/images/vector.png',
                                    width: 18.21*fem,
                                    height: 19.45*fem,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        // autogroup1j7aMCk (NCtkbsPif9PjWd8YBo1J7a)
                        margin: EdgeInsets.fromLTRB(11*fem, 0*fem, 20*fem, 11*fem),
                        width: double.infinity,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // categoriessgt (152:3712)
                              margin: EdgeInsets.fromLTRB(0*fem, 2*fem, 146*fem, 0*fem),
                              child: Text(
                                'Categories',
                                style: SafeGoogleFont (
                                  'Poppins',
                                  fontSize: 20*ffem,
                                  fontWeight: FontWeight.w700,
                                  height: 1.5*ffem/fem,
                                  color: Color(0xff57336a),
                                ),
                              ),
                            ),
                            Container(
                              // addnewPv8 (152:3516)
                              margin: EdgeInsets.fromLTRB(0*fem, 2*fem, 5*fem, 0*fem),
                              child: Text(
                                'Add New',
                                style: SafeGoogleFont (
                                  'Poppins',
                                  fontSize: 9*ffem,
                                  fontWeight: FontWeight.w700,
                                  height: 1.5*ffem/fem,
                                  color: Color(0xff430463),
                                ),
                              ),
                            ),
                            Text(
                              // WUx (152:3713)
                              '+',
                              style: SafeGoogleFont (
                                'Poppins',
                                fontSize: 25*ffem,
                                fontWeight: FontWeight.w500,
                                height: 1.5*ffem/fem,
                                color: Color(0xff430463),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        // group84WU (152:3510)
                        margin: EdgeInsets.fromLTRB(6*fem, 0*fem, 0*fem, 13*fem),
                        padding: EdgeInsets.fromLTRB(7*fem, 7*fem, 22*fem, 6*fem),
                        decoration: BoxDecoration (
                          borderRadius: BorderRadius.circular(8*fem),
                          gradient: LinearGradient (
                            begin: Alignment(-1, -0.237),
                            end: Alignment(0.693, -0.373),
                            colors: <Color>[Color(0x51d4cdff), Color(0x1662c3ff)],
                            stops: <double>[0, 1],
                          ),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // rectangle41WdN (152:3722)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 12*fem, 0*fem),
                              width: 8*fem,
                              height: 30*fem,
                              decoration: BoxDecoration (
                                borderRadius: BorderRadius.circular(6*fem),
                                color: Color(0xff8f7aff),
                              ),
                            ),
                            Container(
                              // booksEJU (152:3717)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 251*fem, 2*fem),
                              child: Text(
                                'Books',
                                style: SafeGoogleFont (
                                  'Poppins',
                                  fontSize: 13*ffem,
                                  fontWeight: FontWeight.w700,
                                  height: 1.5*ffem/fem,
                                  color: Color(0xff57336a),
                                ),
                              ),
                            ),
                            Container(
                              // polygon1YKA (152:3714)
                              width: 8*fem,
                              height: 14*fem,
                              child: Image.asset(
                                'assets/images/polygon-1-Arc.png',
                                width: 8*fem,
                                height: 14*fem,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        // autogroup9zfjGkx (NCtkn2mTH8T1tzTLpB9zFJ)
                        margin: EdgeInsets.fromLTRB(6*fem, 0*fem, 0*fem, 13*fem),
                        width: 349*fem,
                        height: 43*fem,
                        child: Container(
                          // group18c48 (152:3514)
                          padding: EdgeInsets.fromLTRB(7*fem, 7*fem, 22*fem, 6*fem),
                          width: double.infinity,
                          height: double.infinity,
                          decoration: BoxDecoration (
                            borderRadius: BorderRadius.circular(8*fem),
                            gradient: LinearGradient (
                              begin: Alignment(-1, -0.237),
                              end: Alignment(0.693, -0.373),
                              colors: <Color>[Color(0x51d4cdff), Color(0x1662c3ff)],
                              stops: <double>[0, 1],
                            ),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // rectangle40rUG (152:3721)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 12*fem, 0*fem),
                                width: 8*fem,
                                height: 30*fem,
                                decoration: BoxDecoration (
                                  borderRadius: BorderRadius.circular(6*fem),
                                  color: Color(0xffc373eb),
                                ),
                              ),
                              Container(
                                // chocolatebarsNxQ (152:3720)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 189*fem, 2*fem),
                                child: Text(
                                  'Chocolate Bars',
                                  style: SafeGoogleFont (
                                    'Poppins',
                                    fontSize: 13*ffem,
                                    fontWeight: FontWeight.w700,
                                    height: 1.5*ffem/fem,
                                    color: Color(0xff57336a),
                                  ),
                                ),
                              ),
                              Container(
                                // polygon2W32 (152:3716)
                                width: 8*fem,
                                height: 14*fem,
                                child: Image.asset(
                                  'assets/images/polygon-2-8PJ.png',
                                  width: 8*fem,
                                  height: 14*fem,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        // group193Hr (152:3512)
                        margin: EdgeInsets.fromLTRB(6*fem, 0*fem, 0*fem, 13*fem),
                        padding: EdgeInsets.fromLTRB(7*fem, 7*fem, 22*fem, 6*fem),
                        decoration: BoxDecoration (
                          borderRadius: BorderRadius.circular(8*fem),
                          gradient: LinearGradient (
                            begin: Alignment(-1, -0.237),
                            end: Alignment(0.693, -0.373),
                            colors: <Color>[Color(0x51d4cdff), Color(0x1662c3ff)],
                            stops: <double>[0, 1],
                          ),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // rectangle42grc (152:3723)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 12*fem, 0*fem),
                              width: 8*fem,
                              height: 30*fem,
                              decoration: BoxDecoration (
                                borderRadius: BorderRadius.circular(6*fem),
                                color: Color(0xff8f7aff),
                              ),
                            ),
                            Container(
                              // detergentsRZJ (152:3718)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 216*fem, 2*fem),
                              child: Text(
                                'DetergentS',
                                style: SafeGoogleFont (
                                  'Poppins',
                                  fontSize: 13*ffem,
                                  fontWeight: FontWeight.w700,
                                  height: 1.5*ffem/fem,
                                  color: Color(0xff57336a),
                                ),
                              ),
                            ),
                            Container(
                              // polygon3wXe (152:3715)
                              width: 8*fem,
                              height: 14*fem,
                              child: Image.asset(
                                'assets/images/polygon-3-3Yc.png',
                                width: 8*fem,
                                height: 14*fem,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        // group215Nx (152:3725)
                        margin: EdgeInsets.fromLTRB(6*fem, 0*fem, 0*fem, 7*fem),
                        padding: EdgeInsets.fromLTRB(7*fem, 7*fem, 22*fem, 6*fem),
                        decoration: BoxDecoration (
                          borderRadius: BorderRadius.circular(8*fem),
                          gradient: LinearGradient (
                            begin: Alignment(-1, -0.237),
                            end: Alignment(0.693, -0.373),
                            colors: <Color>[Color(0x51d4cdff), Color(0x1662c3ff)],
                            stops: <double>[0, 1],
                          ),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // rectangle44veU (152:3729)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 12*fem, 0*fem),
                              width: 8*fem,
                              height: 30*fem,
                              decoration: BoxDecoration (
                                borderRadius: BorderRadius.circular(6*fem),
                                color: Color(0xff8f7aff),
                              ),
                            ),
                            Container(
                              // platesFwe (152:3728)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 250*fem, 2*fem),
                              child: Text(
                                'Plates',
                                style: SafeGoogleFont (
                                  'Poppins',
                                  fontSize: 13*ffem,
                                  fontWeight: FontWeight.w700,
                                  height: 1.5*ffem/fem,
                                  color: Color(0xff57336a),
                                ),
                              ),
                            ),
                            Container(
                              // polygon4Aoi (152:3727)
                              width: 8*fem,
                              height: 14*fem,
                              child: Image.asset(
                                'assets/images/polygon-4.png',
                                width: 8*fem,
                                height: 14*fem,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        // group22Juv (152:3735)
                        margin: EdgeInsets.fromLTRB(6*fem, 0*fem, 0*fem, 7*fem),
                        padding: EdgeInsets.fromLTRB(7*fem, 7*fem, 22*fem, 6*fem),
                        decoration: BoxDecoration (
                          borderRadius: BorderRadius.circular(8*fem),
                          gradient: LinearGradient (
                            begin: Alignment(-1, -0.237),
                            end: Alignment(0.693, -0.373),
                            colors: <Color>[Color(0x51d4cdff), Color(0x1662c3ff)],
                            stops: <double>[0, 1],
                          ),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // rectangle45Z5A (152:3739)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 12*fem, 0*fem),
                              width: 8*fem,
                              height: 30*fem,
                              decoration: BoxDecoration (
                                borderRadius: BorderRadius.circular(6*fem),
                                color: Color(0xff8f7aff),
                              ),
                            ),
                            Container(
                              // eggsHG4 (152:3738)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 260*fem, 2*fem),
                              child: Text(
                                'Eggs',
                                style: SafeGoogleFont (
                                  'Poppins',
                                  fontSize: 13*ffem,
                                  fontWeight: FontWeight.w700,
                                  height: 1.5*ffem/fem,
                                  color: Color(0xff57336a),
                                ),
                              ),
                            ),
                            Container(
                              // polygon5Cdv (152:3737)
                              width: 8*fem,
                              height: 14*fem,
                              child: Image.asset(
                                'assets/images/polygon-5.png',
                                width: 8*fem,
                                height: 14*fem,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        // group23MFv (152:3740)
                        margin: EdgeInsets.fromLTRB(6*fem, 0*fem, 0*fem, 0*fem),
                        padding: EdgeInsets.fromLTRB(7*fem, 7*fem, 22*fem, 6*fem),
                        decoration: BoxDecoration (
                          borderRadius: BorderRadius.circular(8*fem),
                          gradient: LinearGradient (
                            begin: Alignment(-1, -0.237),
                            end: Alignment(0.693, -0.373),
                            colors: <Color>[Color(0x51d4cdff), Color(0x1662c3ff)],
                            stops: <double>[0, 1],
                          ),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // rectangle461rG (152:3744)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 12*fem, 0*fem),
                              width: 8*fem,
                              height: 30*fem,
                              decoration: BoxDecoration (
                                borderRadius: BorderRadius.circular(6*fem),
                                color: Color(0xff8f7aff),
                              ),
                            ),
                            Container(
                              // conflakes9Bn (152:3743)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 224*fem, 2*fem),
                              child: Text(
                                'Conflakes',
                                style: SafeGoogleFont (
                                  'Poppins',
                                  fontSize: 13*ffem,
                                  fontWeight: FontWeight.w700,
                                  height: 1.5*ffem/fem,
                                  color: Color(0xff57336a),
                                ),
                              ),
                            ),
                            Container(
                              // polygon6TyA (152:3742)
                              width: 8*fem,
                              height: 14*fem,
                              child: Image.asset(
                                'assets/images/polygon-6.png',
                                width: 8*fem,
                                height: 14*fem,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  // autogroupzsncDBe (NCtm27CLEgRPAmCyq8ZSNC)
                  width: double.infinity,
                  height: 126*fem,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        // autogroupxtycxf2 (NCtmK1spqqJxca6iEaxTYC)
                        width: 390*fem,
                        height: double.infinity,
                        child: Stack(
                          children: [
                            Positioned(
                              // img57211recoveredgrey1728 (152:3482)
                              left: 38*fem,
                              top: 69*fem,
                              child: Align(
                                child: SizedBox(
                                  width: 27*fem,
                                  height: 20*fem,
                                  child: Image.asset(
                                    'assets/images/img5721-1-recovered-grey-1-EL8.png',
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // overviewpBS (152:3483)
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
                              // staffmanagementhW8 (152:3484)
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
                              // settingszVE (152:3485)
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
                              // staffgray1h8k (152:3486)
                              left: 237*fem,
                              top: 66*fem,
                              child: Align(
                                child: SizedBox(
                                  width: 30*fem,
                                  height: 23*fem,
                                  child: Image.asset(
                                    'assets/images/staff-gray-1-u28.png',
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // settingsgrey1dHJ (152:3487)
                              left: 331*fem,
                              top: 66*fem,
                              child: Align(
                                child: SizedBox(
                                  width: 32*fem,
                                  height: 26*fem,
                                  child: Image.asset(
                                    'assets/images/settings-grey-1-UW4.png',
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // rectangle17A2L (152:3488)
                              left: 103*fem,
                              top: 30*fem,
                              child: Align(
                                child: SizedBox(
                                  width: 83*fem,
                                  height: 96*fem,
                                  child: Image.asset(
                                    'assets/images/rectangle-17-2Ti.png',
                                    width: 83*fem,
                                    height: 96*fem,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // inventoryclicked1HMr (152:3489)
                              left: 132*fem,
                              top: 68*fem,
                              child: Align(
                                child: SizedBox(
                                  width: 26*fem,
                                  height: 25*fem,
                                  child: Image.asset(
                                    'assets/images/inventory-clicked-1-max.png',
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // vector2cQ8 (152:3494)
                              left: 0*fem,
                              top: 0*fem,
                              child: Align(
                                child: SizedBox(
                                  width: 390*fem,
                                  height: 126*fem,
                                  child: Image.asset(
                                    'assets/images/vector-2-SRn.png',
                                    width: 390*fem,
                                    height: 126*fem,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // inventoryXmz (152:3495)
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
                        // vector3rJU (152:3496)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 372.5*fem, 0.5*fem),
                        width: 102.5*fem,
                        height: 119.5*fem,
                        child: Image.asset(
                          'assets/images/vector-3-kfJ.png',
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
      ),
    );
  }
}