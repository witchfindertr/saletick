import 'package:flutter/material.dart';
import 'package:saletick/utilities/utils.dart';


class StaffListScreen extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // frame30ErL (126:126)
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
              // autogroupq5jwJrC (NCsxu1t3GjTvMGdwEpq5jW)
              width: 391.5*fem,
              height: 171.89*fem,
              child: Stack(
                children: [
                  Positioned(
                    // incomesummary3Hz (126:135)
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
                    // rectangle1184Y (126:143)
                    left: 0*fem,
                    top: 0*fem,
                    child: Align(
                      child: SizedBox(
                        width: 391.5*fem,
                        height: 171.89*fem,
                        child: Image.asset(
                          'assets/images/rectangle-11-ZjW.png',
                          width: 391.5*fem,
                          height: 171.89*fem,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // group7Sb2 (126:144)
                    left: 26*fem,
                    top: 18*fem,
                    child: Container(
                      width: 60*fem,
                      height: 57*fem,
                      child: Stack(
                        children: [
                          Positioned(
                            // ellipse4aSL (126:145)
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
                                        'assets/images/ellipse-4-bg-pi4.png',
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            // ellipse5fya (126:146)
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
                    // group6YnU (126:147)
                    left: 325*fem,
                    top: 31*fem,
                    child: Container(
                      width: 29*fem,
                      height: 31*fem,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // rectangle33s44 (126:148)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 10*fem),
                            width: double.infinity,
                            height: 4*fem,
                            decoration: BoxDecoration (
                              color: Color(0xff550080),
                            ),
                          ),
                          Container(
                            // rectangle34QJt (126:149)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 9*fem),
                            width: double.infinity,
                            height: 4*fem,
                            decoration: BoxDecoration (
                              color: Color(0xff550080),
                            ),
                          ),
                          Container(
                            // rectangle35jc4 (126:150)
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
                    // welcomederaVbE (126:151)
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
                    // managementFD2 (126:152)
                    left: 82*fem,
                    top: 134*fem,
                    child: Align(
                      child: SizedBox(
                        width: 112*fem,
                        height: 24*fem,
                        child: Text(
                          'Management',
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
                    // staffLVN (126:176)
                    left: 82*fem,
                    top: 113*fem,
                    child: Align(
                      child: SizedBox(
                        width: 43*fem,
                        height: 24*fem,
                        child: Text(
                          'Staff \n',
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
                    // avatardefaultsvgrepocom1rCp (126:164)
                    left: 50.625*fem,
                    top: 122.8125*fem,
                    child: Align(
                      child: SizedBox(
                        width: 21.75*fem,
                        height: 25.38*fem,
                        child: Image.asset(
                          'assets/images/avatar-default-svgrepo-com-1-EiC.png',
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
              // autogroup8ufek3J (NCt354bPvFHgZ1d3z28ufE)
              padding: EdgeInsets.fromLTRB(20*fem, 22.61*fem, 22*fem, 6*fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // autogroupmddsrc8 (NCsyLW9a79ioubtmjKmDDS)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 2*fem, 13*fem),
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
                          // searchstaffwda (126:237)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 103*fem, 2*fem),
                          child: Text(
                            'Search Staff',
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
                          // autogroup5tkaTM2 (NCsyYL9CQK5kAE86pb5tKa)
                          padding: EdgeInsets.fromLTRB(25*fem, 12.28*fem, 22.79*fem, 11.28*fem),
                          height: double.infinity,
                          decoration: BoxDecoration (
                            color: Color(0xff8f7aff),
                            borderRadius: BorderRadius.circular(3*fem),
                          ),
                          child: Center(
                            // searchsvgrepocom11msW (127:238)
                            child: SizedBox(
                              width: 18.21*fem,
                              height: 19.45*fem,
                              child: Image.asset(
                                'assets/images/search-svgrepo-com-1-1.png',
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
                    // autogroupydckVYc (NCsyefHyyBqdFbxtywYDck)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 2*fem, 6*fem),
                    padding: EdgeInsets.fromLTRB(12*fem, 11*fem, 15*fem, 11*fem),
                    height: 53*fem,
                    decoration: BoxDecoration (
                      color: Color(0x1e8f7aff),
                      borderRadius: BorderRadius.circular(3*fem),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // ellipse6BAY (126:185)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 20*fem, 0*fem),
                          width: 31*fem,
                          height: 31*fem,
                          decoration: BoxDecoration (
                            borderRadius: BorderRadius.circular(15.5*fem),
                            image: DecorationImage (
                              fit: BoxFit.cover,
                              image: AssetImage (
                                'assets/images/ellipse-6-bg.png',
                              ),
                            ),
                          ),
                        ),
                        Container(
                          // annetteblackVBE (126:153)
                          margin: EdgeInsets.fromLTRB(0*fem, 1*fem, 177*fem, 0*fem),
                          child: Text(
                            'Annette Black',
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
                          // group8D7E (126:181)
                          width: 4*fem,
                          height: double.infinity,
                          decoration: BoxDecoration (
                            borderRadius: BorderRadius.circular(12*fem),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // rectangle339ma (126:182)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 10*fem),
                                width: double.infinity,
                                height: 4*fem,
                                decoration: BoxDecoration (
                                  borderRadius: BorderRadius.circular(12*fem),
                                  color: Color(0xff550080),
                                ),
                              ),
                              Container(
                                // rectangle34gmW (126:183)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 9*fem),
                                width: double.infinity,
                                height: 4*fem,
                                decoration: BoxDecoration (
                                  borderRadius: BorderRadius.circular(12*fem),
                                  color: Color(0xff550080),
                                ),
                              ),
                              Container(
                                // rectangle35DmS (126:184)
                                width: double.infinity,
                                height: 4*fem,
                                decoration: BoxDecoration (
                                  borderRadius: BorderRadius.circular(12*fem),
                                  color: Color(0xff550080),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // autogrouptnzna6C (NCsz2UzxKR2UhmdNrVtnZN)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 2*fem, 6*fem),
                    padding: EdgeInsets.fromLTRB(12*fem, 11*fem, 15*fem, 11*fem),
                    height: 53*fem,
                    decoration: BoxDecoration (
                      color: Color(0x1e8f7aff),
                      borderRadius: BorderRadius.circular(3*fem),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // ellipse7UBa (126:192)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 20*fem, 0*fem),
                          width: 31*fem,
                          height: 31*fem,
                          decoration: BoxDecoration (
                            borderRadius: BorderRadius.circular(15.5*fem),
                            image: DecorationImage (
                              fit: BoxFit.cover,
                              image: AssetImage (
                                'assets/images/ellipse-7-bg.png',
                              ),
                            ),
                          ),
                        ),
                        Container(
                          // ronaldrichardszQp (126:187)
                          margin: EdgeInsets.fromLTRB(0*fem, 1*fem, 163*fem, 0*fem),
                          child: Text(
                            'Ronald Richards',
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
                          // group9WPA (126:188)
                          width: 4*fem,
                          height: double.infinity,
                          decoration: BoxDecoration (
                            borderRadius: BorderRadius.circular(12*fem),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // rectangle3349n (126:189)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 10*fem),
                                width: double.infinity,
                                height: 4*fem,
                                decoration: BoxDecoration (
                                  borderRadius: BorderRadius.circular(12*fem),
                                  color: Color(0xff550080),
                                ),
                              ),
                              Container(
                                // rectangle34bQc (126:190)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 9*fem),
                                width: double.infinity,
                                height: 4*fem,
                                decoration: BoxDecoration (
                                  borderRadius: BorderRadius.circular(12*fem),
                                  color: Color(0xff550080),
                                ),
                              ),
                              Container(
                                // rectangle35L7J (126:191)
                                width: double.infinity,
                                height: 4*fem,
                                decoration: BoxDecoration (
                                  borderRadius: BorderRadius.circular(12*fem),
                                  color: Color(0xff550080),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // autogroupy1be5ag (NCszKeB2mwm6vpMb2ay1BE)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 2*fem, 6*fem),
                    padding: EdgeInsets.fromLTRB(12*fem, 11*fem, 15*fem, 11*fem),
                    height: 53*fem,
                    decoration: BoxDecoration (
                      color: Color(0x1e8f7aff),
                      borderRadius: BorderRadius.circular(3*fem),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // ellipse8As2 (126:199)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 20*fem, 0*fem),
                          width: 31*fem,
                          height: 31*fem,
                          decoration: BoxDecoration (
                            borderRadius: BorderRadius.circular(15.5*fem),
                            image: DecorationImage (
                              fit: BoxFit.cover,
                              image: AssetImage (
                                'assets/images/ellipse-8-bg.png',
                              ),
                            ),
                          ),
                        ),
                        Container(
                          // eleanorpena5UC (126:194)
                          margin: EdgeInsets.fromLTRB(0*fem, 1*fem, 183*fem, 0*fem),
                          child: Text(
                            'Eleanor Pena',
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
                          // group10zbA (126:195)
                          width: 4*fem,
                          height: double.infinity,
                          decoration: BoxDecoration (
                            borderRadius: BorderRadius.circular(12*fem),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // rectangle33wWQ (126:196)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 10*fem),
                                width: double.infinity,
                                height: 4*fem,
                                decoration: BoxDecoration (
                                  borderRadius: BorderRadius.circular(12*fem),
                                  color: Color(0xff550080),
                                ),
                              ),
                              Container(
                                // rectangle34UmE (126:197)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 9*fem),
                                width: double.infinity,
                                height: 4*fem,
                                decoration: BoxDecoration (
                                  borderRadius: BorderRadius.circular(12*fem),
                                  color: Color(0xff550080),
                                ),
                              ),
                              Container(
                                // rectangle35DTv (126:198)
                                width: double.infinity,
                                height: 4*fem,
                                decoration: BoxDecoration (
                                  borderRadius: BorderRadius.circular(12*fem),
                                  color: Color(0xff550080),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // autogroupjqg4yT6 (NCszb3u2GqaPhCESpFJqg4)
                    margin: EdgeInsets.fromLTRB(2*fem, 0*fem, 0*fem, 6*fem),
                    padding: EdgeInsets.fromLTRB(12*fem, 12*fem, 15*fem, 10*fem),
                    height: 53*fem,
                    decoration: BoxDecoration (
                      color: Color(0x1e8f7aff),
                      borderRadius: BorderRadius.circular(3*fem),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // ellipse9UPr (126:206)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 20*fem, 0*fem),
                          width: 31*fem,
                          height: 31*fem,
                          decoration: BoxDecoration (
                            borderRadius: BorderRadius.circular(15.5*fem),
                            image: DecorationImage (
                              fit: BoxFit.cover,
                              image: AssetImage (
                                'assets/images/ellipse-9-bg-vrU.png',
                              ),
                            ),
                          ),
                        ),
                        Container(
                          // estherhowardPmi (126:201)
                          margin: EdgeInsets.fromLTRB(0*fem, 1*fem, 174*fem, 0*fem),
                          child: Text(
                            'Esther Howard',
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
                          // group11X7E (126:202)
                          width: 4*fem,
                          height: double.infinity,
                          decoration: BoxDecoration (
                            borderRadius: BorderRadius.circular(12*fem),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // rectangle33TWg (126:203)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 10*fem),
                                width: double.infinity,
                                height: 4*fem,
                                decoration: BoxDecoration (
                                  borderRadius: BorderRadius.circular(12*fem),
                                  color: Color(0xff550080),
                                ),
                              ),
                              Container(
                                // rectangle34oKe (126:204)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 9*fem),
                                width: double.infinity,
                                height: 4*fem,
                                decoration: BoxDecoration (
                                  borderRadius: BorderRadius.circular(12*fem),
                                  color: Color(0xff550080),
                                ),
                              ),
                              Container(
                                // rectangle35wgk (126:205)
                                width: double.infinity,
                                height: 4*fem,
                                decoration: BoxDecoration (
                                  borderRadius: BorderRadius.circular(12*fem),
                                  color: Color(0xff550080),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // autogroupq66ctrt (NCszqHzHoJn89nsjgHq66C)
                    margin: EdgeInsets.fromLTRB(2*fem, 0*fem, 0*fem, 6*fem),
                    padding: EdgeInsets.fromLTRB(12*fem, 10*fem, 15*fem, 12*fem),
                    height: 53*fem,
                    decoration: BoxDecoration (
                      color: Color(0x1e8f7aff),
                      borderRadius: BorderRadius.circular(3*fem),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // ellipse101Ap (126:231)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 20*fem, 0*fem),
                          width: 31*fem,
                          height: 31*fem,
                          decoration: BoxDecoration (
                            borderRadius: BorderRadius.circular(15.5*fem),
                            image: DecorationImage (
                              fit: BoxFit.cover,
                              image: AssetImage (
                                'assets/images/ellipse-10-bg.png',
                              ),
                            ),
                          ),
                        ),
                        Container(
                          // chiomajohnsonv2t (126:211)
                          margin: EdgeInsets.fromLTRB(0*fem, 1*fem, 159*fem, 0*fem),
                          child: Text(
                            'Chioma Johnson',
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
                          // group12qfe (126:215)
                          width: 4*fem,
                          height: double.infinity,
                          decoration: BoxDecoration (
                            borderRadius: BorderRadius.circular(12*fem),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // rectangle33NQg (126:216)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 10*fem),
                                width: double.infinity,
                                height: 4*fem,
                                decoration: BoxDecoration (
                                  borderRadius: BorderRadius.circular(12*fem),
                                  color: Color(0xff550080),
                                ),
                              ),
                              Container(
                                // rectangle346rU (126:217)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 9*fem),
                                width: double.infinity,
                                height: 4*fem,
                                decoration: BoxDecoration (
                                  borderRadius: BorderRadius.circular(12*fem),
                                  color: Color(0xff550080),
                                ),
                              ),
                              Container(
                                // rectangle35qJG (126:218)
                                width: double.infinity,
                                height: 4*fem,
                                decoration: BoxDecoration (
                                  borderRadius: BorderRadius.circular(12*fem),
                                  color: Color(0xff550080),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // autogroupjtl4Bd2 (NCt1DHMeiTCLnnRsPwJTL4)
                    margin: EdgeInsets.fromLTRB(2*fem, 0*fem, 0*fem, 6*fem),
                    padding: EdgeInsets.fromLTRB(12*fem, 10*fem, 15*fem, 12*fem),
                    height: 53*fem,
                    decoration: BoxDecoration (
                      color: Color(0x1e8f7aff),
                      borderRadius: BorderRadius.circular(3*fem),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // ellipse11gZn (126:232)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 20*fem, 0*fem),
                          width: 31*fem,
                          height: 31*fem,
                          decoration: BoxDecoration (
                            borderRadius: BorderRadius.circular(15.5*fem),
                            image: DecorationImage (
                              fit: BoxFit.cover,
                              image: AssetImage (
                                'assets/images/ellipse-11-bg-mix.png',
                              ),
                            ),
                          ),
                        ),
                        Container(
                          // robertfoxQEt (126:212)
                          margin: EdgeInsets.fromLTRB(0*fem, 1*fem, 199*fem, 0*fem),
                          child: Text(
                            'Robert Fox',
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
                          // group13vj2 (126:219)
                          width: 4*fem,
                          height: double.infinity,
                          decoration: BoxDecoration (
                            borderRadius: BorderRadius.circular(12*fem),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // rectangle33GXz (126:220)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 10*fem),
                                width: double.infinity,
                                height: 4*fem,
                                decoration: BoxDecoration (
                                  borderRadius: BorderRadius.circular(12*fem),
                                  color: Color(0xff550080),
                                ),
                              ),
                              Container(
                                // rectangle34CwS (126:221)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 9*fem),
                                width: double.infinity,
                                height: 4*fem,
                                decoration: BoxDecoration (
                                  borderRadius: BorderRadius.circular(12*fem),
                                  color: Color(0xff550080),
                                ),
                              ),
                              Container(
                                // rectangle359rg (126:222)
                                width: double.infinity,
                                height: 4*fem,
                                decoration: BoxDecoration (
                                  borderRadius: BorderRadius.circular(12*fem),
                                  color: Color(0xff550080),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // autogroupeifz7Yc (NCt1Sh8yQLFFKFcu2YEiFz)
                    margin: EdgeInsets.fromLTRB(2*fem, 0*fem, 0*fem, 0*fem),
                    padding: EdgeInsets.fromLTRB(12*fem, 10*fem, 15*fem, 12*fem),
                    height: 53*fem,
                    decoration: BoxDecoration (
                      color: Color(0x1e8f7aff),
                      borderRadius: BorderRadius.circular(3*fem),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // ellipse12RJQ (126:233)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 20*fem, 0*fem),
                          width: 31*fem,
                          height: 31*fem,
                          decoration: BoxDecoration (
                            borderRadius: BorderRadius.circular(15.5*fem),
                            image: DecorationImage (
                              fit: BoxFit.cover,
                              image: AssetImage (
                                'assets/images/ellipse-12-bg.png',
                              ),
                            ),
                          ),
                        ),
                        Container(
                          // lesliealexander9EQ (126:213)
                          margin: EdgeInsets.fromLTRB(0*fem, 1*fem, 163*fem, 0*fem),
                          child: Text(
                            'Leslie Alexander',
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
                          // group14rec (126:223)
                          width: 4*fem,
                          height: double.infinity,
                          decoration: BoxDecoration (
                            borderRadius: BorderRadius.circular(12*fem),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // rectangle33noA (126:224)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 10*fem),
                                width: double.infinity,
                                height: 4*fem,
                                decoration: BoxDecoration (
                                  borderRadius: BorderRadius.circular(12*fem),
                                  color: Color(0xff550080),
                                ),
                              ),
                              Container(
                                // rectangle34veU (126:225)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 9*fem),
                                width: double.infinity,
                                height: 4*fem,
                                decoration: BoxDecoration (
                                  borderRadius: BorderRadius.circular(12*fem),
                                  color: Color(0xff550080),
                                ),
                              ),
                              Container(
                                // rectangle3551a (126:226)
                                width: double.infinity,
                                height: 4*fem,
                                decoration: BoxDecoration (
                                  borderRadius: BorderRadius.circular(12*fem),
                                  color: Color(0xff550080),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // autogroup4ulu2Sc (NCt1nMEtNdSMLghttx4uLU)
              width: double.infinity,
              height: 180*fem,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    // autogrouphp9ayMr (NCt2JW3K6k9U88u15vHP9A)
                    width: 390*fem,
                    height: double.infinity,
                    child: Stack(
                      children: [
                        Positioned(
                          // img57211recoveredgrey1W6t (126:127)
                          left: 38*fem,
                          top: 123*fem,
                          child: Align(
                            child: SizedBox(
                              width: 27*fem,
                              height: 20*fem,
                              child: Image.asset(
                                'assets/images/img5721-1-recovered-grey-1-W4G.png',
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // overviewpNU (126:128)
                          left: 29*fem,
                          top: 148*fem,
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
                          // staffmanagementKa8 (126:129)
                          left: 225.5*fem,
                          top: 149*fem,
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
                          // settingsRNG (126:130)
                          left: 331*fem,
                          top: 151*fem,
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
                          // staffgray1Xw6 (126:131)
                          left: 237*fem,
                          top: 120*fem,
                          child: Align(
                            child: SizedBox(
                              width: 30*fem,
                              height: 23*fem,
                              child: Image.asset(
                                'assets/images/staff-gray-1-GTi.png',
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // settingsgrey1Fs6 (126:132)
                          left: 331*fem,
                          top: 120*fem,
                          child: Align(
                            child: SizedBox(
                              width: 32*fem,
                              height: 26*fem,
                              child: Image.asset(
                                'assets/images/settings-grey-1-zo2.png',
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // rectangle17aPa (126:133)
                          left: 103*fem,
                          top: 84*fem,
                          child: Align(
                            child: SizedBox(
                              width: 83*fem,
                              height: 96*fem,
                              child: Image.asset(
                                'assets/images/rectangle-17-sTE.png',
                                width: 83*fem,
                                height: 96*fem,
                              ),
                            ),
                          ),
                        ),
                        // Positioned(
                        //   // inventoryclicked16cp (126:134)
                        //   left: 132*fem,
                        //   top: 122*fem,
                        //   child: Align(
                        //     child: SizedBox(
                        //       width: 26*fem,
                        //       height: 25*fem,
                        //       child: Image.asset(
                        //         'assets/images/inventory-clicked-1-52Y.png',
                        //       ),
                        //     ),
                        //   ),
                        // ),
                        Positioned(
                          // metresd6x (126:136)
                          left: 309*fem,
                          top: 18*fem,
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
                          // metresvbr (126:137)
                          left: 307*fem,
                          top: 17*fem,
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
                          // vector22un (126:138)
                          left: 0*fem,
                          top: 54*fem,
                          child: Align(
                            child: SizedBox(
                              width: 390*fem,
                              height: 126*fem,
                              child: Image.asset(
                                'assets/images/vector-2-5Sg.png',
                                width: 390*fem,
                                height: 126*fem,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // inventoryZPv (126:140)
                          left: 120*fem,
                          top: 147*fem,
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
                          // rectangle26fC4 (126:210)
                          left: 22*fem,
                          top: 0*fem,
                          child: Align(
                            child: SizedBox(
                              width: 346*fem,
                              height: 53*fem,
                              child: Container(
                                decoration: BoxDecoration (
                                  borderRadius: BorderRadius.circular(3*fem),
                                  color: Color(0x1e8f7aff),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // savannahnguyennnU (126:214)
                          left: 85*fem,
                          top: 20*fem,
                          child: Align(
                            child: SizedBox(
                              width: 115*fem,
                              height: 18*fem,
                              child: Text(
                                'Savannah Nguyen',
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
                          // group15Jkp (126:227)
                          left: 349*fem,
                          top: 13*fem,
                          child: Container(
                            width: 4*fem,
                            height: 31*fem,
                            decoration: BoxDecoration (
                              borderRadius: BorderRadius.circular(12*fem),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // rectangle33Dsn (126:228)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 10*fem),
                                  width: double.infinity,
                                  height: 4*fem,
                                  decoration: BoxDecoration (
                                    borderRadius: BorderRadius.circular(12*fem),
                                    color: Color(0xff550080),
                                  ),
                                ),
                                Container(
                                  // rectangle34mPW (126:229)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 9*fem),
                                  width: double.infinity,
                                  height: 4*fem,
                                  decoration: BoxDecoration (
                                    borderRadius: BorderRadius.circular(12*fem),
                                    color: Color(0xff550080),
                                  ),
                                ),
                                Container(
                                  // rectangle35WM6 (126:230)
                                  width: double.infinity,
                                  height: 4*fem,
                                  decoration: BoxDecoration (
                                    borderRadius: BorderRadius.circular(12*fem),
                                    color: Color(0xff550080),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          // ellipse134dW (126:234)
                          left: 34*fem,
                          top: 13*fem,
                          child: Align(
                            child: SizedBox(
                              width: 31*fem,
                              height: 31*fem,
                              child: Container(
                                decoration: BoxDecoration (
                                  borderRadius: BorderRadius.circular(15.5*fem),
                                  image: DecorationImage (
                                    fit: BoxFit.cover,
                                    image: AssetImage (
                                      'assets/images/ellipse-13-bg.png',
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // rectangle2ZaG (126:139)
                          left: 293*fem,
                          top: 17*fem,
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
                          // Q56 (126:141)
                          left: 324*fem,
                          top: 39.0002441406*fem,
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
                
                ],
              ),
            ),
          ],
        ),
      ),
          );
  }
}