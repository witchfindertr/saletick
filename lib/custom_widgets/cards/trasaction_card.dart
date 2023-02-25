import 'package:flutter/material.dart';
import 'package:saletick/app_constants/app_dimensions.dart';
import 'package:saletick/app_constants/dimensions2.dart';
import 'package:saletick/utilities/utils.dart';

class TransactionCard extends StatelessWidget {
  final String nameOfProduct;
  final String nameOfSalesRep;
  final String time;
  final String date;
  final String unitsSold;
  final String amount;
  final bool isExpense;
  
  const TransactionCard({super.key, this.isExpense=false, required this.time, required this.date, required this.unitsSold, required this.amount, required this.nameOfProduct, required this.nameOfSalesRep});

  @override
  Widget build(BuildContext context) {
    
    return Container(
      margin: EdgeInsets.fromLTRB(0*Dimensions2.fem, 0*Dimensions2.fem, 6*Dimensions2.fem, 8*Dimensions2.fem),
      padding: EdgeInsets.fromLTRB(18*Dimensions2.fem, 8*Dimensions2.fem, 13*Dimensions2.fem, 14.81*Dimensions2.fem),
      height: 59*Dimensions2.fem,
      decoration: BoxDecoration (
        borderRadius: BorderRadius.circular(8*Dimensions2.fem),
        gradient: const LinearGradient (
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
            margin: EdgeInsets.fromLTRB(0*Dimensions2.fem, 0*Dimensions2.fem, 6.63*Dimensions2.fem, 0*Dimensions2.fem),
            height: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // NAME
                Container(
                  margin: EdgeInsets.fromLTRB(0*Dimensions2.fem, 0*Dimensions2.fem, 0*Dimensions2.fem, 2.81*Dimensions2.fem),
                  child: Text(
                    nameOfProduct, // 'Chocolate Carton',
                    style: SafeGoogleFont (
                      'Poppins',
                      fontSize: 13*Dimensions2.ffem,
                      fontWeight: FontWeight.w700,
                      height: 1.5*Dimensions2.ffem/Dimensions2.fem,
                      color: Color(0xff57336a),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(1*Dimensions2.fem, 0*Dimensions2.fem, 0*Dimensions2.fem, 0*Dimensions2.fem),
                  height: 13.38*Dimensions2.fem,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(0*Dimensions2.fem, 0*Dimensions2.fem, 5*Dimensions2.fem, 1.27*Dimensions2.fem),
                        width: 13*Dimensions2.fem,
                        height: 12.1*Dimensions2.fem,
                        child: Image.asset(
                          'assets/images/event-date-and-time-symbol-svgrepo-com-1.png',
                          width: 13*Dimensions2.fem,
                          height: 12.1*Dimensions2.fem,
                        ),
                      ),
                      // Time
                      Container(
                        margin: EdgeInsets.fromLTRB(0*Dimensions2.fem, 2.19*Dimensions2.fem, 2*Dimensions2.fem, 2.19*Dimensions2.fem),
                        width: 81*Dimensions2.fem,
                        height: double.infinity,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 0*Dimensions2.fem,
                              top: 0*Dimensions2.fem,
                              child: Align(
                                child: SizedBox(
                                  width: 42*Dimensions2.fem,
                                  height: 9*Dimensions2.fem,
                                  child: Text(
                                    '$time : ', // '12:05:02pm :   ',
                                    style: SafeGoogleFont (
                                      'Poppins',
                                      fontSize: 6*Dimensions2.ffem,
                                      fontWeight: FontWeight.w600,
                                      height: 1.5*Dimensions2.ffem/Dimensions2.fem,
                                      color: Color(0xff927c9e),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            // Date
                            Positioned(
                              left: 30*Dimensions2.fem,
                              top: 0*Dimensions2.fem,
                              child: Align(
                                child: SizedBox(
                                  width: 41*Dimensions2.fem,
                                  height: 9*Dimensions2.fem,
                                  child: Text(
                                    date, //'3 March 2022',
                                    style: SafeGoogleFont (
                                      'Poppins',
                                      fontSize: 6*Dimensions2.ffem,
                                      fontWeight: FontWeight.w600,
                                      height: 1.5*Dimensions2.ffem/Dimensions2.fem,
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
                        margin: EdgeInsets.fromLTRB(0*Dimensions2.fem, 2*Dimensions2.fem, 0*Dimensions2.fem, 0*Dimensions2.fem),
                        width: 9.75*Dimensions2.fem,
                        height: 11.38*Dimensions2.fem,
                        child: Image.asset(
                          'assets/images/avatar-default-svgrepo-com-1-rbr-ED6.png',
                          width: 9.75*Dimensions2.fem,
                          height: 11.38*Dimensions2.fem,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          // Name of Sales Rep
          Container(
            margin: EdgeInsets.fromLTRB(0*Dimensions2.fem, 24.81*Dimensions2.fem, 10*Dimensions2.fem, 0*Dimensions2.fem),
            width: Dimensions.size60,
            child: Text(
              nameOfSalesRep, //'Chioma Joy',
              overflow: TextOverflow.ellipsis,
              style: SafeGoogleFont (
                'Poppins',
                fontSize: 6*Dimensions2.ffem,
                fontWeight: FontWeight.w600,
                height: 1.5*Dimensions2.ffem/Dimensions2.fem,
                color: Color(0xff927c9e),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0*Dimensions2.fem, 24.81*Dimensions2.fem, 2*Dimensions2.fem, 0*Dimensions2.fem),
            width: 13*Dimensions2.fem,
            height: 10.74*Dimensions2.fem,
            child: Image.asset(
              'assets/images/boxes-svgrepo-com-1-XKn.png',
              width: 13*Dimensions2.fem,
              height: 10.74*Dimensions2.fem,
            ),
          ),
          // Unit Sold
          Container(
            margin: EdgeInsets.fromLTRB(0*Dimensions2.fem, 24.81*Dimensions2.fem, 21*Dimensions2.fem, 0*Dimensions2.fem),
            child: Text(
              unitsSold, // '5 Cartons',
              style: SafeGoogleFont (
                'Poppins',
                fontSize: 6*Dimensions2.ffem,
                fontWeight: FontWeight.w600,
                height: 1.5*Dimensions2.ffem/Dimensions2.fem,
                color: Color(0xff927c9e),
              ),
            ),
          ),
          // Amount or Price
          Container(
            margin: EdgeInsets.fromLTRB(0*Dimensions2.fem, 8.81*Dimensions2.fem, 0*Dimensions2.fem, 0*Dimensions2.fem),
            width: Dimensions.size100,
            child: Text(
              isExpense? '-$amount' : '+$amount',  //'+5,070',
              overflow: TextOverflow.ellipsis,
              style: SafeGoogleFont (
                'Montserrat',
                fontSize: 20*Dimensions2.ffem,
                fontWeight: FontWeight.w600,
                height: 1.2175*Dimensions2.ffem/Dimensions2.fem,
                color: isExpense? const Color(0xb5c70303) : Color(0xb503c781),
              ),
            ),
          ),
        ],
      ),
    );
  }
}