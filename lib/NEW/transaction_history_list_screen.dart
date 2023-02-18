import 'package:flutter/material.dart';
import 'package:saletick/utilities/utils.dart';


class TransactionHistoryListScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;

    return Scaffold(
      body: Container(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Container(
            // frame36TeG (145:2163)
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
                  // autogrouprojeJun (NCsWkbn6tJoiGvs1vgrojE)
                  width: 391.5*fem,
                  height: 171.89*fem,
                  child: Stack(
                    children: [
                      Positioned(
                        // incomesummaryMNG (145:2172)
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
                        // rectangle11DQU (145:2180)
                        left: 0*fem,
                        top: 0*fem,
                        child: Align(
                          child: SizedBox(
                            width: 391.5*fem,
                            height: 171.89*fem,
                            child: Image.asset(
                              'assets/images/rectangle-11.png',
                              width: 391.5*fem,
                              height: 171.89*fem,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        // group79hS (145:2181)
                        left: 26*fem,
                        top: 18*fem,
                        child: Container(
                          width: 60*fem,
                          height: 57*fem,
                          child: Stack(
                            children: [
                              Positioned(
                                // ellipse4fvg (145:2182)
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
                                            'assets/images/ellipse-4-bg.png',
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                // ellipse5N4Q (145:2183)
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
                        // group6dW8 (145:2184)
                        left: 325*fem,
                        top: 31*fem,
                        child: Container(
                          width: 29*fem,
                          height: 31*fem,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // rectangle33wFv (145:2185)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 10*fem),
                                width: double.infinity,
                                height: 4*fem,
                                decoration: BoxDecoration (
                                  color: Color(0xff550080),
                                ),
                              ),
                              Container(
                                // rectangle34Tzx (145:2186)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 9*fem),
                                width: double.infinity,
                                height: 4*fem,
                                decoration: BoxDecoration (
                                  color: Color(0xff550080),
                                ),
                              ),
                              Container(
                                // rectangle35brG (145:2187)
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
                        // welcomederakz4 (145:2188)
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
                        // transaction5ex (145:2189)
                        left: 79*fem,
                        top: 118*fem,
                        child: Align(
                          child: SizedBox(
                            width: 100*fem,
                            height: 24*fem,
                            child: Text(
                              'Transaction',
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
                        // historyBT6 (145:2213)
                        left: 79*fem,
                        top: 136*fem,
                        child: Align(
                          child: SizedBox(
                            width: 59*fem,
                            height: 24*fem,
                            child: Text(
                              'History',
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
                        // avatardefaultsvgrepocom1Hm2 (145:2201)
                        left: 47.625*fem,
                        top: 126.8125*fem,
                        child: Align(
                          child: SizedBox(
                            width: 21.75*fem,
                            height: 25.38*fem,
                            child: Image.asset(
                              'assets/images/avatar-default-svgrepo-com-1-b1a.png',
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
                  // autogroupab44ak8 (NCsaMFHSjovjZ7noUhAb44)
                  padding: EdgeInsets.fromLTRB(20*fem, 44.61*fem, 15*fem, 8*fem),
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // autogroupbmuaVcC (NCsX9fwzVRDodHhteQbMuA)
                        margin: EdgeInsets.fromLTRB(7*fem, 0*fem, 0*fem, 6*fem),
                        width: double.infinity,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // rectangle38puN (145:2732)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 9*fem, 0*fem),
                              width: 278*fem,
                              height: 29*fem,
                              decoration: BoxDecoration (
                                borderRadius: BorderRadius.circular(5*fem),
                                color: Color(0x388f7aff),
                              ),
                            ),
                            Container(
                              // rectangle39kY8 (145:2733)
                              width: 61*fem,
                              height: 29*fem,
                              decoration: BoxDecoration (
                                borderRadius: BorderRadius.circular(5*fem),
                                color: Color(0x388f7aff),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        // autogroupjd5z6bz (NCsXNfaLm1CJBhAnfHjd5z)
                        margin: EdgeInsets.fromLTRB(6*fem, 0*fem, 0*fem, 4*fem),
                        width: double.infinity,
                        height: 36*fem,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                              // autogroupjvdzq3n (NCsXak4YuYQHDZEbXBjVdz)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 13*fem, 0*fem),
                              width: 168*fem,
                              height: double.infinity,
                              child: Stack(
                                children: [
                                  Positioned(
                                    // rectangle36MXv (145:2720)
                                    left: 0*fem,
                                    top: 7*fem,
                                    child: Align(
                                      child: SizedBox(
                                        width: 168*fem,
                                        height: 29*fem,
                                        child: Container(
                                          decoration: BoxDecoration (
                                            borderRadius: BorderRadius.circular(5*fem),
                                            color: Color(0x388f7aff),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    // incomeTqr (145:2728)
                                    left: 62*fem,
                                    top: 13*fem,
                                    child: Align(
                                      child: SizedBox(
                                        width: 43*fem,
                                        height: 17*fem,
                                        child: Text(
                                          'Income',
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
                                    // download1svgrepocom1Ztt (145:2730)
                                    left: 99*fem,
                                    top: 0*fem,
                                    child: Container(
                                      width: 26*fem,
                                      height: 26*fem,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              // autogroupwcyqJba (NCsXjeyNGeEKhjP1JQWCYQ)
                              width: 168*fem,
                              height: 29*fem,
                              decoration: BoxDecoration (
                                color: Color(0x388f7aff),
                                borderRadius: BorderRadius.circular(5*fem),
                              ),
                              child: Center(
                                child: Text(
                                  'Expenses',
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
                          ],
                        ),
                      ),
                      Container(
                        // autogroupbhvaPd2 (NCsXu9hYcxN9Lo9CYSBhVA)
                        margin: EdgeInsets.fromLTRB(62*fem, 0*fem, 40*fem, 31*fem),
                        width: double.infinity,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // downloadpdfurG (145:2734)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 91*fem, 3*fem),
                              child: Text(
                                'Download PDF',
                                style: SafeGoogleFont (
                                  'Poppins',
                                  fontSize: 11*ffem,
                                  fontWeight: FontWeight.w700,
                                  height: 1.5*ffem/fem,
                                  color: Color(0xff57336a),
                                ),
                              ),
                            ),
                            Container(
                              // downloadpdfckg (145:2735)
                              margin: EdgeInsets.fromLTRB(0*fem, 3*fem, 0*fem, 0*fem),
                              child: Text(
                                'Download PDF',
                                style: SafeGoogleFont (
                                  'Poppins',
                                  fontSize: 11*ffem,
                                  fontWeight: FontWeight.w700,
                                  height: 1.5*ffem/fem,
                                  color: Color(0xff57336a),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        // group2LAt (145:2278)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 6*fem, 8*fem),
                        padding: EdgeInsets.fromLTRB(18*fem, 8*fem, 13*fem, 14.81*fem),
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
                              // autogroupbyfsmGC (NCsbPYtJC3Ly82B1rdbYfS)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 6.63*fem, 0*fem),
                              height: double.infinity,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    // chocolatecarton6pG (145:2323)
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
                                    // autogroupveiuD8C (NCsbYYdJqbnhCcGFZPveiU)
                                    margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 0*fem, 0*fem),
                                    height: 13.38*fem,
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          // eventdateandtimesymbolsvgrepoc (145:2280)
                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 5*fem, 1.27*fem),
                                          width: 13*fem,
                                          height: 12.1*fem,
                                          child: Image.asset(
                                            'assets/images/event-date-and-time-symbol-svgrepo-com-1.png',
                                            width: 13*fem,
                                            height: 12.1*fem,
                                          ),
                                        ),
                                        Container(
                                          // autogroupgcecqQU (NCsbdsokzyAPB2m8eDgCEC)
                                          margin: EdgeInsets.fromLTRB(0*fem, 2.19*fem, 16.63*fem, 2.19*fem),
                                          width: 81*fem,
                                          height: double.infinity,
                                          child: Stack(
                                            children: [
                                              Positioned(
                                                // pmm3E (145:2325)
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
                                                // march20223WY (145:2326)
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
                                          // avatardefaultsvgrepocom19Za (145:2327)
                                          margin: EdgeInsets.fromLTRB(0*fem, 2*fem, 0*fem, 0*fem),
                                          width: 9.75*fem,
                                          height: 11.38*fem,
                                          child: Image.asset(
                                            'assets/images/avatar-default-svgrepo-com-1-rbr-ED6.png',
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
                              // chiomajoyrit (145:2329)
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
                              // boxessvgrepocom1Aja (145:2331)
                              margin: EdgeInsets.fromLTRB(0*fem, 24.81*fem, 2*fem, 0*fem),
                              width: 13*fem,
                              height: 10.74*fem,
                              child: Image.asset(
                                'assets/images/boxes-svgrepo-com-1-XKn.png',
                                width: 13*fem,
                                height: 10.74*fem,
                              ),
                            ),
                            Container(
                              // cartonssP6 (145:2330)
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
                              // Bua (145:2324)
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
                      Container(
                        // group3uqa (145:2341)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 4*fem, 9*fem),
                        padding: EdgeInsets.fromLTRB(18*fem, 8*fem, 13*fem, 14.81*fem),
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
                              // autogroup8cjak5W (NCscu1Na9sKk7WibBx8cjA)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 16.63*fem, 1.27*fem),
                              width: 100*fem,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    // fuelGpY (145:2386)
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 2.81*fem),
                                    child: Text(
                                      'Fuel',
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
                                    // autogroupnwmszEk (NCsd1kgL93A3AxHWy2NwmS)
                                    margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 0*fem, 0*fem),
                                    width: double.infinity,
                                    height: 12.1*fem,
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          // eventdateandtimesymbolsvgrepoc (145:2343)
                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 5*fem, 0*fem),
                                          width: 13*fem,
                                          height: 12.1*fem,
                                          child: Image.asset(
                                            'assets/images/event-date-and-time-symbol-svgrepo-com-1-mVr.png',
                                            width: 13*fem,
                                            height: 12.1*fem,
                                          ),
                                        ),
                                        Container(
                                          // autogroupsjm6pUg (NCsd614FcSXrS1Vf3msJM6)
                                          margin: EdgeInsets.fromLTRB(0*fem, 2.19*fem, 0*fem, 0.92*fem),
                                          width: 81*fem,
                                          height: double.infinity,
                                          child: Stack(
                                            children: [
                                              Positioned(
                                                // pmwpC (145:2388)
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
                                                // march2022EHW (145:2389)
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
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              // avatardefaultsvgrepocom1VjE (145:2390)
                              margin: EdgeInsets.fromLTRB(0*fem, 24.81*fem, 6.63*fem, 0*fem),
                              width: 9.75*fem,
                              height: 11.38*fem,
                              child: Image.asset(
                                'assets/images/avatar-default-svgrepo-com-1-Rwv.png',
                                width: 9.75*fem,
                                height: 11.38*fem,
                              ),
                            ),
                            Container(
                              // chiomajoynyE (145:2392)
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
                              // boxessvgrepocom1Vse (145:2394)
                              margin: EdgeInsets.fromLTRB(0*fem, 24.81*fem, 2*fem, 0*fem),
                              width: 13*fem,
                              height: 10.74*fem,
                              child: Image.asset(
                                'assets/images/boxes-svgrepo-com-1-zeC.png',
                                width: 13*fem,
                                height: 10.74*fem,
                              ),
                            ),
                            Container(
                              // cartonsnLx (145:2393)
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
                              // 6cY (145:2387)
                              margin: EdgeInsets.fromLTRB(0*fem, 8.81*fem, 0*fem, 0*fem),
                              child: Text(
                                '+5,070',
                                style: SafeGoogleFont (
                                  'Montserrat',
                                  fontSize: 20*ffem,
                                  fontWeight: FontWeight.w600,
                                  height: 1.2175*ffem/fem,
                                  color: Color(0xb5c70303),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        // group8DSG (145:2404)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 6*fem, 8*fem),
                        padding: EdgeInsets.fromLTRB(18*fem, 12*fem, 13*fem, 12*fem),
                        width: double.infinity,
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
                              // autogroupeofvFtk (NCsaeQTXCLfMnAX1enEofv)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 20*fem, 0*fem),
                              width: 229*fem,
                              height: double.infinity,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    // chocolatecartonbBv (145:2406)
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
                                    // group5WZn (145:2408)
                                    padding: EdgeInsets.fromLTRB(0*fem, 0.81*fem, 0*fem, 0.08*fem),
                                    width: double.infinity,
                                    height: 13*fem,
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          // eventdateandtimesymbolsvgrepoc (145:2409)
                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 5*fem, 0*fem),
                                          width: 13*fem,
                                          height: 12.1*fem,
                                          child: Image.asset(
                                            'assets/images/event-date-and-time-symbol-svgrepo-com-1-XvG.png',
                                            width: 13*fem,
                                            height: 12.1*fem,
                                          ),
                                        ),
                                        Container(
                                          // autogroup4hfwXjn (NCsappKqfhZgwmgJ3o4hFW)
                                          margin: EdgeInsets.fromLTRB(0*fem, 1.19*fem, 16.63*fem, 1.92*fem),
                                          width: 81*fem,
                                          height: double.infinity,
                                          child: Stack(
                                            children: [
                                              Positioned(
                                                // pmrXA (145:2452)
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
                                                // march2022ZgU (145:2453)
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
                                          // avatardefaultsvgrepocom1Tmr (145:2454)
                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 6.63*fem, 0.73*fem),
                                          width: 9.75*fem,
                                          height: 11.38*fem,
                                          child: Image.asset(
                                            'assets/images/avatar-default-svgrepo-com-1-c2c.png',
                                            width: 9.75*fem,
                                            height: 11.38*fem,
                                          ),
                                        ),
                                        Container(
                                          // chiomajoynJL (145:2456)
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
                                          // boxessvgrepocom1udr (145:2458)
                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 2*fem, 0.73*fem),
                                          width: 13*fem,
                                          height: 10.74*fem,
                                          child: Image.asset(
                                            'assets/images/boxes-svgrepo-com-1-yEY.png',
                                            width: 13*fem,
                                            height: 10.74*fem,
                                          ),
                                        ),
                                        Container(
                                          // cartons1gt (145:2457)
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
                              // wKe (145:2407)
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
                      Container(
                        // group9sDJ (145:2468)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 6*fem, 8*fem),
                        padding: EdgeInsets.fromLTRB(18*fem, 8*fem, 13*fem, 14.81*fem),
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
                              // autogroupou28hy2 (NCsc7nAw4hG4wLRvuVou28)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 16.63*fem, 1.27*fem),
                              width: 100*fem,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    // eedcbillS9v (145:2513)
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 2.81*fem),
                                    child: Text(
                                      'EEDC Bill',
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
                                    // autogroup8a8gkwJ (NCscKcAZMrd1BxfFzm8a8G)
                                    margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 0*fem, 0*fem),
                                    width: double.infinity,
                                    height: 12.1*fem,
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          // eventdateandtimesymbolsvgrepoc (145:2470)
                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 5*fem, 0*fem),
                                          width: 13*fem,
                                          height: 12.1*fem,
                                          child: Image.asset(
                                            'assets/images/event-date-and-time-symbol-svgrepo-com-1-gpG.png',
                                            width: 13*fem,
                                            height: 12.1*fem,
                                          ),
                                        ),
                                        Container(
                                          // autogroup2wgpoPn (NCscRrV9eGmCgvZEEa2WGp)
                                          margin: EdgeInsets.fromLTRB(0*fem, 2.19*fem, 0*fem, 0.92*fem),
                                          width: 81*fem,
                                          height: double.infinity,
                                          child: Stack(
                                            children: [
                                              Positioned(
                                                // pmKsv (145:2515)
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
                                                // march2022dNp (145:2516)
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
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              // avatardefaultsvgrepocom18Ka (145:2517)
                              margin: EdgeInsets.fromLTRB(0*fem, 24.81*fem, 6.63*fem, 0*fem),
                              width: 9.75*fem,
                              height: 11.38*fem,
                              child: Image.asset(
                                'assets/images/avatar-default-svgrepo-com-1-46t.png',
                                width: 9.75*fem,
                                height: 11.38*fem,
                              ),
                            ),
                            Container(
                              // chiomajoyEtQ (145:2519)
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
                              // boxessvgrepocom1ZQt (145:2521)
                              margin: EdgeInsets.fromLTRB(0*fem, 24.81*fem, 2*fem, 0*fem),
                              width: 13*fem,
                              height: 10.74*fem,
                              child: Image.asset(
                                'assets/images/boxes-svgrepo-com-1-aFA.png',
                                width: 13*fem,
                                height: 10.74*fem,
                              ),
                            ),
                            Container(
                              // cartonsgEc (145:2520)
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
                              // noS (145:2514)
                              margin: EdgeInsets.fromLTRB(0*fem, 8.81*fem, 0*fem, 0*fem),
                              child: Text(
                                '+5,070',
                                style: SafeGoogleFont (
                                  'Montserrat',
                                  fontSize: 20*ffem,
                                  fontWeight: FontWeight.w600,
                                  height: 1.2175*ffem/fem,
                                  color: Color(0xb5c70303),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        // group10ih6 (145:2531)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 4*fem, 0*fem),
                        padding: EdgeInsets.fromLTRB(18*fem, 8*fem, 13*fem, 14.81*fem),
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
                              // autogroupdjqiMk4 (NCsdfuFS7Cvgv3DwnEDjqi)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 6.63*fem, 0*fem),
                              height: double.infinity,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    // chocolatecartonVbN (145:2576)
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
                                    // autogroupct12o6G (NCsdpQ1H41gKS9eDwjCT12)
                                    margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 0*fem, 0*fem),
                                    height: 13.38*fem,
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          // eventdateandtimesymbolsvgrepoc (145:2533)
                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 5*fem, 1.27*fem),
                                          width: 13*fem,
                                          height: 12.1*fem,
                                          child: Image.asset(
                                            'assets/images/event-date-and-time-symbol-svgrepo-com-1-KkU.png',
                                            width: 13*fem,
                                            height: 12.1*fem,
                                          ),
                                        ),
                                        Container(
                                          // autogroupbbd2Dvg (NCsduECZWdMur6U9VHbbd2)
                                          margin: EdgeInsets.fromLTRB(0*fem, 2.19*fem, 16.63*fem, 2.19*fem),
                                          width: 81*fem,
                                          height: double.infinity,
                                          child: Stack(
                                            children: [
                                              Positioned(
                                                // pmA5E (145:2578)
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
                                                // march20224gQ (145:2579)
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
                                          // avatardefaultsvgrepocom1n6c (145:2580)
                                          margin: EdgeInsets.fromLTRB(0*fem, 2*fem, 0*fem, 0*fem),
                                          width: 9.75*fem,
                                          height: 11.38*fem,
                                          child: Image.asset(
                                            'assets/images/avatar-default-svgrepo-com-1-zw2.png',
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
                              // chiomajoy6NC (145:2582)
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
                              // boxessvgrepocom1Cw2 (145:2584)
                              margin: EdgeInsets.fromLTRB(0*fem, 24.81*fem, 2*fem, 0*fem),
                              width: 13*fem,
                              height: 10.74*fem,
                              child: Image.asset(
                                'assets/images/boxes-svgrepo-com-1-tk8.png',
                                width: 13*fem,
                                height: 10.74*fem,
                              ),
                            ),
                            Container(
                              // cartonsWRv (145:2583)
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
                              // E72 (145:2577)
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
                    ],
                  ),
                ),
                Container(
                  // autogroupgmziXrp (NCsY8eK4bJ2jTgH46agMZi)
                  width: double.infinity,
                  height: 165*fem,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        // autogroupw7hj5dS (NCsYX8fbDC93f9W9MVW7hJ)
                        width: 390*fem,
                        height: double.infinity,
                        child: Stack(
                          children: [
                            Positioned(
                              // img57211recoveredgrey1brg (145:2164)
                              left: 38*fem,
                              top: 108*fem,
                              child: Align(
                                child: SizedBox(
                                  width: 27*fem,
                                  height: 20*fem,
                                  child: Image.asset(
                                    'assets/images/img5721-1-recovered-grey-1-TNp.png',
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // overviewJm6 (145:2165)
                              left: 29*fem,
                              top: 133*fem,
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
                              // staffmanagementoC4 (145:2166)
                              left: 225.5*fem,
                              top: 134*fem,
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
                              // settings6BA (145:2167)
                              left: 331*fem,
                              top: 136*fem,
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
                              // staffgray1Pg4 (145:2168)
                              left: 237*fem,
                              top: 105*fem,
                              child: Align(
                                child: SizedBox(
                                  width: 30*fem,
                                  height: 23*fem,
                                  child: Image.asset(
                                    'assets/images/staff-gray-1-Xkk.png',
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // settingsgrey1iiL (145:2169)
                              left: 331*fem,
                              top: 105*fem,
                              child: Align(
                                child: SizedBox(
                                  width: 32*fem,
                                  height: 26*fem,
                                  child: Image.asset(
                                    'assets/images/settings-grey-1-Amn.png',
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // rectangle17FCU (145:2170)
                              left: 103*fem,
                              top: 69*fem,
                              child: Align(
                                child: SizedBox(
                                  width: 83*fem,
                                  height: 96*fem,
                                  child: Image.asset(
                                    'assets/images/rectangle-17-BnQ.png',
                                    width: 83*fem,
                                    height: 96*fem,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // inventoryclicked1ZU4 (145:2171)
                              left: 132*fem,
                              top: 107*fem,
                              child: Align(
                                child: SizedBox(
                                  width: 26*fem,
                                  height: 25*fem,
                                  child: Image.asset(
                                    'assets/images/inventory-clicked-1-Nk8.png',
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // metresUb2 (145:2173)
                              left: 309*fem,
                              top: 3*fem,
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
                              // metresZ6g (145:2174)
                              left: 307*fem,
                              top: 2*fem,
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
                              // vector2SRN (145:2175)
                              left: 0*fem,
                              top: 39*fem,
                              child: Align(
                                child: SizedBox(
                                  width: 390*fem,
                                  height: 126*fem,
                                  child: Image.asset(
                                    'assets/images/vector-2.png',
                                    width: 390*fem,
                                    height: 126*fem,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // inventorykBA (145:2177)
                              left: 120*fem,
                              top: 132*fem,
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
                              // group113RA (145:2594)
                              left: 21*fem,
                              top: 0*fem,
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
                                      // autogrouprz8p9sW (NCsZ4CcA4Mcfy96LhSrz8p)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 6.63*fem, 0*fem),
                                      height: double.infinity,
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            // chocolatecartontKJ (145:2639)
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
                                            // autogrouphj9wzt8 (NCsZCcXoihkctqZnwQHJ9W)
                                            margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 0*fem, 0*fem),
                                            height: 13.38*fem,
                                            child: Row(
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                Container(
                                                  // eventdateandtimesymbolsvgrepoc (145:2596)
                                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 5*fem, 1.27*fem),
                                                  width: 13*fem,
                                                  height: 12.1*fem,
                                                  child: Image.asset(
                                                    'assets/images/event-date-and-time-symbol-svgrepo-com-1-fpt.png',
                                                    width: 13*fem,
                                                    height: 12.1*fem,
                                                  ),
                                                ),
                                                Container(
                                                  // autogroupv3mz2Zv (NCsZHn3sK9twgSB2B8v3Mz)
                                                  margin: EdgeInsets.fromLTRB(0*fem, 2.19*fem, 16.63*fem, 2.19*fem),
                                                  width: 81*fem,
                                                  height: double.infinity,
                                                  child: Stack(
                                                    children: [
                                                      Positioned(
                                                        // pmM6Q (145:2641)
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
                                                        // march2022Efz (145:2642)
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
                                                  // avatardefaultsvgrepocom192G (145:2643)
                                                  margin: EdgeInsets.fromLTRB(0*fem, 2*fem, 0*fem, 0*fem),
                                                  width: 9.75*fem,
                                                  height: 11.38*fem,
                                                  child: Image.asset(
                                                    'assets/images/avatar-default-svgrepo-com-1-rbr.png',
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
                                      // chiomajoyF5J (145:2645)
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
                                      // boxessvgrepocom19wN (145:2647)
                                      margin: EdgeInsets.fromLTRB(0*fem, 24.81*fem, 2*fem, 0*fem),
                                      width: 13*fem,
                                      height: 10.74*fem,
                                      child: Image.asset(
                                        'assets/images/boxes-svgrepo-com-1.png',
                                        width: 13*fem,
                                        height: 10.74*fem,
                                      ),
                                    ),
                                    Container(
                                      // cartonsFzQ (145:2646)
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
                                      // mxk (145:2640)
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
                              // rectangle2JSt (145:2176)
                              left: 293*fem,
                              top: 2*fem,
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
                              // Y6L (145:2178)
                              left: 317*fem,
                              top: 9*fem,
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
        ),
            ),
    );
  }
}