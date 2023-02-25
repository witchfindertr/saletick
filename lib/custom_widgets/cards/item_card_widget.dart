import 'package:flutter/material.dart';
import 'package:saletick/app_constants/dimensions2.dart';
import 'package:saletick/utilities/utils.dart';

class ItemCardWidget extends StatelessWidget {

  final String productName;
  final String dateSold;
  final String nameOfWhoSoldIt;
  final int unitsRemaining;
  
  const ItemCardWidget({super.key, required this.productName, required this.dateSold, required this.nameOfWhoSoldIt, required this.unitsRemaining});

  @override
  Widget build(BuildContext context) {
     
    
    return  Container(            
      padding: EdgeInsets.fromLTRB(11*Dimensions2.fem, 40*Dimensions2.fem, 11*Dimensions2.fem, 3*Dimensions2.fem),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(0*Dimensions2.fem, 0*Dimensions2.fem, 19*Dimensions2.fem, 8*Dimensions2.fem),
            width: 349*Dimensions2.fem,
            height: 59*Dimensions2.fem,
            decoration: BoxDecoration (
              color: Colors.red,
              borderRadius: BorderRadius.circular(8*Dimensions2.fem),
              gradient: const LinearGradient (
                begin: Alignment(-1, -0.237),
                end: Alignment(0.693, -0.373),
                colors: <Color>[Color(0x51d4cdff), Color(0x1662c3ff)],
                stops: <double>[0, 1],
              ),
            ),
            child: Stack(
              children: [
                // Name of the product item
                Positioned(
                  left: 27*Dimensions2.fem,
                  top: 10*Dimensions2.fem,
                  child: Align(
                    child: SizedBox(
                      width: 103*Dimensions2.fem,
                      height: 20*Dimensions2.fem,
                      child: Text(
                        productName, // 'Chocolate Bars',
                        style: SafeGoogleFont (
                          'Poppins',
                          fontSize: 13*Dimensions2.ffem,
                          fontWeight: FontWeight.w700,
                          height: 1.5*Dimensions2.ffem/Dimensions2.fem,
                          color: Color(0xff57336a),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 27*Dimensions2.fem,
                  top: 11*Dimensions2.fem,
                  child: Container(
                    width: 310*Dimensions2.fem,
                    height: 36*Dimensions2.fem,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(0*Dimensions2.fem, 0*Dimensions2.fem, 5*Dimensions2.fem, 1.08*Dimensions2.fem),
                          width: 13*Dimensions2.fem,
                          height: 12.1*Dimensions2.fem,
                          child: Image.asset(
                            'assets/images/event-date-and-time-symbol-svgrepo-com-1-ntg.png',
                            width: 13*Dimensions2.fem,
                            height: 12.1*Dimensions2.fem,
                          ),
                        ),
                        // Date Sold
                        Container(
                          margin: EdgeInsets.fromLTRB(0*Dimensions2.fem, 0*Dimensions2.fem, 16.63*Dimensions2.fem, 0*Dimensions2.fem),
                          child: Text(
                            dateSold, // '3 March 2022',
                            style: SafeGoogleFont (
                              'Poppins',
                              fontSize: 9*Dimensions2.ffem,
                              fontWeight: FontWeight.w600,
                              height: 1.5*Dimensions2.ffem/Dimensions2.fem,
                              color: Color(0xff927c9e),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0*Dimensions2.fem, 0*Dimensions2.fem, 6.63*Dimensions2.fem, 1.81*Dimensions2.fem),
                          width: 9.75*Dimensions2.fem,
                          height: 11.38*Dimensions2.fem,
                          child: Image.asset(
                            'assets/images/avatar-default-svgrepo-com-1-oqA.png',
                            width: 9.75*Dimensions2.fem,
                            height: 11.38*Dimensions2.fem,
                          ),
                        ),
                        // Name of who sold it
                        Container(
                          margin: EdgeInsets.fromLTRB(0*Dimensions2.fem, 0*Dimensions2.fem, 22*Dimensions2.fem, 1*Dimensions2.fem),
                          child: Text(
                            nameOfWhoSoldIt, // 'Chioma Joy',
                            style: SafeGoogleFont (
                              'Poppins',
                              fontSize: 9*Dimensions2.ffem,
                              fontWeight: FontWeight.w600,
                              height: 1.5*Dimensions2.ffem/Dimensions2.fem,
                              color: Color(0xff927c9e),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0*Dimensions2.fem, 0*Dimensions2.fem, 8*Dimensions2.fem, 2.13*Dimensions2.fem),
                          width: 13*Dimensions2.fem,
                          height: 10.74*Dimensions2.fem,
                          child: Image.asset(
                            'assets/images/boxes-svgrepo-com-1-Tuz.png',
                            width: 13*Dimensions2.fem,
                            height: 10.74*Dimensions2.fem,
                          ),
                        ),
                        // Units Left/Remaining
                        Container(
                          margin: EdgeInsets.fromLTRB(0*Dimensions2.fem, 0*Dimensions2.fem, 27*Dimensions2.fem, 0*Dimensions2.fem),
                          child: Text(
                           "${unitsRemaining.toString()} Items Left",
                            style: SafeGoogleFont (
                              'Poppins',
                              fontSize: 9*Dimensions2.ffem,
                              fontWeight: FontWeight.w600,
                              height: 1.5*Dimensions2.ffem/Dimensions2.fem,
                              color: Color(0xff927c9e),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0*Dimensions2.fem, 2*Dimensions2.fem, 0*Dimensions2.fem, 13*Dimensions2.fem),
                          width: 5*Dimensions2.fem,
                          height: 23*Dimensions2.fem,
                          child: Image.asset(
                            'assets/images/auto-group-qmhj.png',
                            width: 5*Dimensions2.fem,
                            height: 23*Dimensions2.fem,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          
        ],
      ),
    );
  }

}