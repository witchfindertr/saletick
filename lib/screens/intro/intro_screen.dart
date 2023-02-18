import 'package:flutter/material.dart';
import 'package:saletick/app_constants/app_colors.dart';
import 'package:saletick/utilities/utils.dart';



class IntroScreen extends StatelessWidget {

  const IntroScreen({super.key});

  static const String routeName = '/get-started';

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
            padding: EdgeInsets.fromLTRB(27*fem, 187*fem, 27*fem, 114*fem),
            width: double.infinity,
            decoration: BoxDecoration (
              color: Color(0xffffffff),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // image at Get started screen
                Container(
                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 69*fem),
                  width: 336*fem,
                  height: 257*fem,
                  child: Image.asset(
                    'assets/images/asset-13x-1-2f2.png',
                  ),
                ),
                Container(
                  // getuptodatewithyourinventory
                  margin: EdgeInsets.fromLTRB(4*fem, 0*fem, 0*fem, 33*fem),
                  constraints: BoxConstraints (
                    maxWidth: 257*fem,
                  ),
                  child: Text(
                    'Get Up To date with your Inventory',
                    textAlign: TextAlign.center,
                    style: SafeGoogleFont (
                      'Montserrat',
                      fontSize: 32*ffem,
                      fontWeight: FontWeight.w700,
                      height: 1.2175*ffem/fem,
                      color: Color(0xff8f7aff),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    print("I am Started");
                  },
                  child: Container(
                    margin: EdgeInsets.fromLTRB(50*fem, 0*fem, 50*fem, 0*fem),
                    width: double.infinity,
                    height: 62*fem,
                    decoration: BoxDecoration (
                      borderRadius: BorderRadius.circular(8*fem),
                      gradient: const LinearGradient (
                        begin: Alignment(-1, -1.075),
                        end: Alignment(0.931, 0.613),
                        colors: <Color>[AppColors.mainColorLight, Color(0xbc0081d1), Color(0xbc640893)],
                        stops: <double>[0, 0.722, 1],
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x19000000),
                          offset: Offset(0*fem, 2*fem),
                          blurRadius: 6.5*fem,
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}