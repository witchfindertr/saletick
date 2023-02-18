import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:saletick/utilities/utils.dart';


class AdminSalesSummaryPopupWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // frame23ANk (14:518)
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
              // autogroupwrwybDA (NCsMKYAK4N47KLG8WwwRWY)
              padding: EdgeInsets.fromLTRB(2*fem, 0*fem, 0*fem, 11*fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // autogroup23hrh1J (NCsBtUYXERJWMjfF7D23Hr)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 27.61*fem),
                    padding: EdgeInsets.fromLTRB(24*fem, 27*fem, 36*fem, 38.39*fem),
                    width: double.infinity,
                    height: 396.39*fem,
                    decoration: BoxDecoration (
                      image: DecorationImage (
                        fit: BoxFit.cover,
                        image: AssetImage (
                          'assets/images/rectangle-11-ufE.png',
                        ),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // autogroupjbb6La4 (NCsCe7xTvsgDG4zCrKjBB6)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 38*fem),
                          width: double.infinity,
                          height: 57*fem,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // autogroupaf6gFBE (NCsCqHJXxN7gmPevZEaf6G)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 46*fem, 0*fem),
                                width: 60*fem,
                                height: double.infinity,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      // ellipse4mfN (14:813)
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
                                                  'assets/images/ellipse-4-bg-HEQ.png',
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      // ellipse5MNg (14:814)
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
                              Container(
                                // welcomederapGG (14:548)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 69*fem, 2*fem),
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
                              Container(
                                // autogroupboya5E8 (NCsCuhLqzgisDGkiV5BoyA)
                                margin: EdgeInsets.fromLTRB(0*fem, 8*fem, 0*fem, 18*fem),
                                width: 29*fem,
                                height: double.infinity,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // rectangle33agg (14:810)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 10*fem),
                                      width: double.infinity,
                                      height: 4*fem,
                                      decoration: BoxDecoration (
                                        color: Color(0xff550080),
                                      ),
                                    ),
                                    Container(
                                      // rectangle34hFW (14:811)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 9*fem),
                                      width: double.infinity,
                                      height: 4*fem,
                                      decoration: BoxDecoration (
                                        color: Color(0xff550080),
                                      ),
                                    ),
                                    Container(
                                      // rectangle35q6p (14:812)
                                      width: double.infinity,
                                      height: 4*fem,
                                      decoration: BoxDecoration (
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
                          // incomesummaryN6k (14:547)
                          margin: EdgeInsets.fromLTRB(2*fem, 0*fem, 0*fem, 0*fem),
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
                        Container(
                          // autogrouputnpTtt (NCsD9c7LPKTsJDchewUTnp)
                          margin: EdgeInsets.fromLTRB(84*fem, 0*fem, 78*fem, 41*fem),
                          width: double.infinity,
                          height: 68*fem,
                          child: Stack(
                            children: [
                              Positioned(
                                // z88 (14:554)
                                left: 0*fem,
                                top: 0*fem,
                                child: Align(
                                  child: SizedBox(
                                    width: 166*fem,
                                    height: 54*fem,
                                    child: Text(
                                      '345,070',
                                      style: SafeGoogleFont (
                                        'Podkova',
                                        fontSize: 48*ffem,
                                        fontWeight: FontWeight.w600,
                                        height: 1.11*ffem/fem,
                                        color: Color(0xffffffff),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                // todayUJC (14:808)
                                left: 38*fem,
                                top: 53*fem,
                                child: Align(
                                  child: SizedBox(
                                    width: 81*fem,
                                    height: 15*fem,
                                    child: Text(
                                      '+31,993 Today',
                                      style: SafeGoogleFont (
                                        'Podkova',
                                        fontSize: 13*ffem,
                                        fontWeight: FontWeight.w600,
                                        height: 1.11*ffem/fem,
                                        color: Color(0xb5e4fff5),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // autogrouppzl4kFi (NCsDKSAHsU4RJwACb9PZL4)
                          margin: EdgeInsets.fromLTRB(44*fem, 0*fem, 57*fem, 13*fem),
                          width: double.infinity,
                          height: 17*fem,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                // autogroupecjlGUx (NCsDZRkyYZR6zHy1gZEcJL)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 10*fem, 0*fem),
                                padding: EdgeInsets.fromLTRB(13*fem, 0*fem, 9*fem, 0*fem),
                                height: double.infinity,
                                decoration: BoxDecoration (
                                  color: Color(0x51640893),
                                  borderRadius: BorderRadius.circular(4*fem),
                                ),
                                child: Text(
                                  'Daily ',
                                  style: SafeGoogleFont (
                                    'Poppins',
                                    fontSize: 10*ffem,
                                    fontWeight: FontWeight.w700,
                                    height: 1.5*ffem/fem,
                                    color: Color(0xffffffff),
                                  ),
                                ),
                              ),
                              Container(
                                // monthlyvZW (14:544)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 24*fem, 0*fem),
                                child: Text(
                                  'Monthly ',
                                  style: SafeGoogleFont (
                                    'Poppins',
                                    fontSize: 10*ffem,
                                    fontWeight: FontWeight.w700,
                                    height: 1.5*ffem/fem,
                                    color: Color(0xffffffff),
                                  ),
                                ),
                              ),
                              Container(
                                // weeklyRWG (14:545)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 22*fem, 0*fem),
                                child: Text(
                                  'Weekly ',
                                  style: SafeGoogleFont (
                                    'Poppins',
                                    fontSize: 10*ffem,
                                    fontWeight: FontWeight.w700,
                                    height: 1.5*ffem/fem,
                                    color: Color(0xffffffff),
                                  ),
                                ),
                              ),
                              Text(
                                // yearlywjW (14:546)
                                'Yearly',
                                style: SafeGoogleFont (
                                  'Poppins',
                                  fontSize: 10*ffem,
                                  fontWeight: FontWeight.w700,
                                  height: 1.5*ffem/fem,
                                  color: Color(0xffffffff),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // autogroupbj84tPr (NCsDhB34wEdbAgsrYABj84)
                          margin: EdgeInsets.fromLTRB(10*fem, 0*fem, 0*fem, 4*fem),
                          height: 69*fem,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                // autogroupzaunQ7J (NCsDvVzCLf4p6k84FDZauN)
                                padding: EdgeInsets.fromLTRB(0*fem, 21*fem, 25*fem, 0*fem),
                                height: double.infinity,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Container(
                                      // rectangle5vLY (14:530)
                                      width: 23*fem,
                                      height: 48*fem,
                                      decoration: BoxDecoration (
                                        borderRadius: BorderRadius.circular(8*fem),
                                        color: Color(0x51ffffff),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 25*fem,
                                    ),
                                    Container(
                                      // rectangle43RA (14:529)
                                      width: 23*fem,
                                      height: 32*fem,
                                      decoration: BoxDecoration (
                                        borderRadius: BorderRadius.circular(8*fem),
                                        color: Color(0x51ffffff),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 25*fem,
                                    ),
                                    Container(
                                      // rectangle6ZuJ (14:531)
                                      width: 24*fem,
                                      height: 39*fem,
                                      decoration: BoxDecoration (
                                        borderRadius: BorderRadius.circular(8*fem),
                                        color: Color(0x51ffffff),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                // rectangle7hVi (14:532)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 25*fem, 0*fem),
                                width: 23*fem,
                                height: 69*fem,
                                decoration: BoxDecoration (
                                  borderRadius: BorderRadius.circular(8*fem),
                                  color: Color(0x51ffffff),
                                ),
                              ),
                              Container(
                                // rectangle8DDA (14:533)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 25*fem, 0*fem),
                                width: 24*fem,
                                height: 56*fem,
                                decoration: BoxDecoration (
                                  borderRadius: BorderRadius.circular(8*fem),
                                  color: Color(0x51ffffff),
                                ),
                              ),
                              Container(
                                // rectangle9LHn (14:534)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 25*fem, 0*fem),
                                width: 23*fem,
                                height: 69*fem,
                                decoration: BoxDecoration (
                                  borderRadius: BorderRadius.circular(8*fem),
                                  color: Color(0x51ffffff),
                                ),
                              ),
                              Container(
                                // rectangle10dXn (14:535)
                                width: 24*fem,
                                height: 56*fem,
                                decoration: BoxDecoration (
                                  borderRadius: BorderRadius.circular(8*fem),
                                  color: Color(0x51ffffff),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // autogroup9swamtt (NCsE9QnMKnRd4je8LZ9Swa)
                          margin: EdgeInsets.fromLTRB(18*fem, 0*fem, 10*fem, 0*fem),
                          width: double.infinity,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // tCp (14:536)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 40*fem, 0*fem),
                                child: Text(
                                  '22',
                                  style: SafeGoogleFont (
                                    'Montserrat',
                                    fontSize: 7*ffem,
                                    fontWeight: FontWeight.w700,
                                    height: 1.2175*ffem/fem,
                                    color: Color(0xffffffff),
                                  ),
                                ),
                              ),
                              Container(
                                // CDW (14:537)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 39*fem, 0*fem),
                                child: Text(
                                  '23',
                                  style: SafeGoogleFont (
                                    'Montserrat',
                                    fontSize: 7*ffem,
                                    fontWeight: FontWeight.w700,
                                    height: 1.2175*ffem/fem,
                                    color: Color(0xffffffff),
                                  ),
                                ),
                              ),
                              Container(
                                // HVr (14:538)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 41*fem, 0*fem),
                                child: Text(
                                  '24',
                                  style: SafeGoogleFont (
                                    'Montserrat',
                                    fontSize: 7*ffem,
                                    fontWeight: FontWeight.w700,
                                    height: 1.2175*ffem/fem,
                                    color: Color(0xffffffff),
                                  ),
                                ),
                              ),
                              Container(
                                // bmS (14:539)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 38*fem, 0*fem),
                                child: Text(
                                  '25',
                                  style: SafeGoogleFont (
                                    'Montserrat',
                                    fontSize: 7*ffem,
                                    fontWeight: FontWeight.w700,
                                    height: 1.2175*ffem/fem,
                                    color: Color(0xffffffff),
                                  ),
                                ),
                              ),
                              Container(
                                // WtQ (14:540)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 40*fem, 0*fem),
                                child: Text(
                                  '26',
                                  style: SafeGoogleFont (
                                    'Montserrat',
                                    fontSize: 7*ffem,
                                    fontWeight: FontWeight.w700,
                                    height: 1.2175*ffem/fem,
                                    color: Color(0xffffffff),
                                  ),
                                ),
                              ),
                              Container(
                                // 3dS (14:541)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 39*fem, 0*fem),
                                child: Text(
                                  '27',
                                  style: SafeGoogleFont (
                                    'Montserrat',
                                    fontSize: 7*ffem,
                                    fontWeight: FontWeight.w700,
                                    height: 1.2175*ffem/fem,
                                    color: Color(0xffffffff),
                                  ),
                                ),
                              ),
                              Text(
                                // yX6 (14:542)
                                '28',
                                style: SafeGoogleFont (
                                  'Montserrat',
                                  fontSize: 7*ffem,
                                  fontWeight: FontWeight.w700,
                                  height: 1.2175*ffem/fem,
                                  color: Color(0xffffffff),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // autogroupk62uL6k (NCsF48mVxFrje519hyk62U)
                    margin: EdgeInsets.fromLTRB(24*fem, 0*fem, 41*fem, 1*fem),
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // salesEC8 (14:549)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 236*fem, 0*fem),
                          child: Text(
                            'Sales',
                            style: SafeGoogleFont (
                              'Poppins',
                              fontSize: 15*ffem,
                              fontWeight: FontWeight.w700,
                              height: 1.5*ffem/fem,
                              color: Color(0xff979797),
                            ),
                          ),
                        ),
                        Container(
                          // sortbyLW4 (14:551)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 10*fem, 2*fem),
                          child: Text(
                            'Sort By',
                            style: SafeGoogleFont (
                              'Poppins',
                              fontSize: 10*ffem,
                              fontWeight: FontWeight.w500,
                              height: 1.5*ffem/fem,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // line1F7E (14:550)
                    margin: EdgeInsets.fromLTRB(23*fem, 0*fem, 25*fem, 0*fem),
                    width: double.infinity,
                    height: 1*fem,
                    decoration: BoxDecoration (
                      color: Color(0xffdddddd),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // autogroupdtglBFn (NCsFS88rsQGxH4ZHRdDTGL)
              width: double.infinity,
              height: 388*fem,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    // autogroupvacgvUG (NCsGEboRDTZsMS2LZEvACg)
                    width: 390*fem,
                    height: double.infinity,
                    child: Stack(
                      children: [
                        Positioned(
                          // img57211recoveredgrey1DyA (14:520)
                          left: 38*fem,
                          top: 331*fem,
                          child: Align(
                            child: SizedBox(
                              width: 27*fem,
                              height: 20*fem,
                              child: Image.asset(
                                'assets/images/img5721-1-recovered-grey-1-kAL.png',
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // overviewL2C (14:521)
                          left: 29*fem,
                          top: 356*fem,
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
                          // staffmanagementdGC (14:522)
                          left: 225.5*fem,
                          top: 357*fem,
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
                          // settingsKep (14:523)
                          left: 331*fem,
                          top: 359*fem,
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
                          // staffgray1RSx (14:524)
                          left: 237*fem,
                          top: 328*fem,
                          child: Align(
                            child: SizedBox(
                              width: 30*fem,
                              height: 23*fem,
                              child: Image.asset(
                                'assets/images/staff-gray-1-sgU.png',
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // settingsgrey19Nx (14:525)
                          left: 331*fem,
                          top: 328*fem,
                          child: Align(
                            child: SizedBox(
                              width: 32*fem,
                              height: 26*fem,
                              child: Image.asset(
                                'assets/images/settings-grey-1-G6L.png',
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // rectangle17fs6 (14:526)
                          left: 103*fem,
                          top: 292*fem,
                          child: Align(
                            child: SizedBox(
                              width: 83*fem,
                              height: 96*fem,
                              child: Image.asset(
                                'assets/images/rectangle-17.png',
                                width: 83*fem,
                                height: 96*fem,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // inventoryclicked1ktY (14:527)
                          left: 132*fem,
                          top: 330*fem,
                          child: Align(
                            child: SizedBox(
                              width: 26*fem,
                              height: 25*fem,
                              child: Image.asset(
                                'assets/images/inventory-clicked-1.png',
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // metres5fv (14:552)
                          left: 309*fem,
                          top: 226*fem,
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
                          // metresyFW (14:553)
                          left: 307*fem,
                          top: 225*fem,
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
                          // group1fu2 (14:555)
                          left: 21*fem,
                          top: 0*fem,
                          child: Container(
                            padding: EdgeInsets.fromLTRB(18*fem, 12*fem, 13*fem, 12*fem),
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
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // autogroupjmwntWt (NCsGsztmdVoNkoTL4YjMwN)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 20*fem, 0*fem),
                                  width: 229*fem,
                                  height: double.infinity,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        // chocolatecartonp9e (14:557)
                                        margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 0*fem, 2*fem),
                                        child: Text(
                                          'Chocolate Carton',
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
                                        // group5KcC (14:559)
                                        padding: EdgeInsets.fromLTRB(0*fem, 0.81*fem, 0*fem, 0.08*fem),
                                        width: double.infinity,
                                        height: 13*fem,
                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              // eventdateandtimesymbolsvgrepoc (14:560)
                                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 5*fem, 0*fem),
                                              width: 13*fem,
                                              height: 12.1*fem,
                                              child: Image.asset(
                                                'assets/images/event-date-and-time-symbol-svgrepo-com-1-oKn.png',
                                                width: 13*fem,
                                                height: 12.1*fem,
                                              ),
                                            ),
                                            Container(
                                              // autogroupzfwxw7n (NCsH4Qm66rhhvQccTZZFWx)
                                              margin: EdgeInsets.fromLTRB(0*fem, 1.19*fem, 16.63*fem, 1.92*fem),
                                              width: 81*fem,
                                              height: double.infinity,
                                              child: Stack(
                                                children: [
                                                  Positioned(
                                                    // pmfJg (14:603)
                                                    left: 0*fem,
                                                    top: 0*fem,
                                                    child: Align(
                                                      child: SizedBox(
                                                        width: 42*fem,
                                                        height: 9*fem,
                                                        child: Text(
                                                          '12:05:02pm :   ',
                                                          style: SafeGoogleFont (
                                                            'Poppins',
                                                            fontSize: 6*ffem,
                                                            fontWeight: FontWeight.w600,
                                                            height: 1.5*ffem/fem,
                                                            color: Color(0xff927c9e),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Positioned(
                                                    // march2022k5E (14:604)
                                                    left: 40*fem,
                                                    top: 0*fem,
                                                    child: Align(
                                                      child: SizedBox(
                                                        width: 41*fem,
                                                        height: 9*fem,
                                                        child: Text(
                                                          '3 March 2022',
                                                          style: SafeGoogleFont (
                                                            'Poppins',
                                                            fontSize: 6*ffem,
                                                            fontWeight: FontWeight.w600,
                                                            height: 1.5*ffem/fem,
                                                            color: Color(0xff927c9e),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Container(
                                              // avatardefaultsvgrepocom1eRW (14:605)
                                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 6.63*fem, 0.73*fem),
                                              width: 9.75*fem,
                                              height: 11.38*fem,
                                              child: Image.asset(
                                                'assets/images/avatar-default-svgrepo-com-1-AjS.png',
                                                width: 9.75*fem,
                                                height: 11.38*fem,
                                              ),
                                            ),
                                            Container(
                                              // chiomajoy9t4 (14:607)
                                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 15*fem, 0.73*fem),
                                              child: Text(
                                                'Chioma Joy',
                                                style: SafeGoogleFont (
                                                  'Poppins',
                                                  fontSize: 6*ffem,
                                                  fontWeight: FontWeight.w600,
                                                  height: 1.5*ffem/fem,
                                                  color: Color(0xff927c9e),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              // boxessvgrepocom1sp4 (14:609)
                                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 2*fem, 0.73*fem),
                                              width: 13*fem,
                                              height: 10.74*fem,
                                              child: Image.asset(
                                                'assets/images/boxes-svgrepo-com-1-viU.png',
                                                width: 13*fem,
                                                height: 10.74*fem,
                                              ),
                                            ),
                                            Container(
                                              // cartonsbEG (14:608)
                                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0.73*fem),
                                              child: Text(
                                                '5 Cartons',
                                                style: SafeGoogleFont (
                                                  'Poppins',
                                                  fontSize: 6*ffem,
                                                  fontWeight: FontWeight.w600,
                                                  height: 1.5*ffem/fem,
                                                  color: Color(0xff927c9e),
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
                                  // 7iQ (14:558)
                                  margin: EdgeInsets.fromLTRB(0*fem, 1*fem, 0*fem, 0*fem),
                                  child: Text(
                                    '+5,070',
                                    style: SafeGoogleFont (
                                      'Poppins',
                                      fontSize: 20*ffem,
                                      fontWeight: FontWeight.w700,
                                      height: 1.5*ffem/fem,
                                      color: Color(0xb503c781),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          // group2eCY (14:619)
                          left: 21*fem,
                          top: 67*fem,
                          child: Container(
                            padding: EdgeInsets.fromLTRB(18*fem, 8*fem, 13*fem, 14.81*fem),
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
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // autogroupdm7v52x (NCsHXeUhtusvwQioLVDm7v)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 6.63*fem, 0*fem),
                                  height: double.infinity,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        // chocolatecartonCNU (14:664)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 2.81*fem),
                                        child: Text(
                                          'Chocolate Carton',
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
                                        // autogroupkgauhq2 (NCsHgJtwQdrveM2jM5KGaU)
                                        margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 0*fem, 0*fem),
                                        height: 13.38*fem,
                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              // eventdateandtimesymbolsvgrepoc (14:621)
                                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 5*fem, 1.27*fem),
                                              width: 13*fem,
                                              height: 12.1*fem,
                                              child: Image.asset(
                                                'assets/images/event-date-and-time-symbol-svgrepo-com-1-RZ2.png',
                                                width: 13*fem,
                                                height: 12.1*fem,
                                              ),
                                            ),
                                            Container(
                                              // autogroupdcj2XZA (NCsHnZDXh4189JvhatDCj2)
                                              margin: EdgeInsets.fromLTRB(0*fem, 2.19*fem, 16.63*fem, 2.19*fem),
                                              width: 81*fem,
                                              height: double.infinity,
                                              child: Stack(
                                                children: [
                                                  Positioned(
                                                    // pmTBv (14:666)
                                                    left: 0*fem,
                                                    top: 0*fem,
                                                    child: Align(
                                                      child: SizedBox(
                                                        width: 42*fem,
                                                        height: 9*fem,
                                                        child: Text(
                                                          '12:05:02pm :   ',
                                                          style: SafeGoogleFont (
                                                            'Poppins',
                                                            fontSize: 6*ffem,
                                                            fontWeight: FontWeight.w600,
                                                            height: 1.5*ffem/fem,
                                                            color: Color(0xff927c9e),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Positioned(
                                                    // march2022x8g (14:667)
                                                    left: 40*fem,
                                                    top: 0*fem,
                                                    child: Align(
                                                      child: SizedBox(
                                                        width: 41*fem,
                                                        height: 9*fem,
                                                        child: Text(
                                                          '3 March 2022',
                                                          style: SafeGoogleFont (
                                                            'Poppins',
                                                            fontSize: 6*ffem,
                                                            fontWeight: FontWeight.w600,
                                                            height: 1.5*ffem/fem,
                                                            color: Color(0xff927c9e),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Container(
                                              // avatardefaultsvgrepocom1SZe (14:668)
                                              margin: EdgeInsets.fromLTRB(0*fem, 2*fem, 0*fem, 0*fem),
                                              width: 9.75*fem,
                                              height: 11.38*fem,
                                              child: Image.asset(
                                                'assets/images/avatar-default-svgrepo-com-1-tLQ.png',
                                                width: 9.75*fem,
                                                height: 11.38*fem,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  // chiomajoy9U4 (14:670)
                                  margin: EdgeInsets.fromLTRB(0*fem, 24.81*fem, 15*fem, 0*fem),
                                  child: Text(
                                    'Chioma Joy',
                                    style: SafeGoogleFont (
                                      'Poppins',
                                      fontSize: 6*ffem,
                                      fontWeight: FontWeight.w600,
                                      height: 1.5*ffem/fem,
                                      color: Color(0xff927c9e),
                                    ),
                                  ),
                                ),
                                Container(
                                  // boxessvgrepocom1GHn (14:672)
                                  margin: EdgeInsets.fromLTRB(0*fem, 24.81*fem, 2*fem, 0*fem),
                                  width: 13*fem,
                                  height: 10.74*fem,
                                  child: Image.asset(
                                    'assets/images/boxes-svgrepo-com-1-ayv.png',
                                    width: 13*fem,
                                    height: 10.74*fem,
                                  ),
                                ),
                                Container(
                                  // cartonsNLp (14:671)
                                  margin: EdgeInsets.fromLTRB(0*fem, 24.81*fem, 21*fem, 0*fem),
                                  child: Text(
                                    '5 Cartons',
                                    style: SafeGoogleFont (
                                      'Poppins',
                                      fontSize: 6*ffem,
                                      fontWeight: FontWeight.w600,
                                      height: 1.5*ffem/fem,
                                      color: Color(0xff927c9e),
                                    ),
                                  ),
                                ),
                                Container(
                                  // tKA (14:665)
                                  margin: EdgeInsets.fromLTRB(0*fem, 8.81*fem, 0*fem, 0*fem),
                                  child: Text(
                                    '+5,070',
                                    style: SafeGoogleFont (
                                      'Montserrat',
                                      fontSize: 20*ffem,
                                      fontWeight: FontWeight.w600,
                                      height: 1.2175*ffem/fem,
                                      color: Color(0xb503c781),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          // group3cFA (14:682)
                          left: 22*fem,
                          top: 134*fem,
                          child: Container(
                            padding: EdgeInsets.fromLTRB(18*fem, 8*fem, 13*fem, 14.81*fem),
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
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // autogroupbe3sqtc (NCsJQ3CQaY5vuBcgrgBE3S)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 6.63*fem, 0*fem),
                                  height: double.infinity,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        // chocolatecartonyE8 (14:727)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 2.81*fem),
                                        child: Text(
                                          'Chocolate Carton',
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
                                        // autogrouptkgg5nx (NCsJXT9iqNqghvkE26tkGg)
                                        margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 0*fem, 0*fem),
                                        height: 13.38*fem,
                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              // eventdateandtimesymbolsvgrepoc (14:684)
                                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 5*fem, 1.27*fem),
                                              width: 13*fem,
                                              height: 12.1*fem,
                                              child: Image.asset(
                                                'assets/images/event-date-and-time-symbol-svgrepo-com-1-gbJ.png',
                                                width: 13*fem,
                                                height: 12.1*fem,
                                              ),
                                            ),
                                            Container(
                                              // autogroupjvk4v2t (NCsJcCWp1XubXTdKe7jVk4)
                                              margin: EdgeInsets.fromLTRB(0*fem, 2.19*fem, 16.63*fem, 2.19*fem),
                                              width: 81*fem,
                                              height: double.infinity,
                                              child: Stack(
                                                children: [
                                                  Positioned(
                                                    // pmqfe (14:729)
                                                    left: 0*fem,
                                                    top: 0*fem,
                                                    child: Align(
                                                      child: SizedBox(
                                                        width: 42*fem,
                                                        height: 9*fem,
                                                        child: Text(
                                                          '12:05:02pm :   ',
                                                          style: SafeGoogleFont (
                                                            'Poppins',
                                                            fontSize: 6*ffem,
                                                            fontWeight: FontWeight.w600,
                                                            height: 1.5*ffem/fem,
                                                            color: Color(0xff927c9e),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Positioned(
                                                    // march2022jm2 (14:730)
                                                    left: 40*fem,
                                                    top: 0*fem,
                                                    child: Align(
                                                      child: SizedBox(
                                                        width: 41*fem,
                                                        height: 9*fem,
                                                        child: Text(
                                                          '3 March 2022',
                                                          style: SafeGoogleFont (
                                                            'Poppins',
                                                            fontSize: 6*ffem,
                                                            fontWeight: FontWeight.w600,
                                                            height: 1.5*ffem/fem,
                                                            color: Color(0xff927c9e),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Container(
                                              // avatardefaultsvgrepocom1Ehn (14:731)
                                              margin: EdgeInsets.fromLTRB(0*fem, 2*fem, 0*fem, 0*fem),
                                              width: 9.75*fem,
                                              height: 11.38*fem,
                                              child: Image.asset(
                                                'assets/images/avatar-default-svgrepo-com-1-ceU.png',
                                                width: 9.75*fem,
                                                height: 11.38*fem,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  // chiomajoyZEG (14:733)
                                  margin: EdgeInsets.fromLTRB(0*fem, 24.81*fem, 15*fem, 0*fem),
                                  child: Text(
                                    'Chioma Joy',
                                    style: SafeGoogleFont (
                                      'Poppins',
                                      fontSize: 6*ffem,
                                      fontWeight: FontWeight.w600,
                                      height: 1.5*ffem/fem,
                                      color: Color(0xff927c9e),
                                    ),
                                  ),
                                ),
                                Container(
                                  // boxessvgrepocom1Hg4 (14:735)
                                  margin: EdgeInsets.fromLTRB(0*fem, 24.81*fem, 2*fem, 0*fem),
                                  width: 13*fem,
                                  height: 10.74*fem,
                                  child: Image.asset(
                                    'assets/images/boxes-svgrepo-com-1-5Mi.png',
                                    width: 13*fem,
                                    height: 10.74*fem,
                                  ),
                                ),
                                Container(
                                  // cartonsouJ (14:734)
                                  margin: EdgeInsets.fromLTRB(0*fem, 24.81*fem, 21*fem, 0*fem),
                                  child: Text(
                                    '5 Cartons',
                                    style: SafeGoogleFont (
                                      'Poppins',
                                      fontSize: 6*ffem,
                                      fontWeight: FontWeight.w600,
                                      height: 1.5*ffem/fem,
                                      color: Color(0xff927c9e),
                                    ),
                                  ),
                                ),
                                Container(
                                  // LeL (14:728)
                                  margin: EdgeInsets.fromLTRB(0*fem, 8.81*fem, 0*fem, 0*fem),
                                  child: Text(
                                    '+5,070',
                                    style: SafeGoogleFont (
                                      'Montserrat',
                                      fontSize: 20*ffem,
                                      fontWeight: FontWeight.w600,
                                      height: 1.2175*ffem/fem,
                                      color: Color(0xb503c781),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          // group44KS (14:745)
                          left: 20*fem,
                          top: 201*fem,
                          child: Container(
                            padding: EdgeInsets.fromLTRB(18*fem, 8*fem, 13*fem, 14.81*fem),
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
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // autogroupysslgbi (NCsKMBHCSKMqgVPfzsySSL)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 6.63*fem, 0*fem),
                                  height: double.infinity,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        // chocolatecartonckG (14:790)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 2.81*fem),
                                        child: Text(
                                          'Chocolate Carton',
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
                                        // autogroupokxpXsE (NCsKUktuG5Lxg4Qs1Pokxp)
                                        margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 0*fem, 0*fem),
                                        height: 13.38*fem,
                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              // eventdateandtimesymbolsvgrepoc (14:747)
                                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 5*fem, 1.27*fem),
                                              width: 13*fem,
                                              height: 12.1*fem,
                                              child: Image.asset(
                                                'assets/images/event-date-and-time-symbol-svgrepo-com-1-vfi.png',
                                                width: 13*fem,
                                                height: 12.1*fem,
                                              ),
                                            ),
                                            Container(
                                              // autogroupg6mnxxY (NCsKaFjjzMx1qJoPwJg6mn)
                                              margin: EdgeInsets.fromLTRB(0*fem, 2.19*fem, 16.63*fem, 2.19*fem),
                                              width: 81*fem,
                                              height: double.infinity,
                                              child: Stack(
                                                children: [
                                                  Positioned(
                                                    // pmVha (14:792)
                                                    left: 0*fem,
                                                    top: 0*fem,
                                                    child: Align(
                                                      child: SizedBox(
                                                        width: 42*fem,
                                                        height: 9*fem,
                                                        child: Text(
                                                          '12:05:02pm :   ',
                                                          style: SafeGoogleFont (
                                                            'Poppins',
                                                            fontSize: 6*ffem,
                                                            fontWeight: FontWeight.w600,
                                                            height: 1.5*ffem/fem,
                                                            color: Color(0xff927c9e),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Positioned(
                                                    // march20221A8 (14:793)
                                                    left: 40*fem,
                                                    top: 0*fem,
                                                    child: Align(
                                                      child: SizedBox(
                                                        width: 41*fem,
                                                        height: 9*fem,
                                                        child: Text(
                                                          '3 March 2022',
                                                          style: SafeGoogleFont (
                                                            'Poppins',
                                                            fontSize: 6*ffem,
                                                            fontWeight: FontWeight.w600,
                                                            height: 1.5*ffem/fem,
                                                            color: Color(0xff927c9e),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Container(
                                              // avatardefaultsvgrepocom1umJ (14:794)
                                              margin: EdgeInsets.fromLTRB(0*fem, 2*fem, 0*fem, 0*fem),
                                              width: 9.75*fem,
                                              height: 11.38*fem,
                                              child: Image.asset(
                                                'assets/images/avatar-default-svgrepo-com-1.png',
                                                width: 9.75*fem,
                                                height: 11.38*fem,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  // chiomajoyE2t (14:796)
                                  margin: EdgeInsets.fromLTRB(0*fem, 24.81*fem, 15*fem, 0*fem),
                                  child: Text(
                                    'Chioma Joy',
                                    style: SafeGoogleFont (
                                      'Poppins',
                                      fontSize: 6*ffem,
                                      fontWeight: FontWeight.w600,
                                      height: 1.5*ffem/fem,
                                      color: Color(0xff927c9e),
                                    ),
                                  ),
                                ),
                                Container(
                                  // boxessvgrepocom18PA (14:798)
                                  margin: EdgeInsets.fromLTRB(0*fem, 24.81*fem, 2*fem, 0*fem),
                                  width: 13*fem,
                                  height: 10.74*fem,
                                  child: Image.asset(
                                    'assets/images/boxes-svgrepo-com-1-yyS.png',
                                    width: 13*fem,
                                    height: 10.74*fem,
                                  ),
                                ),
                                Container(
                                  // cartonsqYU (14:797)
                                  margin: EdgeInsets.fromLTRB(0*fem, 24.81*fem, 21*fem, 0*fem),
                                  child: Text(
                                    '5 Cartons',
                                    style: SafeGoogleFont (
                                      'Poppins',
                                      fontSize: 6*ffem,
                                      fontWeight: FontWeight.w600,
                                      height: 1.5*ffem/fem,
                                      color: Color(0xff927c9e),
                                    ),
                                  ),
                                ),
                                Container(
                                  // MFv (14:791)
                                  margin: EdgeInsets.fromLTRB(0*fem, 8.81*fem, 0*fem, 0*fem),
                                  child: Text(
                                    '+5,070',
                                    style: SafeGoogleFont (
                                      'Montserrat',
                                      fontSize: 20*ffem,
                                      fontWeight: FontWeight.w600,
                                      height: 1.2175*ffem/fem,
                                      color: Color(0xb503c781),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          // vector2g3J (14:815)
                          left: 0*fem,
                          top: 262*fem,
                          child: Align(
                            child: SizedBox(
                              width: 390*fem,
                              height: 126*fem,
                              child: Image.asset(
                                'assets/images/vector-2-HrG.png',
                                width: 390*fem,
                                height: 126*fem,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // rectangle2mqS (14:816)
                          left: 293*fem,
                          top: 225*fem,
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
                          // inventory1jn (14:818)
                          left: 120*fem,
                          top: 355*fem,
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
                          // iPJ (14:819)
                          left: 315*fem,
                          top: 229*fem,
                          child: Align(
                            child: SizedBox(
                              width: 28*fem,
                              height: 59*fem,
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
                        Positioned(
                          // rectanglephE (14:948)
                          left: 138*fem,
                          top: 42*fem,
                          child: Align(
                            child: SizedBox(
                              width: 232*fem,
                              height: 171*fem,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(12*fem),
                                child: Image.asset(
                                  'assets/images/rectangle.png',
                                  repeat: ImageRepeat.repeat,
                                  scale: 1,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 141*fem,
                          top: 42*fem,
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
                          // saletagforonlineshopssvgrepoco (152:3177)
                          left: 167*fem,
                          top: 111*fem,
                          child: Align(
                            child: SizedBox(
                              width: 29.39*fem,
                              height: 31*fem,
                              child: Image.asset(
                                'assets/images/sale-tag-for-online-shops-svgrepo-com-1.png',
                                width: 29.39*fem,
                                height: 31*fem,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // addstaffMyz (152:3197)
                          left: 214*fem,
                          top: 64*fem,
                          child: Align(
                            child: SizedBox(
                              width: 57*fem,
                              height: 18*fem,
                              child: TextButton(
                                onPressed: () {},
                                style: TextButton.styleFrom (
                                  padding: EdgeInsets.zero,
                                ),
                                child: Text(
                                  'Add Staff',
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
                          // addsaleSkY (152:3198)
                          left: 215*fem,
                          top: 119*fem,
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
                          // addtoinventoryZ4U (152:3199)
                          left: 217*fem,
                          top: 174*fem,
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
                          // line16erc (152:3200)
                          left: 149*fem,
                          top: 100*fem,
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
                          // line17B5r (152:3201)
                          left: 151*fem,
                          top: 155*fem,
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
                          // boxessvgrepocom1VsE (152:3202)
                          left: 169*fem,
                          top: 170.5166015625*fem,
                          child: Align(
                            child: SizedBox(
                              width: 29*fem,
                              height: 23.97*fem,
                              child: Image.asset(
                                'assets/images/boxes-svgrepo-com-1-BqS.png',
                                width: 29*fem,
                                height: 23.97*fem,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // avatardefaultsvgrepocom1QDW (152:3212)
                          left: 173.625*fem,
                          top: 58.8125*fem,
                          child: Align(
                            child: SizedBox(
                              width: 21.75*fem,
                              height: 25.38*fem,
                              child: Image.asset(
                                'assets/images/avatar-default-svgrepo-com-1-xPr.png',
                                width: 21.75*fem,
                                height: 25.38*fem,
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