import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:saletick/utilities/utils.dart';

class AddStaffScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Container(
          // frame26rvL (26:2)
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
                // autogroupedvaVyJ (NCsRDvf6McDXyTXuhrEDVa)
                width: 391.5*fem,
                height: 171.89*fem,
                child: Stack(
                  children: [
                    Positioned(
                      // incomesummaryco2 (26:31)
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
                      // rectangle11HeG (26:3)
                      left: 0*fem,
                      top: 0*fem,
                      child: Align(
                        child: SizedBox(
                          width: 391.5*fem,
                          height: 171.89*fem,
                          child: Image.asset(
                            'assets/images/rectangle-11-XFe.png',
                            width: 391.5*fem,
                            height: 171.89*fem,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // group7zHn (32:345)
                      left: 26*fem,
                      top: 18*fem,
                      child: Container(
                        width: 60*fem,
                        height: 57*fem,
                        child: Stack(
                          children: [
                            Positioned(
                              // ellipse4ija (26:297)
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
                                          'assets/images/ellipse-4-bg-W8g.png',
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // ellipse5DAY (26:298)
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
                      // group6Tqa (32:344)
                      left: 325*fem,
                      top: 31*fem,
                      child: Container(
                        width: 29*fem,
                        height: 31*fem,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // rectangle33fwe (26:294)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 10*fem),
                              width: double.infinity,
                              height: 4*fem,
                              decoration: BoxDecoration (
                                color: Color(0xff550080),
                              ),
                            ),
                            Container(
                              // rectangle34Cgg (26:295)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 9*fem),
                              width: double.infinity,
                              height: 4*fem,
                              decoration: BoxDecoration (
                                color: Color(0xff550080),
                              ),
                            ),
                            Container(
                              // rectangle35wPN (26:296)
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
                      // welcomedera6XA (26:32)
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
                      // addstaffzkx (30:343)
                      left: 76*fem,
                      top: 125*fem,
                      child: Align(
                        child: SizedBox(
                          width: 76*fem,
                          height: 24*fem,
                          child: Text(
                            'Add Staff',
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
                      // avatardefaultsvgrepocom1h9a (35:375)
                      left: 44.625*fem,
                      top: 123.8125*fem,
                      child: Align(
                        child: SizedBox(
                          width: 21.75*fem,
                          height: 25.38*fem,
                          child: Image.asset(
                            'assets/images/avatar-default-svgrepo-com-1-K1J.png',
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
                // autogroupe24xoCc (NCsU8vdq8gVcq8WPpre24x)
                width: double.infinity,
                height: 508.61*fem,
                child: Stack(
                  children: [
                    Positioned(
                      // autogroupeq4g8kg (NCsRaR4xAVZTw25AoheQ4G)
                      left: 40*fem,
                      top: 45.6110839844*fem,
                      child: Container(
                        width: 204*fem,
                        height: 15*fem,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // autogroupmvlcrAt (NCsRkfGt4wERuoLoMdMVLc)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 124*fem, 0*fem),
                              width: 32*fem,
                              height: double.infinity,
                              child: Stack(
                                children: [
                                  Positioned(
                                    // namemoe (35:385)
                                    left: 0*fem,
                                    top: 0*fem,
                                    child: Align(
                                      child: SizedBox(
                                        width: 32*fem,
                                        height: 15*fem,
                                        child: Text(
                                          'Name',
                                          style: SafeGoogleFont (
                                            'Poppins',
                                            fontSize: 10*ffem,
                                            fontWeight: FontWeight.w700,
                                            height: 1.5*ffem/fem,
                                            color: Color(0xff430463),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    // nameGkQ (35:388)
                                    left: 0*fem,
                                    top: 0*fem,
                                    child: Align(
                                      child: SizedBox(
                                        width: 32*fem,
                                        height: 15*fem,
                                        child: Text(
                                          'Name',
                                          style: SafeGoogleFont (
                                            'Poppins',
                                            fontSize: 10*ffem,
                                            fontWeight: FontWeight.w700,
                                            height: 1.5*ffem/fem,
                                            color: Color(0xff430463),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Text(
                              // surnameaFJ (35:386)
                              'Surname',
                              style: SafeGoogleFont (
                                'Poppins',
                                fontSize: 10*ffem,
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
                      // autogroupeuhaKTn (NCsShDYJwWCZYDW132EuhA)
                      left: 41*fem,
                      top: 251.6110839844*fem,
                      child: Container(
                        width: 250*fem,
                        height: 15*fem,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // passwordSYQ (35:394)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 104*fem, 0*fem),
                              child: Text(
                                'Password',
                                style: SafeGoogleFont (
                                  'Poppins',
                                  fontSize: 10*ffem,
                                  fontWeight: FontWeight.w700,
                                  height: 1.5*ffem/fem,
                                  color: Color(0xff430463),
                                ),
                              ),
                            ),
                            Text(
                              // confirmpasswordm4t (35:395)
                              'Confirm Password',
                              style: SafeGoogleFont (
                                'Poppins',
                                fontSize: 10*ffem,
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
                      // uploadpicturehUL (35:398)
                      left: 41*fem,
                      top: 313.6110839844*fem,
                      child: Align(
                        child: SizedBox(
                          width: 76*fem,
                          height: 15*fem,
                          child: Text(
                            'Upload Picture',
                            style: SafeGoogleFont (
                              'Poppins',
                              fontSize: 10*ffem,
                              fontWeight: FontWeight.w700,
                              height: 1.5*ffem/fem,
                              color: Color(0xff430463),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // addressc5W (35:396)
                      left: 44*fem,
                      top: 375.6110839844*fem,
                      child: Align(
                        child: SizedBox(
                          width: 43*fem,
                          height: 15*fem,
                          child: Text(
                            'Address',
                            style: SafeGoogleFont (
                              'Poppins',
                              fontSize: 10*ffem,
                              fontWeight: FontWeight.w700,
                              height: 1.5*ffem/fem,
                              color: Color(0xff430463),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // autogroup9f8c7Y4 (NCsS8Q9f8hobmZ4TJe9f8c)
                      left: 35*fem,
                      top: 113.6110839844*fem,
                      child: Container(
                        width: 265*fem,
                        height: 15*fem,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // emailEcg (35:389)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 153*fem, 0*fem),
                              child: Text(
                                'E-mail',
                                style: SafeGoogleFont (
                                  'Poppins',
                                  fontSize: 10*ffem,
                                  fontWeight: FontWeight.w700,
                                  height: 1.5*ffem/fem,
                                  color: Color(0xff430463),
                                ),
                              ),
                            ),
                            Text(
                              // phonenumberZ9A (35:390)
                              'Phone Number',
                              style: SafeGoogleFont (
                                'Poppins',
                                fontSize: 10*ffem,
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
                      // autogroup1sva6et (NCsSRyUi1XcdxfWo6T1sVa)
                      left: 35*fem,
                      top: 178.6110839844*fem,
                      child: Container(
                        width: 247*fem,
                        height: 16*fem,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // positionct8 (35:391)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 138*fem, 1*fem),
                              child: Text(
                                'Position',
                                style: SafeGoogleFont (
                                  'Poppins',
                                  fontSize: 10*ffem,
                                  fontWeight: FontWeight.w700,
                                  height: 1.5*ffem/fem,
                                  color: Color(0xff430463),
                                ),
                              ),
                            ),
                            Container(
                              // qualificationkUY (35:393)
                              margin: EdgeInsets.fromLTRB(0*fem, 1*fem, 0*fem, 0*fem),
                              child: Text(
                                'Qualification',
                                style: SafeGoogleFont (
                                  'Poppins',
                                  fontSize: 10*ffem,
                                  fontWeight: FontWeight.w700,
                                  height: 1.5*ffem/fem,
                                  color: Color(0xff430463),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      // autogroupopdnfbW (NCsRrzRfdozK1BBbWyopdn)
                      left: 35*fem,
                      top: 63.6110839844*fem,
                      child: Container(
                        width: 304*fem,
                        height: 32*fem,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // rectangle3CLY (35:377)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 24*fem, 0*fem),
                              width: 131*fem,
                              height: 32*fem,
                              decoration: BoxDecoration (
                                borderRadius: BorderRadius.circular(3*fem),
                                color: Color(0x428f7aff),
                              ),
                            ),
                            Container(
                              // rectangle188EC (35:378)
                              width: 149*fem,
                              height: 32*fem,
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
                      // autogrouptar4GrC (NCsSGeQvE8iBWReFhWTAr4)
                      left: 35*fem,
                      top: 128.6110839844*fem,
                      child: Container(
                        width: 304*fem,
                        height: 32*fem,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // rectangle19c9N (35:379)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 12*fem, 0*fem),
                              width: 168*fem,
                              height: 32*fem,
                              decoration: BoxDecoration (
                                borderRadius: BorderRadius.circular(3*fem),
                                color: Color(0x428f7aff),
                              ),
                            ),
                            Container(
                              // rectangle24jjn (35:387)
                              width: 124*fem,
                              height: 32*fem,
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
                      // autogroupkz4qVU4 (NCsSa8umpVuY789mZmkz4Q)
                      left: 35*fem,
                      top: 196.6110839844*fem,
                      child: Container(
                        width: 304*fem,
                        height: 32*fem,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // rectangle21q28 (35:381)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 29*fem, 0*fem),
                              width: 151*fem,
                              height: 32*fem,
                              decoration: BoxDecoration (
                                borderRadius: BorderRadius.circular(3*fem),
                                color: Color(0x428f7aff),
                              ),
                            ),
                            Container(
                              // rectangle25mAg (35:392)
                              width: 124*fem,
                              height: 32*fem,
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
                      // autogroupsdxkJwJ (NCsSqDJzBZG6VrFKfFsDxk)
                      left: 35*fem,
                      top: 266.6110839844*fem,
                      child: Container(
                        width: 304*fem,
                        height: 32*fem,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // rectangle223P6 (35:382)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 8*fem, 0*fem),
                              width: 147*fem,
                              height: 32*fem,
                              decoration: BoxDecoration (
                                borderRadius: BorderRadius.circular(3*fem),
                                color: Color(0x428f7aff),
                              ),
                            ),
                            Container(
                              // rectangle23y1r (35:383)
                              width: 149*fem,
                              height: 32*fem,
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
                      // rectangle26kwi (35:397)
                      left: 37*fem,
                      top: 329.6110839844*fem,
                      child: Align(
                        child: SizedBox(
                          width: 302*fem,
                          height: 32*fem,
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
                      // rectangle20sFe (35:380)
                      left: 38*fem,
                      top: 390.6110839844*fem,
                      child: Align(
                        child: SizedBox(
                          width: 301*fem,
                          height: 83*fem,
                          child: Container(
                            decoration: BoxDecoration (
                              borderRadius: BorderRadius.circular(3*fem),
                              color: Color(0x428f7aff),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                // autogroup6galPDz (NCsT6TNb7Xr25QEXbq6GAL)
                width: double.infinity,
                height: 163*fem,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      // autogroupnnxzwFW (NCsTYSdHeho1CDAKdbNnXz)
                      width: 390*fem,
                      height: double.infinity,
                      child: Stack(
                        children: [
                          Positioned(
                            // img57211recoveredgrey14qv (26:4)
                            left: 38*fem,
                            top: 106*fem,
                            child: Align(
                              child: SizedBox(
                                width: 27*fem,
                                height: 20*fem,
                                child: Image.asset(
                                  'assets/images/img5721-1-recovered-grey-1-1bW.png',
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            // overviewPNQ (26:5)
                            left: 28.5*fem,
                            top: 131*fem,
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
                            // staffmanagementg6c (26:6)
                            left: 225.5*fem,
                            top: 132*fem,
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
                            // settingsybW (26:7)
                            left: 331*fem,
                            top: 134*fem,
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
                            // staffgray1gkp (26:8)
                            left: 237*fem,
                            top: 103*fem,
                            child: Align(
                              child: SizedBox(
                                width: 30*fem,
                                height: 23*fem,
                                child: Image.asset(
                                  'assets/images/staff-gray-1.png',
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            // settingsgrey1c8g (26:9)
                            left: 331*fem,
                            top: 103*fem,
                            child: Align(
                              child: SizedBox(
                                width: 32*fem,
                                height: 26*fem,
                                child: Image.asset(
                                  'assets/images/settings-grey-1.png',
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            // rectangle17jj6 (26:10)
                            left: 103*fem,
                            top: 67*fem,
                            child: Align(
                              child: SizedBox(
                                width: 83*fem,
                                height: 96*fem,
                                child: Image.asset(
                                  'assets/images/rectangle-17-u5A.png',
                                  width: 83*fem,
                                  height: 96*fem,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            // inventoryclicked13jn (26:11)
                            left: 132*fem,
                            top: 105*fem,
                            child: Align(
                              child: SizedBox(
                                width: 26*fem,
                                height: 25*fem,
                                child: Image.asset(
                                  'assets/images/inventory-clicked-1-dVr.png',
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            // metresMkU (26:36)
                            left: 309*fem,
                            top: 1*fem,
                            child: Align(
                              child: SizedBox(
                                width: 47*fem,
                                height: 13*fem,
                                child: Text(
                                  '4 metres',
                                  style: SafeGoogleFont (
                                    'Montserrat',
                                    fontSize: 10*ffem,
                                    fontWeight: FontWeight.w600,
                                    height: 1.2175*ffem/fem,
                                    color: Color(0xff979696),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            // metresrBS (26:37)
                            left: 307*fem,
                            top: 0*fem,
                            child: Align(
                              child: SizedBox(
                                width: 47*fem,
                                height: 13*fem,
                                child: Text(
                                  '4 metres',
                                  style: SafeGoogleFont (
                                    'Montserrat',
                                    fontSize: 10*ffem,
                                    fontWeight: FontWeight.w600,
                                    height: 1.2175*ffem/fem,
                                    color: Color(0xff979696),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            // vector2m3W (26:299)
                            left: 0*fem,
                            top: 37*fem,
                            child: Align(
                              child: SizedBox(
                                width: 390*fem,
                                height: 126*fem,
                                child: Image.asset(
                                  'assets/images/vector-2-SGQ.png',
                                  width: 390*fem,
                                  height: 126*fem,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            // rectangle2gwA (26:300)
                            left: 293*fem,
                            top: 0*fem,
                            child: Align(
                              child: SizedBox(
                                width: 75*fem,
                                height: 73*fem,
                                child: Container(
                                  decoration: BoxDecoration (
                                    borderRadius: BorderRadius.circular(5*fem),
                                    gradient: LinearGradient (
                                      begin: Alignment(0, -1),
                                      end: Alignment(0, 1),
                                      colors: <Color>[Color(0xff8f7aff), Color(0xff74caff)],
                                      stops: <double>[0, 1],
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Color(0x1c22092e),
                                        offset: Offset(0*fem, 2*fem),
                                        blurRadius: 5*fem,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            // inventorykAL (26:301)
                            left: 120*fem,
                            top: 130*fem,
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
                          Positioned(
                            // TaY (26:302)
                            left: 315*fem,
                            top: 4*fem,
                            child: Align(
                              child: SizedBox(
                                width: 28*fem,
                                height: 59*fem,
                                child: TextButton(
                                  onPressed: () {},
                                  style: TextButton.styleFrom (
                                    padding: EdgeInsets.zero,
                                  ),
                                  child: Text(
                                    '+',
                                    style: SafeGoogleFont (
                                      'Montserrat',
                                      fontSize: 48*ffem,
                                      fontWeight: FontWeight.w500,
                                      height: 1.2175*ffem/fem,
                                      color: Color(0xffffffff),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // vector3xGQ (26:341)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 372.5*fem, 0.5*fem),
                      width: 102.5*fem,
                      height: 119.5*fem,
                      child: Image.asset(
                        'assets/images/vector-3.png',
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