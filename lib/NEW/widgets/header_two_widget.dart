import 'package:flutter/material.dart';
import 'package:saletick/app_constants/app_dimensions.dart';
import 'package:saletick/app_constants/dimensions2.dart';
import 'package:saletick/utilities/utils.dart';

class SaletickHeaderTwo extends StatelessWidget {
  const SaletickHeaderTwo({super.key});

  @override
  Widget build(BuildContext context) {
    // The container image
    return Container(
      margin: EdgeInsets.fromLTRB(0*Dimensions2.fem, 0*Dimensions2.fem, 0*Dimensions2.fem, 12.61*Dimensions2.fem),
      padding: EdgeInsets.fromLTRB(24*Dimensions2.fem, 27*Dimensions2.fem, 36*Dimensions2.fem, 38.39*Dimensions2.fem),
      width: double.infinity,
      height: 396.39*Dimensions2.fem,
      decoration: const BoxDecoration (
        image: DecorationImage (
          fit: BoxFit.cover,
          image: AssetImage (
            'assets/images/rectangle-11-KoN.png',
          ),
        ),
      ),
      // The Child Column that houses every widget in this header image
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(0*Dimensions2.fem, 0*Dimensions2.fem, 0*Dimensions2.fem, 38*Dimensions2.fem),
            width: double.infinity,
            height: 57*Dimensions2.fem,
            // Row Containing Profile Pic, Name, and Hamburger Icon
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(0*Dimensions2.fem, 0*Dimensions2.fem, 20*Dimensions2.fem, 0*Dimensions2.fem),
                  width: 60*Dimensions2.fem,
                  height: double.infinity,
                  child: Stack(
                    children: [
                      // Profile Image
                      Positioned(
                        left: 0*Dimensions2.fem,
                        top: 0*Dimensions2.fem,
                        child: Align(
                          child: SizedBox(
                            width: 57*Dimensions2.fem,
                            height: 57*Dimensions2.fem,
                            child: Container(
                              decoration: BoxDecoration (
                                borderRadius: BorderRadius.circular(28.5*Dimensions2.fem),
                                image: const DecorationImage (
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
                      // The greenish online indicator
                      Positioned(
                        left: 40*Dimensions2.fem,
                        top: 37*Dimensions2.fem,
                        child: Align(
                          child: SizedBox(
                            width: 20*Dimensions2.fem,
                            height: 20*Dimensions2.fem,
                            child: Container(
                              decoration: BoxDecoration (
                                borderRadius: BorderRadius.circular(10*Dimensions2.fem),
                                border: Border.all(color: Color(0xffffffff)),
                                color: Color(0xff00a660),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0x19000000),
                                    offset: Offset(0*Dimensions2.fem, 2*Dimensions2.fem),
                                    blurRadius: 2.5*Dimensions2.fem,
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
                // Welcome TEXT
                Container(
                  margin: EdgeInsets.fromLTRB(0*Dimensions2.fem, 0*Dimensions2.fem, 38*Dimensions2.fem, 2*Dimensions2.fem),
                  width: Dimensions.size100*1.8,
                  child: RichText(
                    overflow: TextOverflow.fade,
                    text: TextSpan(
                      style: SafeGoogleFont (
                        'Montserrat',
                        fontSize: 12*Dimensions2.ffem,
                        fontWeight: FontWeight.w700,
                        height: 1.2175*Dimensions2.ffem/Dimensions2.fem,
                        color: Color(0xffffffff),
                      ),
                      children: [
                        const TextSpan(
                          text: 'Welcome,',
                        ),
                        TextSpan(
                          text: ' Chinaza!',
                          style: SafeGoogleFont (
                            'Montserrat',
                            fontSize: 20*Dimensions2.ffem,
                            fontWeight: FontWeight.w700,
                            height: 1.2175*Dimensions2.ffem/Dimensions2.fem,
                            color: Color(0xffffffff),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                // The Menu (Hambugger icon)
                Container(
                  margin: EdgeInsets.fromLTRB(0*Dimensions2.fem, 8*Dimensions2.fem, 0*Dimensions2.fem, 18*Dimensions2.fem),
                  width: 29*Dimensions2.fem,
                  height: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(0*Dimensions2.fem, 0*Dimensions2.fem, 0*Dimensions2.fem, 10*Dimensions2.fem),
                        width: double.infinity,
                        height: 4*Dimensions2.fem,
                        decoration: const BoxDecoration (
                          color: Color(0xff550080),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0*Dimensions2.fem, 0*Dimensions2.fem, 0*Dimensions2.fem, 9*Dimensions2.fem),
                        width: double.infinity,
                        height: 4*Dimensions2.fem,
                        decoration: const BoxDecoration (
                          color: Color(0xff550080),
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        height: 4*Dimensions2.fem,
                        decoration: const BoxDecoration (
                          color: Color(0xff550080),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          // Income Summary
          Container(
            margin: EdgeInsets.fromLTRB(2*Dimensions2.fem, 0*Dimensions2.fem, 0*Dimensions2.fem, 0*Dimensions2.fem),
            child: Text(
              'Income Summary',
              style: SafeGoogleFont (
                'Montserrat',
                fontSize: 12*Dimensions2.ffem,
                fontWeight: FontWeight.w700,
                height: 1.2175*Dimensions2.ffem/Dimensions2.fem,
                color: Color(0xffffffff),
              ),
            ),
          ),
          // Total AMOUNT
          Container(
            margin: EdgeInsets.fromLTRB(84*Dimensions2.fem, 0*Dimensions2.fem, 78*Dimensions2.fem, 41*Dimensions2.fem),
            width: double.infinity,
            height: 68*Dimensions2.fem,
            child: Stack(
              children: [
                Positioned(
                  left: 0*Dimensions2.fem,
                  top: 0*Dimensions2.fem,
                  child: Align(
                    child: SizedBox(
                      width: 166*Dimensions2.fem,
                      height: 54*Dimensions2.fem,
                      child: Text(
                        '345,070',
                        style: SafeGoogleFont (
                          'Podkova',
                          fontSize: 48*Dimensions2.fem,
                          fontWeight: FontWeight.w600,
                          height: 1.11*Dimensions2.fem/Dimensions2.fem,
                          color: Color(0xffffffff),
                        ),
                      ),
                    ),
                  ),
                ),
                // Total amount Gotten TODAY
                Positioned(
                  left: 38*Dimensions2.fem,
                  top: 53*Dimensions2.fem,
                  child: Align(
                    child: SizedBox(
                      width: 150*Dimensions2.fem,
                      height: 15*Dimensions2.fem,
                      child: Text(
                        '+31,993 Today',
                        style: SafeGoogleFont (
                          'Podkova',
                          fontSize: 13*Dimensions2.ffem,
                          fontWeight: FontWeight.w600,
                          height: 1.11*Dimensions2.ffem/Dimensions2.fem,
                          color: Color(0xb5e4fff5),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          // CHART HERE
        ],
      ),
    );
  }
}