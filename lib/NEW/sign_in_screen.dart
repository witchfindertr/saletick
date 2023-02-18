import 'package:flutter/material.dart';
import 'package:saletick/utilities/utils.dart';


class SignInScreen extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // frame20b6G (3:156)
        width: double.infinity,
        height: 839*fem,
        decoration: BoxDecoration (
          color: Color(0xffffffff),
        ),
        child: Stack(
          children: [
            Positioned(
              // asset13x1WU8 (3:157)
              left: 67*fem,
              top: 143*fem,
              child: Align(
                child: SizedBox(
                  width: 243*fem,
                  height: 186*fem,
                  child: Image.asset(
                    'assets/images/asset-13x-1.png',
                  ),
                ),
              ),
            ),
            Positioned(
              // rectangle31fn (3:161)
              left: 52*fem,
              top: 433*fem,
              child: Align(
                child: SizedBox(
                  width: 292*fem,
                  height: 48*fem,
                  child: Container(
                    decoration: BoxDecoration (
                      borderRadius: BorderRadius.circular(8*fem),
                      color: Color(0x428f7aff),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // rectangle48Ec (3:162)
              left: 52*fem,
              top: 522*fem,
              child: Align(
                child: SizedBox(
                  width: 292*fem,
                  height: 48*fem,
                  child: Container(
                    decoration: BoxDecoration (
                      borderRadius: BorderRadius.circular(8*fem),
                      color: Color(0x428f7aff),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // emailT1z (3:163)
              left: 62*fem,
              top: 418*fem,
              child: Align(
                child: SizedBox(
                  width: 37*fem,
                  height: 14*fem,
                  child: Text(
                    'E-mail',
                    style: SafeGoogleFont (
                      'Montserrat',
                      fontSize: 11*ffem,
                      fontWeight: FontWeight.w700,
                      height: 1.2175*ffem/fem,
                      color: Color(0xff8f7aff),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // autogroupdchvvgG (NCrxxM6RZiecscTvzvDchv)
              left: 118*fem,
              top: 369*fem,
              child: Container(
                width: 149*fem,
                height: 22*fem,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // employerSPi (145:763)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 21*fem, 2*fem),
                      child: Text(
                        'Employer',
                        style: SafeGoogleFont (
                          'Poppins',
                          fontSize: 13*ffem,
                          fontWeight: FontWeight.w700,
                          height: 1.5*ffem/fem,
                          color: Color(0xff8f7aff),
                        ),
                      ),
                    ),
                    Container(
                      // employeexN4 (145:764)
                      margin: EdgeInsets.fromLTRB(0*fem, 2*fem, 0*fem, 0*fem),
                      child: Text(
                        'Employee',
                        style: SafeGoogleFont (
                          'Poppins',
                          fontSize: 13*ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.5*ffem/fem,
                          color: Color(0xff8f7aff),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // passwordULQ (3:164)
              left: 62*fem,
              top: 506*fem,
              child: Align(
                child: SizedBox(
                  width: 56*fem,
                  height: 14*fem,
                  child: Text(
                    'Password',
                    style: SafeGoogleFont (
                      'Montserrat',
                      fontSize: 11*ffem,
                      fontWeight: FontWeight.w700,
                      height: 1.2175*ffem/fem,
                      color: Color(0xff8f7aff),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // forgotpasswordNRn (3:165)
              left: 213*fem,
              top: 579*fem,
              child: Align(
                child: SizedBox(
                  width: 133*fem,
                  height: 18*fem,
                  child: Text(
                    'Forgot Password?',
                    style: SafeGoogleFont (
                      'Montserrat',
                      fontSize: 14*ffem,
                      fontWeight: FontWeight.w700,
                      height: 1.2175*ffem/fem,
                      color: Color(0xff8f7aff),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // createaccountHHr (13:4)
              left: 134*fem,
              top: 738*fem,
              child: Align(
                child: SizedBox(
                  width: 114*fem,
                  height: 18*fem,
                  child: Text(
                    'Create Account',
                    style: SafeGoogleFont (
                      'Montserrat',
                      fontSize: 14*ffem,
                      fontWeight: FontWeight.w700,
                      height: 1.2175*ffem/fem,
                      color: Color(0xff8f7aff),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // autogroupvy5nzTA (NCry5qsw7224GmYJ5tVY5n)
              left: 51*fem,
              top: 622*fem,
              child: Container(
                width: 292*fem,
                height: 61*fem,
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
                child: Center(
                  child: Text(
                    'Get Started',
                    style: SafeGoogleFont (
                      'Montserrat',
                      fontSize: 16*ffem,
                      fontWeight: FontWeight.w700,
                      height: 1.2175*ffem/fem,
                      color: Color(0xffffffff),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // rectangle37zrU (145:765)
              left: 105*fem,
              top: 391*fem,
              child: Align(
                child: SizedBox(
                  width: 77*fem,
                  height: 3*fem,
                  child: Container(
                    decoration: BoxDecoration (
                      borderRadius: BorderRadius.circular(3*fem),
                      color: Color(0xff9d8bff),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
          );
  }
}