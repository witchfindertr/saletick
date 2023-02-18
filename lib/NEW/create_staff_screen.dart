import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:saletick/utilities/utils.dart';


class CreateStaffScreen extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // frame29uGC (126:76)
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
              // autogrouparqtM8C (NCsnwdoS9kmqRPxHo2aRQt)
              width: 391.5*fem,
              height: 171.89*fem,
              child: Stack(
                children: [
                  Positioned(
                    // incomesummaryUCp (126:85)
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
                    // rectangle11LF2 (126:93)
                    left: 0*fem,
                    top: 0*fem,
                    child: Align(
                      child: SizedBox(
                        width: 391.5*fem,
                        height: 171.89*fem,
                        child: Image.asset(
                          'assets/images/rectangle-11-j3n.png',
                          width: 391.5*fem,
                          height: 171.89*fem,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // group7djv (126:94)
                    left: 26*fem,
                    top: 18*fem,
                    child: Container(
                      width: 60*fem,
                      height: 57*fem,
                      child: Stack(
                        children: [
                          Positioned(
                            // ellipse4mbE (126:95)
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
                                        'assets/images/ellipse-4-bg-Wo2.png',
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            // ellipse5GXz (126:96)
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
                    // group6YkQ (126:97)
                    left: 325*fem,
                    top: 31*fem,
                    child: Container(
                      width: 29*fem,
                      height: 31*fem,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // rectangle33eoS (126:98)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 10*fem),
                            width: double.infinity,
                            height: 4*fem,
                            decoration: BoxDecoration (
                              color: Color(0xff550080),
                            ),
                          ),
                          Container(
                            // rectangle34nPr (126:99)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 9*fem),
                            width: double.infinity,
                            height: 4*fem,
                            decoration: BoxDecoration (
                              color: Color(0xff550080),
                            ),
                          ),
                          Container(
                            // rectangle35Kua (126:100)
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
                    // welcomederaV3N (126:101)
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
                    // addstaffDNg (126:102)
                    left: 76*fem,
                    top: 131*fem,
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
                    // avatardefaultsvgrepocom1tji (126:114)
                    left: 44.625*fem,
                    top: 129.8125*fem,
                    child: Align(
                      child: SizedBox(
                        width: 21.75*fem,
                        height: 25.38*fem,
                        child: Image.asset(
                          'assets/images/avatar-default-svgrepo-com-1-Hm2.png',
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
              // autogroupfrp2nq6 (NCsqp4298byktGdAJAfrP2)
              width: double.infinity,
              height: 508.61*fem,
              child: Stack(
                children: [
                  Positioned(
                    // autogroupom7nvRW (NCsoN86dafeXrmsDCzom7N)
                    left: 40*fem,
                    top: 45.6110839844*fem,
                    child: Container(
                      width: 204*fem,
                      height: 15*fem,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // autogroupatvzdap (NCsoXsKPnMdQH5TtDfATVz)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 124*fem, 0*fem),
                            width: 32*fem,
                            height: double.infinity,
                            child: Stack(
                              children: [
                                Positioned(
                                  // namekvL (126:103)
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
                                  // nameGNt (126:104)
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
                            // surnamea8g (126:113)
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
                    // autogroup74xiKMA (NCspVvYKmBfpavdxWr74Xi)
                    left: 41*fem,
                    top: 251.6110839844*fem,
                    child: Container(
                      width: 250*fem,
                      height: 15*fem,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // password3HA (126:105)
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
                            // confirmpasswordZFW (126:108)
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
                    // uploadpicture6mE (126:106)
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
                    // addresszrc (126:107)
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
                    // autogroup5rbeuig (NCsoumrZR3RwKf5C1m5RbE)
                    left: 35*fem,
                    top: 113.6110839844*fem,
                    child: Container(
                      width: 265*fem,
                      height: 15*fem,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // emailRS8 (126:109)
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
                            // phonenumberM4t (126:110)
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
                    // autogroupbeygh8k (NCspDgWPRhhhtRJqVkBEYg)
                    left: 35*fem,
                    top: 178.6110839844*fem,
                    child: Container(
                      width: 247*fem,
                      height: 16*fem,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // positionbzp (126:111)
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
                            // qualificationtDE (126:112)
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
                    // autogroupzm5a12x (NCsoiHBiFiXjSgdAcfzM5a)
                    left: 35*fem,
                    top: 63.6110839844*fem,
                    child: Container(
                      width: 304*fem,
                      height: 32*fem,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // rectangle3jDr (126:116)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 24*fem, 0*fem),
                            width: 131*fem,
                            height: 32*fem,
                            decoration: BoxDecoration (
                              borderRadius: BorderRadius.circular(3*fem),
                              color: Color(0x428f7aff),
                            ),
                          ),
                          Container(
                            // rectangle18TQk (126:117)
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
                    // autogroupcxpnCdE (NCsp5BkYUtx5NJtZLFCXPN)
                    left: 35*fem,
                    top: 128.6110839844*fem,
                    child: Container(
                      width: 304*fem,
                      height: 32*fem,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // rectangle19w52 (126:118)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 12*fem, 0*fem),
                            width: 168*fem,
                            height: 32*fem,
                            decoration: BoxDecoration (
                              borderRadius: BorderRadius.circular(3*fem),
                              color: Color(0x428f7aff),
                            ),
                          ),
                          Container(
                            // rectangle244vL (126:119)
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
                    // autogroupt9vyQjJ (NCspMBHty159HaPCaiT9vY)
                    left: 35*fem,
                    top: 196.6110839844*fem,
                    child: Container(
                      width: 304*fem,
                      height: 32*fem,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // rectangle21Y4p (126:120)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 29*fem, 0*fem),
                            width: 151*fem,
                            height: 32*fem,
                            decoration: BoxDecoration (
                              borderRadius: BorderRadius.circular(3*fem),
                              color: Color(0x428f7aff),
                            ),
                          ),
                          Container(
                            // rectangle25TSg (126:121)
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
                    // autogrouphntibYt (NCspdAqFT7CDCqsqqBhnTi)
                    left: 35*fem,
                    top: 266.6110839844*fem,
                    child: Container(
                      width: 304*fem,
                      height: 32*fem,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // rectangle22KDz (126:122)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 8*fem, 0*fem),
                            width: 147*fem,
                            height: 32*fem,
                            decoration: BoxDecoration (
                              borderRadius: BorderRadius.circular(3*fem),
                              color: Color(0x428f7aff),
                            ),
                          ),
                          Container(
                            // rectangle23rDv (126:124)
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
                    // rectangle26zqv (126:123)
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
                    // rectangle20WpG (126:125)
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
              // autogroupxqztdtt (NCspuANbwDKH87NV5exQzt)
              width: double.infinity,
              height: 163*fem,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    // autogroupcbegPNG (NCsqGpRBiXGmPT9K78CBeG)
                    width: 390*fem,
                    height: double.infinity,
                    child: Stack(
                      children: [
                        Positioned(
                          // img57211recoveredgrey17ZA (126:77)
                          left: 38*fem,
                          top: 106*fem,
                          child: Align(
                            child: SizedBox(
                              width: 27*fem,
                              height: 20*fem,
                              child: Image.asset(
                                'assets/images/img5721-1-recovered-grey-1-sda.png',
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // overviewown (126:78)
                          left: 29*fem,
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
                          // staffmanagement6vt (126:79)
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
                          // settingsPuz (126:80)
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
                          // staffgray1Jn4 (126:81)
                          left: 237*fem,
                          top: 103*fem,
                          child: Align(
                            child: SizedBox(
                              width: 30*fem,
                              height: 23*fem,
                              child: Image.asset(
                                'assets/images/staff-gray-1-xd6.png',
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // settingsgrey1pEc (126:82)
                          left: 331*fem,
                          top: 103*fem,
                          child: Align(
                            child: SizedBox(
                              width: 32*fem,
                              height: 26*fem,
                              child: Image.asset(
                                'assets/images/settings-grey-1-kkg.png',
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // rectangle17k8G (126:83)
                          left: 103*fem,
                          top: 67*fem,
                          child: Align(
                            child: SizedBox(
                              width: 83*fem,
                              height: 96*fem,
                              child: Image.asset(
                                'assets/images/rectangle-17-8UQ.png',
                                width: 83*fem,
                                height: 96*fem,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // inventoryclicked1ejS (126:84)
                          left: 132*fem,
                          top: 105*fem,
                          child: Align(
                            child: SizedBox(
                              width: 26*fem,
                              height: 25*fem,
                              child: Image.asset(
                                'assets/images/inventory-clicked-1-udA.png',
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // metresASt (126:86)
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
                          // metresGVv (126:87)
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
                          // vector2PKe (126:88)
                          left: 0*fem,
                          top: 37*fem,
                          child: Align(
                            child: SizedBox(
                              width: 390*fem,
                              height: 126*fem,
                              child: Image.asset(
                                'assets/images/vector-2-u5S.png',
                                width: 390*fem,
                                height: 126*fem,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // rectangle2u36 (126:89)
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
                          // inventoryY64 (126:90)
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
                          // 3Hi (126:91)
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
                    // vector3jgL (126:92)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 372.5*fem, 0.5*fem),
                    width: 102.5*fem,
                    height: 119.5*fem,
                    child: Image.asset(
                      'assets/images/vector-3-LHv.png',
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
          );
  }
}