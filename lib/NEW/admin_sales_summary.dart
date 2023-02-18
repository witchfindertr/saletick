import 'package:flutter/material.dart';
import 'package:saletick/utilities/utils.dart';

class AdminSalesSummaryScreen extends StatelessWidget {
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
            // frame22C1N (14:58)
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
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  // autogroupfhegsNQ (NCs5LVnzezgHcKHqaxfHEG)
                  padding: EdgeInsets.fromLTRB(2*fem, 0*fem, 0*fem, 8*fem),
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // autogroup1kjpBtt (NCrzjo841ekTnNW9ai1KJp)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 12.61*fem),
                        padding: EdgeInsets.fromLTRB(24*fem, 27*fem, 36*fem, 38.39*fem),
                        width: double.infinity,
                        height: 396.39*fem,
                        decoration: BoxDecoration (
                          image: DecorationImage (
                            fit: BoxFit.cover,
                            image: AssetImage (
                              'assets/images/rectangle-11-KoN.png',
                            ),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // autogrouppn5v3gC (NCs1HcYNQwmES5bnEZPn5v)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 38*fem),
                              width: double.infinity,
                              height: 57*fem,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // autogroupjsdaBvp (NCs1TSbKu6MnSo9HAmJsdA)
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 46*fem, 0*fem),
                                    width: 60*fem,
                                    height: double.infinity,
                                    child: Stack(
                                      children: [
                                        Positioned(
                                          // ellipse4K1S (14:174)
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
                                                      'assets/images/ellipse-4-bg-NaC.png',
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          // ellipse5zdN (14:175)
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
                                    // welcomedera6Ac (14:90)
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
                                    // autogroupgrpntkg (NCs1YMcoeAf4T9v2dsGRPn)
                                    margin: EdgeInsets.fromLTRB(0*fem, 8*fem, 0*fem, 18*fem),
                                    width: 29*fem,
                                    height: double.infinity,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          // rectangle33cgg (14:171)
                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 10*fem),
                                          width: double.infinity,
                                          height: 4*fem,
                                          decoration: BoxDecoration (
                                            color: Color(0xff550080),
                                          ),
                                        ),
                                        Container(
                                          // rectangle34YKS (14:172)
                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 9*fem),
                                          width: double.infinity,
                                          height: 4*fem,
                                          decoration: BoxDecoration (
                                            color: Color(0xff550080),
                                          ),
                                        ),
                                        Container(
                                          // rectangle35UTz (14:173)
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
                              // incomesummaryDwN (14:89)
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
                              // autogroupkucx8oS (NCs1mw4WtxwLASzi7ZKUcx)
                              margin: EdgeInsets.fromLTRB(84*fem, 0*fem, 78*fem, 41*fem),
                              width: double.infinity,
                              height: 68*fem,
                              child: Stack(
                                children: [
                                  Positioned(
                                    // sFE (14:150)
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
                                    // todayMw6 (14:169)
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
                              // autogroup9o9sfB6 (NCs1uWgDiivTA21u859o9S)
                              margin: EdgeInsets.fromLTRB(44*fem, 0*fem, 57*fem, 13*fem),
                              width: double.infinity,
                              height: 17*fem,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    // autogroupohkcyha (NCs24FveWuX8TNGf4Cohkc)
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
                                    // monthlyT6x (14:86)
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
                                    // weeklyZfn (14:87)
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
                                    // yearlyHLt (14:88)
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
                              // autogroupe2h6q7W (NCs2BqYMLfWFSwHr4ie2H6)
                              margin: EdgeInsets.fromLTRB(10*fem, 0*fem, 0*fem, 4*fem),
                              height: 69*fem,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Container(
                                    // autogroupzhipLa4 (NCs2QR1jBxQL3H2cTszHip)
                                    padding: EdgeInsets.fromLTRB(0*fem, 21*fem, 25*fem, 0*fem),
                                    height: double.infinity,
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      children: [
                                        Container(
                                          // rectangle551r (14:72)
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
                                          // rectangle4QK2 (14:71)
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
                                          // rectangle6jMJ (14:73)
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
                                    // rectangle748g (14:74)
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 25*fem, 0*fem),
                                    width: 23*fem,
                                    height: 69*fem,
                                    decoration: BoxDecoration (
                                      borderRadius: BorderRadius.circular(8*fem),
                                      color: Color(0x51ffffff),
                                    ),
                                  ),
                                  Container(
                                    // rectangle8Nv4 (14:75)
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 25*fem, 0*fem),
                                    width: 24*fem,
                                    height: 56*fem,
                                    decoration: BoxDecoration (
                                      borderRadius: BorderRadius.circular(8*fem),
                                      color: Color(0x51ffffff),
                                    ),
                                  ),
                                  Container(
                                    // rectangle97ck (14:76)
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 25*fem, 0*fem),
                                    width: 23*fem,
                                    height: 69*fem,
                                    decoration: BoxDecoration (
                                      borderRadius: BorderRadius.circular(8*fem),
                                      color: Color(0x51ffffff),
                                    ),
                                  ),
                                  Container(
                                    // rectangle10esa (14:77)
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
                              // autogroupcaxiCu6 (NCs2c5LxvCXu75NHi4CAXi)
                              margin: EdgeInsets.fromLTRB(18*fem, 0*fem, 10*fem, 0*fem),
                              width: double.infinity,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // v4Q (14:78)
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
                                    // SYY (14:79)
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
                                    // xmn (14:80)
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
                                    // hUU (14:81)
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
                                    // EUQ (14:82)
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
                                    // Acx (14:83)
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
                                    // hct (14:84)
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
                        // autogroupwtek4CY (NCs3PJYc1NbaHFewzWWtEk)
                        margin: EdgeInsets.fromLTRB(14*fem, 0*fem, 20*fem, 6*fem),
                        width: double.infinity,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              // overviewzbz (14:91)
                              margin: EdgeInsets.fromLTRB(0*fem, 3*fem, 131*fem, 0*fem),
                              child: Text(
                                'Overview',
                                style: SafeGoogleFont (
                                  'Poppins',
                                  fontSize: 20*ffem,
                                  fontWeight: FontWeight.w700,
                                  height: 1.5*ffem/fem,
                                  color: Color(0xff8f7aff),
                                ),
                              ),
                            ),
                            Container(
                              // autogroupxnb2vVe (NCs3YTx1DrGfYfdqYMxnb2)
                              width: 125*fem,
                              height: 29*fem,
                              decoration: BoxDecoration (
                                color: Color(0x388f7aff),
                                borderRadius: BorderRadius.circular(5*fem),
                              ),
                              child: Center(
                                child: Text(
                                  'See All Transactions',
                                  style: SafeGoogleFont (
                                    'Poppins',
                                    fontSize: 8*ffem,
                                    fontWeight: FontWeight.w700,
                                    height: 1.5*ffem/fem,
                                    color: Color(0xff440564),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        // line1pL8 (14:92)
                        margin: EdgeInsets.fromLTRB(23*fem, 0*fem, 25*fem, 11*fem),
                        width: double.infinity,
                        height: 1*fem,
                        decoration: BoxDecoration (
                          color: Color(0xffdddddd),
                        ),
                      ),
                      Container(
                        // group19dJ (14:257)
                        margin: EdgeInsets.fromLTRB(19*fem, 0*fem, 20*fem, 8*fem),
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
                              // autogroupkgtpnRN (NCs6KUA4ksVDShs138kGtp)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 20*fem, 0*fem),
                              width: 229*fem,
                              height: double.infinity,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    // chocolatecartonJec (14:140)
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
                                    // group5E2U (14:447)
                                    padding: EdgeInsets.fromLTRB(0*fem, 0.81*fem, 0*fem, 0.08*fem),
                                    width: double.infinity,
                                    height: 13*fem,
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          // eventdateandtimesymbolsvgrepoc (14:97)
                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 5*fem, 0*fem),
                                          width: 13*fem,
                                          height: 12.1*fem,
                                          child: Image.asset(
                                            'assets/images/event-date-and-time-symbol-svgrepo-com-1-Let.png',
                                            width: 13*fem,
                                            height: 12.1*fem,
                                          ),
                                        ),
                                        Container(
                                          // autogroupg6n4pmN (NCs6cYVwvwcA5LePHgG6N4)
                                          margin: EdgeInsets.fromLTRB(0*fem, 1.19*fem, 16.63*fem, 1.92*fem),
                                          width: 81*fem,
                                          height: double.infinity,
                                          child: Stack(
                                            children: [
                                              Positioned(
                                                // pmA4Y (14:159)
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
                                                // march2022Frg (14:160)
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
                                          // avatardefaultsvgrepocom1ZMa (14:182)
                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 6.63*fem, 0.73*fem),
                                          width: 9.75*fem,
                                          height: 11.38*fem,
                                          child: Image.asset(
                                            'assets/images/avatar-default-svgrepo-com-1-ftc.png',
                                            width: 9.75*fem,
                                            height: 11.38*fem,
                                          ),
                                        ),
                                        Container(
                                          // chiomajoy4JL (14:161)
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
                                          // boxessvgrepocom19qa (14:185)
                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 2*fem, 0.73*fem),
                                          width: 13*fem,
                                          height: 10.74*fem,
                                          child: Image.asset(
                                            'assets/images/boxes-svgrepo-com-1-eZv.png',
                                            width: 13*fem,
                                            height: 10.74*fem,
                                          ),
                                        ),
                                        Container(
                                          // cartonsrV6 (14:162)
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
                              // NiL (14:149)
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
                        // group2hkc (14:258)
                        margin: EdgeInsets.fromLTRB(19*fem, 0*fem, 20*fem, 8*fem),
                        padding: EdgeInsets.fromLTRB(18*fem, 8*fem, 13*fem, 14.81*fem),
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
                              // autogroupkvycwQ4 (NCs7GC5tCMgiFwurZckVYc)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 6.63*fem, 0*fem),
                              height: double.infinity,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    // chocolatecartonGBS (14:303)
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
                                    // autogroupjchvybe (NCs7Qgqj9ASLn4L8j7jChv)
                                    margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 0*fem, 0*fem),
                                    height: 13.38*fem,
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          // eventdateandtimesymbolsvgrepoc (14:260)
                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 5*fem, 1.27*fem),
                                          width: 13*fem,
                                          height: 12.1*fem,
                                          child: Image.asset(
                                            'assets/images/event-date-and-time-symbol-svgrepo-com-1-YVW.png',
                                            width: 13*fem,
                                            height: 12.1*fem,
                                          ),
                                        ),
                                        Container(
                                          // autogroupgjxkQS4 (NCs7WSB9iptSiYZ9RfGjxk)
                                          margin: EdgeInsets.fromLTRB(0*fem, 2.19*fem, 16.63*fem, 2.19*fem),
                                          width: 81*fem,
                                          height: double.infinity,
                                          child: Stack(
                                            children: [
                                              Positioned(
                                                // pm8sr (14:305)
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
                                                // march20222yE (14:306)
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
                                          // avatardefaultsvgrepocom1YRn (14:307)
                                          margin: EdgeInsets.fromLTRB(0*fem, 2*fem, 0*fem, 0*fem),
                                          width: 9.75*fem,
                                          height: 11.38*fem,
                                          child: Image.asset(
                                            'assets/images/avatar-default-svgrepo-com-1-E7S.png',
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
                              // chiomajoyeUp (14:309)
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
                              // boxessvgrepocom1Mu2 (14:311)
                              margin: EdgeInsets.fromLTRB(0*fem, 24.81*fem, 2*fem, 0*fem),
                              width: 13*fem,
                              height: 10.74*fem,
                              child: Image.asset(
                                'assets/images/boxes-svgrepo-com-1-qpk.png',
                                width: 13*fem,
                                height: 10.74*fem,
                              ),
                            ),
                            Container(
                              // cartonsgAc (14:310)
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
                              // oW8 (14:304)
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
                        // group3XS8 (14:321)
                        margin: EdgeInsets.fromLTRB(20*fem, 0*fem, 19*fem, 0*fem),
                        padding: EdgeInsets.fromLTRB(18*fem, 8*fem, 13*fem, 14.81*fem),
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
                              // autogroupkyhvZdi (NCs8AAbHGhagVZmSd9KYHv)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 6.63*fem, 0*fem),
                              height: double.infinity,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    // chocolatecartonhV2 (14:366)
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
                                    // autogroupbtfnQeL (NCs8HfNnozx7tiqoi7bTfn)
                                    margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 0*fem, 0*fem),
                                    height: 13.38*fem,
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          // eventdateandtimesymbolsvgrepoc (14:323)
                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 5*fem, 1.27*fem),
                                          width: 13*fem,
                                          height: 12.1*fem,
                                          child: Image.asset(
                                            'assets/images/event-date-and-time-symbol-svgrepo-com-1-zSU.png',
                                            width: 13*fem,
                                            height: 12.1*fem,
                                          ),
                                        ),
                                        Container(
                                          // autogroupsd9aeHn (NCs8NQjszA22iFiuL8SD9A)
                                          margin: EdgeInsets.fromLTRB(0*fem, 2.19*fem, 16.63*fem, 2.19*fem),
                                          width: 81*fem,
                                          height: double.infinity,
                                          child: Stack(
                                            children: [
                                              Positioned(
                                                // pmn96 (14:368)
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
                                                // march2022VJQ (14:369)
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
                                          // avatardefaultsvgrepocom1CTi (14:370)
                                          margin: EdgeInsets.fromLTRB(0*fem, 2*fem, 0*fem, 0*fem),
                                          width: 9.75*fem,
                                          height: 11.38*fem,
                                          child: Image.asset(
                                            'assets/images/avatar-default-svgrepo-com-1-bCU.png',
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
                              // chiomajoyWzC (14:372)
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
                              // boxessvgrepocom1qma (14:374)
                              margin: EdgeInsets.fromLTRB(0*fem, 24.81*fem, 2*fem, 0*fem),
                              width: 13*fem,
                              height: 10.74*fem,
                              child: Image.asset(
                                'assets/images/boxes-svgrepo-com-1-YMW.png',
                                width: 13*fem,
                                height: 10.74*fem,
                              ),
                            ),
                            Container(
                              // cartonsx5W (14:373)
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
                              // fVi (14:367)
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
                  // autogroupshgtb8U (NCs3iNq9zTUu9o8AQ7SHGt)
                  width: double.infinity,
                  height: 187*fem,
                  child: Stack(
                    children: [
                      Positioned(
                        // img57211recoveredgrey17sW (14:61)
                        left: 38*fem,
                        top: 130*fem,
                        child: Align(
                          child: SizedBox(
                            width: 27*fem,
                            height: 20*fem,
                            child: Image.asset(
                              'assets/images/img5721-1-recovered-grey-1-61v.png',
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        // overviewDfe (14:62)
                        left: 29*fem,
                        top: 155*fem,
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
                        // staffmanagementKya (14:64)
                        left: 225.5*fem,
                        top: 156*fem,
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
                        // settingspvL (14:65)
                        left: 331*fem,
                        top: 158*fem,
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
                        // staffgray1XZr (14:66)
                        left: 237*fem,
                        top: 127*fem,
                        child: Align(
                          child: SizedBox(
                            width: 30*fem,
                            height: 23*fem,
                            child: TextButton(
                              onPressed: () {},
                              style: TextButton.styleFrom (
                                padding: EdgeInsets.zero,
                              ),
                              child: Image.asset(
                                'assets/images/staff-gray-1-j7v.png',
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        // settingsgrey1RQL (14:67)
                        left: 331*fem,
                        top: 127*fem,
                        child: Align(
                          child: SizedBox(
                            width: 32*fem,
                            height: 26*fem,
                            child: Image.asset(
                              'assets/images/settings-grey-1-Hkc.png',
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        // inventoryclicked1LnC (14:69)
                        left: 132*fem,
                        top: 129*fem,
                        child: Align(
                          child: SizedBox(
                            width: 26*fem,
                            height: 25*fem,
                            child: Image.asset(
                              'assets/images/inventory-clicked-1-Fh2.png',
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        // metresSaL (14:147)
                        left: 309*fem,
                        top: 25*fem,
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
                        // metresLQp (14:148)
                        left: 307*fem,
                        top: 24*fem,
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
                        // group4c7S (14:384)
                        left: 20*fem,
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
                                // autogroupwopeoxc (NCs4AnEpwvWJEfn63bWoPe)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 6.63*fem, 0*fem),
                                height: double.infinity,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      // chocolatecartonw3E (14:429)
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
                                      // autogroupnifieCY (NCs4K7LHKp2ZZxJiN1NiFi)
                                      margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 0*fem, 0*fem),
                                      height: 13.38*fem,
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            // eventdateandtimesymbolsvgrepoc (14:386)
                                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 5*fem, 1.27*fem),
                                            width: 13*fem,
                                            height: 12.1*fem,
                                            child: Image.asset(
                                              'assets/images/event-date-and-time-symbol-svgrepo-com-1-m6g.png',
                                              width: 13*fem,
                                              height: 12.1*fem,
                                            ),
                                          ),
                                          Container(
                                            // autogrouptenuT9z (NCs4mWjxHH3xepxe1VTENU)
                                            margin: EdgeInsets.fromLTRB(0*fem, 2.19*fem, 16.63*fem, 2.19*fem),
                                            width: 81*fem,
                                            height: double.infinity,
                                            child: Stack(
                                              children: [
                                                Positioned(
                                                  // pmAaC (14:431)
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
                                                  // march2022rhv (14:432)
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
                                            // avatardefaultsvgrepocom19BE (14:433)
                                            margin: EdgeInsets.fromLTRB(0*fem, 2*fem, 0*fem, 0*fem),
                                            width: 9.75*fem,
                                            height: 11.38*fem,
                                            child: Image.asset(
                                              'assets/images/avatar-default-svgrepo-com-1-aNU.png',
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
                                // chiomajoy3XW (14:435)
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
                                // boxessvgrepocom1wct (14:437)
                                margin: EdgeInsets.fromLTRB(0*fem, 24.81*fem, 2*fem, 0*fem),
                                width: 13*fem,
                                height: 10.74*fem,
                                child: Image.asset(
                                  'assets/images/boxes-svgrepo-com-1-Rap.png',
                                  width: 13*fem,
                                  height: 10.74*fem,
                                ),
                              ),
                              Container(
                                // cartonse1W (14:436)
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
                                // kaL (14:430)
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
                        // vector2Dip (14:179)
                        left: 0*fem,
                        top: 61*fem,
                        child: Align(
                          child: SizedBox(
                            width: 390*fem,
                            height: 126*fem,
                            child: Image.asset(
                              'assets/images/vector-2-bSQ.png',
                              width: 390*fem,
                              height: 126*fem,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        // rectangle2FfW (14:157)
                        left: 293*fem,
                        top: 24*fem,
                        child: Align(
                          child: SizedBox(
                            width: 75*fem,
                            height: 73*fem,
                            child: TextButton(
                              onPressed: () {},
                              style: TextButton.styleFrom (
                                padding: EdgeInsets.zero,
                              ),
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
                      ),
                      Positioned(
                        // NNk (14:158)
                        left: 314*fem,
                        top: 32*fem,
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
                        // inventoryf6x (14:63)
                        left: 120*fem,
                        top: 154*fem,
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
              ],
            ),
          ),
              ),
      ),
    );
  }
}