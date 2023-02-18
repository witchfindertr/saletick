import 'package:flutter/material.dart';
import 'package:saletick/utilities/utils.dart';

class InventoryListDropdownScreen extends StatelessWidget {
  
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
            // frame27FXW (33:346)
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
                  // autogroupxauxVwe (NCtFHJ5dr8VCbULkjcxaUx)
                  width: 391.5*fem,
                  height: 171.89*fem,
                  child: Stack(
                    children: [
                      Positioned(
                        // incomesummarypj2 (33:355)
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
                        // rectangle116gY (33:363)
                        left: 0*fem,
                        top: 0*fem,
                        child: Align(
                          child: SizedBox(
                            width: 391.5*fem,
                            height: 171.89*fem,
                            child: Image.asset(
                              'assets/images/rectangle-11-jUt.png',
                              width: 391.5*fem,
                              height: 171.89*fem,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        // group7c96 (33:364)
                        left: 26*fem,
                        top: 18*fem,
                        child: Container(
                          width: 60*fem,
                          height: 57*fem,
                          child: Stack(
                            children: [
                              Positioned(
                                // ellipse4YYY (33:365)
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
                                            'assets/images/ellipse-4-bg-nnk.png',
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                // ellipse5eba (33:366)
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
                        // group6XQU (33:367)
                        left: 325*fem,
                        top: 31*fem,
                        child: Container(
                          width: 29*fem,
                          height: 31*fem,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // rectangle332c8 (33:368)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 10*fem),
                                width: double.infinity,
                                height: 4*fem,
                                decoration: BoxDecoration (
                                  color: Color(0xff550080),
                                ),
                              ),
                              Container(
                                // rectangle34ZMA (33:369)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 9*fem),
                                width: double.infinity,
                                height: 4*fem,
                                decoration: BoxDecoration (
                                  color: Color(0xff550080),
                                ),
                              ),
                              Container(
                                // rectangle35hyA (33:370)
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
                        // welcomederafQC (33:371)
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
                        // inventoryavU (126:22)
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
                        // avatardefaultsvgrepocom1GoJ (126:23)
                        left: 60.625*fem,
                        top: 129.8125*fem,
                        child: Align(
                          child: SizedBox(
                            width: 21.75*fem,
                            height: 25.38*fem,
                            child: Image.asset(
                              'assets/images/avatar-default-svgrepo-com-1-ByJ.png',
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
                  // autogroupzc88B9a (NCtHBVR2HERLZfwu6Uzc88)
                  padding: EdgeInsets.fromLTRB(14*fem, 59.61*fem, 22*fem, 8*fem),
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // group22VRA (152:3734)
                        margin: EdgeInsets.fromLTRB(8*fem, 0*fem, 0*fem, 24*fem),
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
                              // searchcategoryaxQ (152:3221)
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
                              // autogrouptg5nhXE (NCtK1wMewgfkqJ1rurtg5N)
                              padding: EdgeInsets.fromLTRB(25*fem, 12.28*fem, 22.79*fem, 11.28*fem),
                              height: double.infinity,
                              decoration: BoxDecoration (
                                color: Color(0xff8f7aff),
                                borderRadius: BorderRadius.circular(3*fem),
                              ),
                              child: Center(
                                // searchsvgrepocom1123i (152:3222)
                                child: SizedBox(
                                  width: 18.21*fem,
                                  height: 19.45*fem,
                                  child: Image.asset(
                                    'assets/images/search-svgrepo-com-1-1-VDr.png',
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
                        // autogroupcme8wAg (NCtFe7pGnrHrvgfKXecMe8)
                        margin: EdgeInsets.fromLTRB(19*fem, 0*fem, 11*fem, 11*fem),
                        width: double.infinity,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // categoriessKE (145:844)
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
                              // addnewz8x (145:1626)
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
                              // tk8 (145:1625)
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
                        // group83N8 (145:1104)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 3*fem, 13*fem),
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
                              // rectangle41HGU (152:3225)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 12*fem, 0*fem),
                              width: 8*fem,
                              height: 30*fem,
                              decoration: BoxDecoration (
                                borderRadius: BorderRadius.circular(6*fem),
                                color: Color(0xff8f7aff),
                              ),
                            ),
                            Container(
                              // books1CU (145:1106)
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
                              // polygon1v4Y (152:3214)
                              width: 8*fem,
                              height: 14*fem,
                              child: Image.asset(
                                'assets/images/polygon-1.png',
                                width: 8*fem,
                                height: 14*fem,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        // autogroupadlkrD6 (NCtFrH8gDr7XYxfxK6AdLk)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 3*fem, 4*fem),
                        width: 349*fem,
                        height: 43*fem,
                        child: Container(
                          // group18n6k (152:3215)
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
                                // rectangle40e8x (152:3224)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 12*fem, 0*fem),
                                width: 8*fem,
                                height: 30*fem,
                                decoration: BoxDecoration (
                                  borderRadius: BorderRadius.circular(6*fem),
                                  color: Color(0xffc373eb),
                                ),
                              ),
                              Container(
                                // chocolatebarsxfS (152:3218)
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
                                // polygon2snQ (152:3217)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0*fem),
                                width: 14.23*fem,
                                height: 8.41*fem,
                                child: Image.asset(
                                  'assets/images/polygon-2.png',
                                  width: 14.23*fem,
                                  height: 8.41*fem,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        // group9biQ (145:1169)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 3*fem, 6*fem),
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
                              // snickerstBi (145:1171)
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
                              // group5nnt (145:1172)
                              left: 27*fem,
                              top: 21*fem,
                              child: Container(
                                width: 310*fem,
                                height: 26*fem,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Container(
                                      // eventdateandtimesymbolsvgrepoc (145:1173)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 5*fem, 1.08*fem),
                                      width: 13*fem,
                                      height: 12.1*fem,
                                      child: Image.asset(
                                        'assets/images/event-date-and-time-symbol-svgrepo-com-1-pcg.png',
                                        width: 13*fem,
                                        height: 12.1*fem,
                                      ),
                                    ),
                                    Container(
                                      // march2022pja (145:1216)
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
                                      // avatardefaultsvgrepocom1Yfa (145:1217)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 6.63*fem, 1.81*fem),
                                      width: 9.75*fem,
                                      height: 11.38*fem,
                                      child: Image.asset(
                                        'assets/images/avatar-default-svgrepo-com-1-3nY.png',
                                        width: 9.75*fem,
                                        height: 11.38*fem,
                                      ),
                                    ),
                                    Container(
                                      // chiomajoyG5n (145:1219)
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
                                      // boxessvgrepocom1aMN (145:1224)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 8*fem, 2.13*fem),
                                      width: 13*fem,
                                      height: 10.74*fem,
                                      child: Image.asset(
                                        'assets/images/boxes-svgrepo-com-1-1Yt.png',
                                        width: 13*fem,
                                        height: 10.74*fem,
                                      ),
                                    ),
                                    Container(
                                      // cartonsleftUhe (145:1220)
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
                                      // autogrouplcfrbnG (NCtHpDrpRbjPDjpHDSLcfr)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 3*fem),
                                      width: 5*fem,
                                      height: 23*fem,
                                      child: Image.asset(
                                        'assets/images/auto-group-lcfr.png',
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
                      Container(
                        // group11hqJ (145:1299)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 3*fem, 10*fem),
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
                              // marsy28 (145:1301)
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
                              // group5sdJ (145:1302)
                              left: 27*fem,
                              top: 19*fem,
                              child: Container(
                                width: 310*fem,
                                height: 28*fem,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Container(
                                      // eventdateandtimesymbolsvgrepoc (145:1303)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 5*fem, 1.08*fem),
                                      width: 13*fem,
                                      height: 12.1*fem,
                                      child: Image.asset(
                                        'assets/images/event-date-and-time-symbol-svgrepo-com-1-hAx.png',
                                        width: 13*fem,
                                        height: 12.1*fem,
                                      ),
                                    ),
                                    Container(
                                      // march2022WRN (145:1346)
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
                                      // avatardefaultsvgrepocom1E6U (145:1347)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 6.63*fem, 1.81*fem),
                                      width: 9.75*fem,
                                      height: 11.38*fem,
                                      child: Image.asset(
                                        'assets/images/avatar-default-svgrepo-com-1-vNU.png',
                                        width: 9.75*fem,
                                        height: 11.38*fem,
                                      ),
                                    ),
                                    Container(
                                      // chiomajoy8xY (145:1349)
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
                                      // boxessvgrepocom1rtY (145:1354)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 8*fem, 2.13*fem),
                                      width: 13*fem,
                                      height: 10.74*fem,
                                      child: Image.asset(
                                        'assets/images/boxes-svgrepo-com-1-Bq2.png',
                                        width: 13*fem,
                                        height: 10.74*fem,
                                      ),
                                    ),
                                    Container(
                                      // cartonsleftn1W (145:1350)
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
                                      // autogroupbyep5mJ (NCtJCdP9m3E1po6YYobyep)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 5*fem),
                                      width: 5*fem,
                                      height: 23*fem,
                                      child: Image.asset(
                                        'assets/images/auto-group-byep.png',
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
                      Container(
                        // group12BZS (145:1364)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 3*fem, 10*fem),
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
                              // bountyqdz (145:1366)
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
                              // group5jzG (145:1367)
                              left: 27*fem,
                              top: 20*fem,
                              child: Container(
                                width: 309*fem,
                                height: 27*fem,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Container(
                                      // eventdateandtimesymbolsvgrepoc (145:1368)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 5*fem, 1.08*fem),
                                      width: 13*fem,
                                      height: 12.1*fem,
                                      child: Image.asset(
                                        'assets/images/event-date-and-time-symbol-svgrepo-com-1-GTJ.png',
                                        width: 13*fem,
                                        height: 12.1*fem,
                                      ),
                                    ),
                                    Container(
                                      // march2022ZiQ (145:1411)
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
                                      // avatardefaultsvgrepocom1V6G (145:1412)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 6.63*fem, 1.81*fem),
                                      width: 9.75*fem,
                                      height: 11.38*fem,
                                      child: Image.asset(
                                        'assets/images/avatar-default-svgrepo-com-1-d5z.png',
                                        width: 9.75*fem,
                                        height: 11.38*fem,
                                      ),
                                    ),
                                    Container(
                                      // chiomajoyPxL (145:1414)
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
                                      // boxessvgrepocom1KLC (145:1419)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 8*fem, 2.13*fem),
                                      width: 13*fem,
                                      height: 10.74*fem,
                                      child: Image.asset(
                                        'assets/images/boxes-svgrepo-com-1-FVJ.png',
                                        width: 13*fem,
                                        height: 10.74*fem,
                                      ),
                                    ),
                                    Container(
                                      // cartonsleft2kQ (145:1415)
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
                                      // autogrouppttwYik (NCtJinBaV9w8cFHejmpTTW)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 4*fem),
                                      width: 5*fem,
                                      height: 23*fem,
                                      child: Image.asset(
                                        'assets/images/auto-group-pttw.png',
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
                      Container(
                        // group19fHa (152:3468)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 5*fem, 0*fem),
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
                              // rectangle42iFr (152:3472)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 12*fem, 0*fem),
                              width: 8*fem,
                              height: 30*fem,
                              decoration: BoxDecoration (
                                borderRadius: BorderRadius.circular(6*fem),
                                color: Color(0xff8f7aff),
                              ),
                            ),
                            Container(
                              // detergentsEjz (152:3471)
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
                              // polygon3mV2 (152:3470)
                              width: 8*fem,
                              height: 14*fem,
                              child: Image.asset(
                                'assets/images/polygon-3.png',
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
                  // autogroupzewkur8 (NCtG9BpAq116zmZgiYZeWk)
                  width: double.infinity,
                  height: 139*fem,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        // autogroupq1vi4U8 (NCtGXbLWASVjbpqx3uq1Vi)
                        width: 390*fem,
                        height: double.infinity,
                        child: Stack(
                          children: [
                            Positioned(
                              // img57211recoveredgrey1Q2C (33:347)
                              left: 38*fem,
                              top: 82*fem,
                              child: Align(
                                child: SizedBox(
                                  width: 27*fem,
                                  height: 20*fem,
                                  child: Image.asset(
                                    'assets/images/img5721-1-recovered-grey-1-EUG.png',
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // overviewWb2 (33:348)
                              left: 29*fem,
                              top: 107*fem,
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
                              // staffmanagement1ng (33:349)
                              left: 225.5*fem,
                              top: 108*fem,
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
                              // settingsut4 (33:350)
                              left: 331*fem,
                              top: 110*fem,
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
                              // staffgray12St (33:351)
                              left: 237*fem,
                              top: 79*fem,
                              child: Align(
                                child: SizedBox(
                                  width: 30*fem,
                                  height: 23*fem,
                                  child: Image.asset(
                                    'assets/images/staff-gray-1-izk.png',
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // settingsgrey1MVA (33:352)
                              left: 331*fem,
                              top: 79*fem,
                              child: Align(
                                child: SizedBox(
                                  width: 32*fem,
                                  height: 26*fem,
                                  child: Image.asset(
                                    'assets/images/settings-grey-1-5HJ.png',
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // rectangle175RA (33:353)
                              left: 103*fem,
                              top: 43*fem,
                              child: Align(
                                child: SizedBox(
                                  width: 83*fem,
                                  height: 96*fem,
                                  child: Image.asset(
                                    'assets/images/rectangle-17-Ynt.png',
                                    width: 83*fem,
                                    height: 96*fem,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // inventoryclicked1Ckg (33:354)
                              left: 132*fem,
                              top: 81*fem,
                              child: Align(
                                child: SizedBox(
                                  width: 26*fem,
                                  height: 25*fem,
                                  child: Image.asset(
                                    'assets/images/inventory-clicked-1-rqE.png',
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // group20vRn (152:3478)
                              left: 15*fem,
                              top: 0*fem,
                              child: Container(
                                width: 349*fem,
                                height: 35*fem,
                                decoration: BoxDecoration (
                                  borderRadius: BorderRadius.circular(8*fem),
                                  gradient: LinearGradient (
                                    begin: Alignment(-1, -0.237),
                                    end: Alignment(0.693, -0.373),
                                    colors: <Color>[Color(0x51d4cdff), Color(0x1662c3ff)],
                                    stops: <double>[0, 1],
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // vector2zwS (33:358)
                              left: 0*fem,
                              top: 13*fem,
                              child: Align(
                                child: SizedBox(
                                  width: 390*fem,
                                  height: 126*fem,
                                  child: Image.asset(
                                    'assets/images/vector-2-h12.png',
                                    width: 390*fem,
                                    height: 126*fem,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // inventory8Gx (33:360)
                              left: 120*fem,
                              top: 106*fem,
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
                              // milk2dE (152:3476)
                              left: 42*fem,
                              top: 11*fem,
                              child: Align(
                                child: SizedBox(
                                  width: 28*fem,
                                  height: 20*fem,
                                  child: Text(
                                    'Milk',
                                    style: SafeGoogleFont (
                                      'Poppins',
                                      fontSize: 13*ffem,
                                      fontWeight: FontWeight.w700,
                                      height: 1.5*ffem/fem,
                                      color: Color(0xff57336a),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // rectangle439C4 (152:3477)
                              left: 22*fem,
                              top: 7*fem,
                              child: Align(
                                child: SizedBox(
                                  width: 8*fem,
                                  height: 30*fem,
                                  child: Container(
                                    decoration: BoxDecoration (
                                      borderRadius: BorderRadius.circular(6*fem),
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
                        // vector3rcG (33:362)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 372.5*fem, 0.5*fem),
                        width: 102.5*fem,
                        height: 119.5*fem,
                        child: Image.asset(
                          'assets/images/vector-3-FPe.png',
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