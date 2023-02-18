import 'package:flutter/material.dart';
import 'dart:ui';

import 'package:saletick/utilities/utils.dart';

class InventoryListPopupWidget extends StatelessWidget {
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
            // frame38MeQ (152:3226)
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
                  // autogroupdkyyd68 (NCtpQLtgoosh3SHeq4dkYY)
                  width: 391.5*fem,
                  height: 171.89*fem,
                  child: Stack(
                    children: [
                      Positioned(
                        // incomesummarykgY (152:3235)
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
                        // rectangle11cye (152:3239)
                        left: 0*fem,
                        top: 0*fem,
                        child: Align(
                          child: SizedBox(
                            width: 391.5*fem,
                            height: 171.89*fem,
                            child: Image.asset(
                              'assets/images/rectangle-11-L88.png',
                              width: 391.5*fem,
                              height: 171.89*fem,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        // group7j2g (152:3240)
                        left: 26*fem,
                        top: 18*fem,
                        child: Container(
                          width: 60*fem,
                          height: 57*fem,
                          child: Stack(
                            children: [
                              Positioned(
                                // ellipse4G2c (152:3241)
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
                                            'assets/images/ellipse-4-bg-EDN.png',
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                // ellipse5A7z (152:3242)
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
                        // group6dnG (152:3243)
                        left: 325*fem,
                        top: 31*fem,
                        child: Container(
                          width: 29*fem,
                          height: 31*fem,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // rectangle33A1W (152:3244)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 10*fem),
                                width: double.infinity,
                                height: 4*fem,
                                decoration: BoxDecoration (
                                  color: Color(0xff550080),
                                ),
                              ),
                              Container(
                                // rectangle34VZa (152:3245)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 9*fem),
                                width: double.infinity,
                                height: 4*fem,
                                decoration: BoxDecoration (
                                  color: Color(0xff550080),
                                ),
                              ),
                              Container(
                                // rectangle352ZW (152:3246)
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
                        // welcomederaPQ4 (152:3247)
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
                        // inventoryKwv (152:3249)
                        left: 92*fem,
                        top: 131*fem,
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
                        // avatardefaultsvgrepocom1cw2 (152:3250)
                        left: 60.625*fem,
                        top: 129.8125*fem,
                        child: Align(
                          child: SizedBox(
                            width: 21.75*fem,
                            height: 25.38*fem,
                            child: Image.asset(
                              'assets/images/avatar-default-svgrepo-com-1-w4L.png',
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
                  // autogroupdaheKqS (NCtsvQhL45AAgvDzc9DahE)
                  padding: EdgeInsets.fromLTRB(15*fem, 55.61*fem, 26*fem, 8*fem),
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // autogroups6f2eMv (NCtppqBtEikPUpCaF2s6F2)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 3*fem, 28*fem),
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
                              // searchcategorywM2 (152:3465)
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
                              // autogroupgyjpFsW (NCtq25N9YfoYaYp7sVGyJp)
                              padding: EdgeInsets.fromLTRB(25*fem, 12.28*fem, 22.8*fem, 11.28*fem),
                              height: double.infinity,
                              decoration: BoxDecoration (
                                color: Color(0xff8f7aff),
                                borderRadius: BorderRadius.circular(3*fem),
                              ),
                              child: Center(
                                // searchsvgrepocom11BmA (152:3466)
                                child: SizedBox(
                                  width: 18.21*fem,
                                  height: 19.45*fem,
                                  child: Image.asset(
                                    'assets/images/search-svgrepo-com-1-1-qxC.png',
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
                        // autogroupr6ueiFJ (NCtq8aBKgTnnrkYZsvr6uE)
                        margin: EdgeInsets.fromLTRB(18*fem, 0*fem, 7*fem, 11*fem),
                        width: double.infinity,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // categoriesddA (152:3454)
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
                              // addnewZFv (152:3256)
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
                              // Utg (152:3456)
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
                        // group8S4p (152:3252)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 7*fem),
                        padding: EdgeInsets.fromLTRB(7*fem, 7*fem, 22*fem, 6*fem),
                        width: double.infinity,
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
                              // rectangle414bz (152:3462)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 12*fem, 0*fem),
                              width: 8*fem,
                              height: 30*fem,
                              decoration: BoxDecoration (
                                borderRadius: BorderRadius.circular(6*fem),
                                color: Color(0xff8f7aff),
                              ),
                            ),
                            Container(
                              // detergentsyyr (152:3459)
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
                              // polygon1nAc (152:3457)
                              width: 8*fem,
                              height: 14*fem,
                              child: Image.asset(
                                'assets/images/polygon-1-JTa.png',
                                width: 8*fem,
                                height: 14*fem,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        // autogroupdyclv1v (NCtqM4pWFJ5BrgLWMYdyCL)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 7*fem),
                        width: double.infinity,
                        height: 43*fem,
                        child: Container(
                          // group18488 (152:3254)
                          padding: EdgeInsets.fromLTRB(7*fem, 7*fem, 18.88*fem, 6*fem),
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
                                // rectangle40x72 (152:3461)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 12*fem, 0*fem),
                                width: 8*fem,
                                height: 30*fem,
                                decoration: BoxDecoration (
                                  borderRadius: BorderRadius.circular(6*fem),
                                  color: Color(0xffc373eb),
                                ),
                              ),
                              Container(
                                // chocolatebarsgHv (152:3460)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 185.88*fem, 2*fem),
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
                                // polygon2Py2 (152:3458)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0*fem),
                                width: 14.23*fem,
                                height: 8.41*fem,
                                child: Image.asset(
                                  'assets/images/polygon-2-UEU.png',
                                  width: 14.23*fem,
                                  height: 8.41*fem,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        // autogroupopmrKLt (NCtqdeBDicW2vqSw4poPmr)
                        width: double.infinity,
                        height: 262*fem,
                        child: Stack(
                          children: [
                            Positioned(
                              // group9SwJ (152:3257)
                              left: 0*fem,
                              top: 0*fem,
                              child: Container(
                                width: 349*fem,
                                height: 59*fem,
                                decoration: BoxDecoration (
                                  borderRadius: BorderRadius.circular(8*fem),
                                  gradient: LinearGradient (
                                    begin: Alignment(-1, -0.237),
                                    end: Alignment(0.693, -0.373),
                                    colors: <Color>[Color(0x51d4cdff), Color(0x1662c3ff)],
                                    stops: <double>[0, 1],
                                  ),
                                ),
                                child: Stack(
                                  children: [
                                    Positioned(
                                      // snickersWgG (152:3259)
                                      left: 27*fem,
                                      top: 11*fem,
                                      child: Align(
                                        child: SizedBox(
                                          width: 49*fem,
                                          height: 17*fem,
                                          child: Text(
                                            'Snickers',
                                            style: SafeGoogleFont (
                                              'Poppins',
                                              fontSize: 11*ffem,
                                              fontWeight: FontWeight.w700,
                                              height: 1.5*ffem/fem,
                                              color: Color(0xff57336a),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      // group5zrL (152:3260)
                                      left: 27*fem,
                                      top: 21*fem,
                                      child: Container(
                                        width: 310*fem,
                                        height: 26*fem,
                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment.end,
                                          children: [
                                            Container(
                                              // eventdateandtimesymbolsvgrepoc (152:3261)
                                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 5*fem, 1.08*fem),
                                              width: 13*fem,
                                              height: 12.1*fem,
                                              child: Image.asset(
                                                'assets/images/event-date-and-time-symbol-svgrepo-com-1-Pc4.png',
                                                width: 13*fem,
                                                height: 12.1*fem,
                                              ),
                                            ),
                                            Container(
                                              // march2022QfA (152:3304)
                                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 16.63*fem, 0*fem),
                                              child: Text(
                                                '3 March 2022',
                                                style: SafeGoogleFont (
                                                  'Poppins',
                                                  fontSize: 9*ffem,
                                                  fontWeight: FontWeight.w600,
                                                  height: 1.5*ffem/fem,
                                                  color: Color(0xff927c9e),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              // avatardefaultsvgrepocom1ivk (152:3305)
                                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 6.63*fem, 1.81*fem),
                                              width: 9.75*fem,
                                              height: 11.38*fem,
                                              child: Image.asset(
                                                'assets/images/avatar-default-svgrepo-com-1-ffE.png',
                                                width: 9.75*fem,
                                                height: 11.38*fem,
                                              ),
                                            ),
                                            Container(
                                              // chiomajoyE8Q (152:3307)
                                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 22*fem, 1*fem),
                                              child: Text(
                                                'Chioma Joy',
                                                style: SafeGoogleFont (
                                                  'Poppins',
                                                  fontSize: 9*ffem,
                                                  fontWeight: FontWeight.w600,
                                                  height: 1.5*ffem/fem,
                                                  color: Color(0xff927c9e),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              // boxessvgrepocom19mA (152:3312)
                                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 8*fem, 2.13*fem),
                                              width: 13*fem,
                                              height: 10.74*fem,
                                              child: Image.asset(
                                                'assets/images/boxes-svgrepo-com-1-cVe.png',
                                                width: 13*fem,
                                                height: 10.74*fem,
                                              ),
                                            ),
                                            Container(
                                              // cartonsleftFZJ (152:3308)
                                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 27*fem, 0*fem),
                                              child: Text(
                                                '15 Cartons Left',
                                                style: SafeGoogleFont (
                                                  'Poppins',
                                                  fontSize: 9*ffem,
                                                  fontWeight: FontWeight.w600,
                                                  height: 1.5*ffem/fem,
                                                  color: Color(0xff927c9e),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              // autogroupk5o6ZZz (NCtr8o1K3DpxbLJ8BGK5o6)
                                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 3*fem),
                                              width: 5*fem,
                                              height: 23*fem,
                                              child: Image.asset(
                                                'assets/images/auto-group-k5o6.png',
                                                width: 5*fem,
                                                height: 23*fem,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              // group1152Y (152:3322)
                              left: 0*fem,
                              top: 65*fem,
                              child: Container(
                                width: 349*fem,
                                height: 59*fem,
                                decoration: BoxDecoration (
                                  borderRadius: BorderRadius.circular(8*fem),
                                  gradient: LinearGradient (
                                    begin: Alignment(-1, -0.237),
                                    end: Alignment(0.693, -0.373),
                                    colors: <Color>[Color(0x51d4cdff), Color(0x1662c3ff)],
                                    stops: <double>[0, 1],
                                  ),
                                ),
                                child: Stack(
                                  children: [
                                    Positioned(
                                      // marsjct (152:3324)
                                      left: 27*fem,
                                      top: 13*fem,
                                      child: Align(
                                        child: SizedBox(
                                          width: 29*fem,
                                          height: 17*fem,
                                          child: Text(
                                            'Mars',
                                            style: SafeGoogleFont (
                                              'Poppins',
                                              fontSize: 11*ffem,
                                              fontWeight: FontWeight.w700,
                                              height: 1.5*ffem/fem,
                                              color: Color(0xff57336a),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      // group5Rkc (152:3325)
                                      left: 27*fem,
                                      top: 19*fem,
                                      child: Container(
                                        width: 310*fem,
                                        height: 28*fem,
                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment.end,
                                          children: [
                                            Container(
                                              // eventdateandtimesymbolsvgrepoc (152:3326)
                                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 5*fem, 1.08*fem),
                                              width: 13*fem,
                                              height: 12.1*fem,
                                              child: Image.asset(
                                                'assets/images/event-date-and-time-symbol-svgrepo-com-1-sqi.png',
                                                width: 13*fem,
                                                height: 12.1*fem,
                                              ),
                                            ),
                                            Container(
                                              // march2022f9A (152:3369)
                                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 16.63*fem, 0*fem),
                                              child: Text(
                                                '3 March 2022',
                                                style: SafeGoogleFont (
                                                  'Poppins',
                                                  fontSize: 9*ffem,
                                                  fontWeight: FontWeight.w600,
                                                  height: 1.5*ffem/fem,
                                                  color: Color(0xff927c9e),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              // avatardefaultsvgrepocom1BNQ (152:3370)
                                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 6.63*fem, 1.81*fem),
                                              width: 9.75*fem,
                                              height: 11.38*fem,
                                              child: Image.asset(
                                                'assets/images/avatar-default-svgrepo-com-1-1fE.png',
                                                width: 9.75*fem,
                                                height: 11.38*fem,
                                              ),
                                            ),
                                            Container(
                                              // chiomajoy6VN (152:3372)
                                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 22*fem, 1*fem),
                                              child: Text(
                                                'Chioma Joy',
                                                style: SafeGoogleFont (
                                                  'Poppins',
                                                  fontSize: 9*ffem,
                                                  fontWeight: FontWeight.w600,
                                                  height: 1.5*ffem/fem,
                                                  color: Color(0xff927c9e),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              // boxessvgrepocom1pAU (152:3377)
                                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 8*fem, 2.13*fem),
                                              width: 13*fem,
                                              height: 10.74*fem,
                                              child: Image.asset(
                                                'assets/images/boxes-svgrepo-com-1-V12.png',
                                                width: 13*fem,
                                                height: 10.74*fem,
                                              ),
                                            ),
                                            Container(
                                              // cartonsleftime (152:3373)
                                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 27*fem, 0*fem),
                                              child: Text(
                                                '15 Cartons Left',
                                                style: SafeGoogleFont (
                                                  'Poppins',
                                                  fontSize: 9*ffem,
                                                  fontWeight: FontWeight.w600,
                                                  height: 1.5*ffem/fem,
                                                  color: Color(0xff927c9e),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              // autogroupsezcRg4 (NCtrWCZJy9wQ5SEUS6sezc)
                                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 5*fem),
                                              width: 5*fem,
                                              height: 23*fem,
                                              child: Image.asset(
                                                'assets/images/auto-group-sezc.png',
                                                width: 5*fem,
                                                height: 23*fem,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              // group12LY8 (152:3387)
                              left: 0*fem,
                              top: 134*fem,
                              child: Container(
                                width: 349*fem,
                                height: 59*fem,
                                decoration: BoxDecoration (
                                  borderRadius: BorderRadius.circular(8*fem),
                                  gradient: LinearGradient (
                                    begin: Alignment(-1, -0.237),
                                    end: Alignment(0.693, -0.373),
                                    colors: <Color>[Color(0x51d4cdff), Color(0x1662c3ff)],
                                    stops: <double>[0, 1],
                                  ),
                                ),
                                child: Stack(
                                  children: [
                                    Positioned(
                                      // bountyCaL (152:3389)
                                      left: 27*fem,
                                      top: 15*fem,
                                      child: Align(
                                        child: SizedBox(
                                          width: 41*fem,
                                          height: 17*fem,
                                          child: Text(
                                            'Bounty',
                                            style: SafeGoogleFont (
                                              'Poppins',
                                              fontSize: 11*ffem,
                                              fontWeight: FontWeight.w700,
                                              height: 1.5*ffem/fem,
                                              color: Color(0xff57336a),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      // group5uDr (152:3390)
                                      left: 27*fem,
                                      top: 20*fem,
                                      child: Container(
                                        width: 309*fem,
                                        height: 27*fem,
                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment.end,
                                          children: [
                                            Container(
                                              // eventdateandtimesymbolsvgrepoc (152:3391)
                                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 5*fem, 1.08*fem),
                                              width: 13*fem,
                                              height: 12.1*fem,
                                              child: Image.asset(
                                                'assets/images/event-date-and-time-symbol-svgrepo-com-1-fWp.png',
                                                width: 13*fem,
                                                height: 12.1*fem,
                                              ),
                                            ),
                                            Container(
                                              // march2022iwz (152:3434)
                                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 16.63*fem, 0*fem),
                                              child: Text(
                                                '3 March 2022',
                                                style: SafeGoogleFont (
                                                  'Poppins',
                                                  fontSize: 9*ffem,
                                                  fontWeight: FontWeight.w600,
                                                  height: 1.5*ffem/fem,
                                                  color: Color(0xff927c9e),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              // avatardefaultsvgrepocom1qmi (152:3435)
                                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 6.63*fem, 1.81*fem),
                                              width: 9.75*fem,
                                              height: 11.38*fem,
                                              child: Image.asset(
                                                'assets/images/avatar-default-svgrepo-com-1-QwS.png',
                                                width: 9.75*fem,
                                                height: 11.38*fem,
                                              ),
                                            ),
                                            Container(
                                              // chiomajoy9nQ (152:3437)
                                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 22*fem, 1*fem),
                                              child: Text(
                                                'Chioma Joy',
                                                style: SafeGoogleFont (
                                                  'Poppins',
                                                  fontSize: 9*ffem,
                                                  fontWeight: FontWeight.w600,
                                                  height: 1.5*ffem/fem,
                                                  color: Color(0xff927c9e),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              // boxessvgrepocom1Upg (152:3442)
                                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 8*fem, 2.13*fem),
                                              width: 13*fem,
                                              height: 10.74*fem,
                                              child: Image.asset(
                                                'assets/images/boxes-svgrepo-com-1-K28.png',
                                                width: 13*fem,
                                                height: 10.74*fem,
                                              ),
                                            ),
                                            Container(
                                              // cartonsleftPAx (152:3438)
                                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 26*fem, 0*fem),
                                              child: Text(
                                                '15 Cartons Left',
                                                style: SafeGoogleFont (
                                                  'Poppins',
                                                  fontSize: 9*ffem,
                                                  fontWeight: FontWeight.w600,
                                                  height: 1.5*ffem/fem,
                                                  color: Color(0xff927c9e),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              // autogroupnd5r7Mr (NCtrt76Ubqjw81qnECnd5r)
                                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 4*fem),
                                              width: 5*fem,
                                              height: 23*fem,
                                              child: Image.asset(
                                                'assets/images/auto-group-nd5r.png',
                                                width: 5*fem,
                                                height: 23*fem,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              // group16cZW (152:3452)
                              left: 23*fem,
                              top: 203*fem,
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
                                    'Add Category +',
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
                              // rectangle21CGp (14:885)
                              left: 108*fem,
                              top: 58*fem,
                              child: ClipRect(
                                child: BackdropFilter(
                                  filter: ImageFilter.blur (
                                    sigmaX: 11.5*fem,
                                    sigmaY: 11.5*fem,
                                  ),
                                  child: Align(
                                    child: SizedBox(
                                      width: 232*fem,
                                      height: 172*fem,
                                      child: Container(
                                        decoration: BoxDecoration (
                                          borderRadius: BorderRadius.circular(8*fem),
                                          gradient: LinearGradient (
                                            begin: Alignment(-1, -0.237),
                                            end: Alignment(0.693, -0.373),
                                            colors: <Color>[Color(0x3a5b44d5), Color(0x3a62c3ff)],
                                            stops: <double>[0, 1],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // saletagforonlineshopssvgrepoco (14:907)
                              left: 134*fem,
                              top: 127*fem,
                              child: Align(
                                child: SizedBox(
                                  width: 29.39*fem,
                                  height: 31*fem,
                                  child: Image.asset(
                                    'assets/images/sale-tag-for-online-shops-svgrepo-com-1-Q8Q.png',
                                    width: 29.39*fem,
                                    height: 31*fem,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // deleteXyJ (14:886)
                              left: 178*fem,
                              top: 191*fem,
                              child: Align(
                                child: SizedBox(
                                  width: 40*fem,
                                  height: 18*fem,
                                  child: TextButton(
                                    onPressed: () {},
                                    style: TextButton.styleFrom (
                                      padding: EdgeInsets.zero,
                                    ),
                                    child: Text(
                                      'Delete',
                                      style: SafeGoogleFont (
                                        'Poppins',
                                        fontSize: 12*ffem,
                                        fontWeight: FontWeight.w700,
                                        height: 1.5*ffem/fem,
                                        color: Color(0xff352490),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // addsale1da (14:887)
                              left: 182*fem,
                              top: 135*fem,
                              child: Align(
                                child: SizedBox(
                                  width: 55*fem,
                                  height: 18*fem,
                                  child: Text(
                                    'Add Sale',
                                    style: SafeGoogleFont (
                                      'Poppins',
                                      fontSize: 12*ffem,
                                      fontWeight: FontWeight.w700,
                                      height: 1.5*ffem/fem,
                                      color: Color(0xff352490),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // addtoinventory7wW (14:888)
                              left: 178*fem,
                              top: 78*fem,
                              child: Align(
                                child: SizedBox(
                                  width: 103*fem,
                                  height: 18*fem,
                                  child: Text(
                                    'Add to Inventory',
                                    style: SafeGoogleFont (
                                      'Poppins',
                                      fontSize: 12*ffem,
                                      fontWeight: FontWeight.w700,
                                      height: 1.5*ffem/fem,
                                      color: Color(0xff352490),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // line16q6p (14:895)
                              left: 116*fem,
                              top: 116*fem,
                              child: Align(
                                child: SizedBox(
                                  width: 205*fem,
                                  height: 1*fem,
                                  child: Container(
                                    decoration: BoxDecoration (
                                      color: Color(0xffffffff),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // line17xx8 (14:896)
                              left: 118*fem,
                              top: 171*fem,
                              child: Align(
                                child: SizedBox(
                                  width: 205*fem,
                                  height: 1*fem,
                                  child: Container(
                                    decoration: BoxDecoration (
                                      color: Color(0xffffffff),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // boxessvgrepocom1tqn (14:897)
                              left: 130*fem,
                              top: 74.5166015625*fem,
                              child: Align(
                                child: SizedBox(
                                  width: 29*fem,
                                  height: 23.97*fem,
                                  child: Image.asset(
                                    'assets/images/boxes-svgrepo-com-1-QeC.png',
                                    width: 29*fem,
                                    height: 23.97*fem,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // vectorCba (152:3745)
                              left: 139*fem,
                              top: 187*fem,
                              child: Align(
                                child: SizedBox(
                                  width: 19*fem,
                                  height: 24*fem,
                                  child: Image.asset(
                                    'assets/images/vector-9tL.png',
                                    width: 19*fem,
                                    height: 24*fem,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  // autogroupw1s6X84 (NCtsDbY11Dhfxd38FXW1s6)
                  width: double.infinity,
                  height: 126*fem,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        // autogrouptsbisBv (NCtsWb3gtqCvzqsgaXTSBi)
                        width: 390*fem,
                        height: double.infinity,
                        child: Stack(
                          children: [
                            Positioned(
                              // img57211recoveredgrey1orG (152:3227)
                              left: 38*fem,
                              top: 69*fem,
                              child: Align(
                                child: SizedBox(
                                  width: 27*fem,
                                  height: 20*fem,
                                  child: Image.asset(
                                    'assets/images/img5721-1-recovered-grey-1-d9S.png',
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // overviewKZi (152:3228)
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
                              // staffmanagementDQC (152:3229)
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
                              // settingsKTE (152:3230)
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
                              // staffgray138L (152:3231)
                              left: 237*fem,
                              top: 66*fem,
                              child: Align(
                                child: SizedBox(
                                  width: 30*fem,
                                  height: 23*fem,
                                  child: Image.asset(
                                    'assets/images/staff-gray-1-kWU.png',
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // settingsgrey1ATr (152:3232)
                              left: 331*fem,
                              top: 66*fem,
                              child: Align(
                                child: SizedBox(
                                  width: 32*fem,
                                  height: 26*fem,
                                  child: Image.asset(
                                    'assets/images/settings-grey-1-BTe.png',
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // rectangle17hCt (152:3233)
                              left: 103*fem,
                              top: 30*fem,
                              child: Align(
                                child: SizedBox(
                                  width: 83*fem,
                                  height: 96*fem,
                                  child: Image.asset(
                                    'assets/images/rectangle-17-Jqe.png',
                                    width: 83*fem,
                                    height: 96*fem,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // inventoryclicked1DS8 (152:3234)
                              left: 132*fem,
                              top: 68*fem,
                              child: Align(
                                child: SizedBox(
                                  width: 26*fem,
                                  height: 25*fem,
                                  child: Image.asset(
                                    'assets/images/inventory-clicked-1-N1v.png',
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // vector2kBA (152:3236)
                              left: 0*fem,
                              top: 0*fem,
                              child: Align(
                                child: SizedBox(
                                  width: 390*fem,
                                  height: 126*fem,
                                  child: Image.asset(
                                    'assets/images/vector-2-4Xi.png',
                                    width: 390*fem,
                                    height: 126*fem,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // inventoryGQQ (152:3237)
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
                        // vector3ypc (152:3238)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 372.5*fem, 0.5*fem),
                        width: 102.5*fem,
                        height: 119.5*fem,
                        child: Image.asset(
                          'assets/images/vector-3-7WQ.png',
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