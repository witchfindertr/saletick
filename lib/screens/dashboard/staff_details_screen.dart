import 'package:flutter/material.dart';
import 'package:saletick/custom_widgets/header/header_one_widget.dart';
import 'package:saletick/app_constants/app_dimensions.dart';
import 'package:saletick/utilities/utils.dart';


class StaffDetailsScreen extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            // HEADER HERE
           const SaletickHeaderOne(headerOneTitleText: 'Chinaza',),
            // Container Housing: Staff Profile Image & Settings Icon
            Container(
              padding: EdgeInsets.fromLTRB(38*fem, 14.73*fem, 30.4*fem, 14*fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(95*fem, 0*fem, 0*fem, 25*fem),
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // STAFF IMAGE here
                        Container(
                          margin: EdgeInsets.fromLTRB(0*fem, 20.88*fem, 67.21*fem, 0*fem),
                          width: 125*fem,
                          height: 125*fem,
                          decoration: BoxDecoration (
                            borderRadius: BorderRadius.circular(62.5*fem),
                            border: Border.all(color: Color(0xff430463)),
                            image: DecorationImage (
                              fit: BoxFit.cover,
                              image: AssetImage (
                                'assets/images/ellipse-14-bg.png',
                              ),
                            ),
                          ),
                        ),
                        // SETTINGS icon HERE
                        InkWell(
                          onTap: (() {
                            print('Seetings tapped');
                          }),
                          child: Container(
                            width: 34.39*fem,
                            height: 34.57*fem,
                            child: Image.asset(
                              'assets/images/settings-svgrepo-com-1.png',
                              width: 34.39*fem,
                              height: 34.57*fem,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Name Section
                  Container(
                    margin: EdgeInsets.fromLTRB(88*fem, 0*fem, 10*fem, 19*fem),
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 33*fem, 0*fem),
                          child: Text(
                            'Name',
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
                          width: Dimensions.size100*1.3,
                          child: Text(
                            'Chiomaujfdjd Amandaeueiidj',
                            overflow: TextOverflow.fade,
                            style: SafeGoogleFont (
                              'Poppins',
                              fontSize: 12*ffem,
                              fontWeight: FontWeight.w500,
                              height: 1.5*ffem/fem,
                              color: Color(0xff430463),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Phone Number Section
                  Container(
                    margin: EdgeInsets.fromLTRB(34*fem, 0*fem, 40.6*fem, 19*fem),
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 33*fem, 0*fem),
                          child: Text(
                            'Phone Number',
                            style: SafeGoogleFont (
                              'Poppins',
                              fontSize: 12*ffem,
                              fontWeight: FontWeight.w700,
                              height: 1.5*ffem/fem,
                              color: Color(0xff430463),
                            ),
                          ),
                        ),
                        Text(
                          // PNg (128:739)
                          '+234567891342',
                          style: SafeGoogleFont (
                            'Poppins',
                            fontSize: 12*ffem,
                            fontWeight: FontWeight.w500,
                            height: 1.5*ffem/fem,
                            color: Color(0xff430463),
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Email Section
                  Container(
                    margin: EdgeInsets.fromLTRB(88*fem, 0*fem, 39.6*fem, 19*fem),
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 36*fem, 0*fem),
                          child: Text(
                            'Email',
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
                          width: Dimensions.size100*1.2,
                          child: Text(                              
                            'chioma@gmsil.com',
                            overflow: TextOverflow.ellipsis,
                            style: SafeGoogleFont (
                              'Poppins',
                              fontSize: 12*ffem,
                              fontWeight: FontWeight.w500,
                              height: 1.5*ffem/fem,
                              color: Color(0xff430463),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Position
                  Container(
                    margin: EdgeInsets.fromLTRB(76*fem, 0*fem, 103.6*fem, 17*fem),
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 33*fem, 0*fem),
                          child: Text(
                            'Position',
                            style: SafeGoogleFont (
                              'Poppins',
                              fontSize: 12*ffem,
                              fontWeight: FontWeight.w700,
                              height: 1.5*ffem/fem,
                              color: Color(0xff430463),
                            ),
                          ),
                        ),
                        Text(
                          'Sales Rep',
                          style: SafeGoogleFont (
                            'Poppins',
                            fontSize: 12*ffem,
                            fontWeight: FontWeight.w500,
                            height: 1.5*ffem/fem,
                            color: Color(0xff430463),
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Qualification Section
                  Container(
                    margin: EdgeInsets.fromLTRB(45*fem, 0*fem, 55.6*fem, 19*fem),
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 33*fem, 2*fem),
                          child: Text(
                            'Qualification',
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
                          margin: EdgeInsets.fromLTRB(0*fem, 2*fem, 0*fem, 0*fem),
                          child: Text(
                            'Bachelors Degree',
                            style: SafeGoogleFont (
                              'Poppins',
                              fontSize: 12*ffem,
                              fontWeight: FontWeight.w500,
                              height: 1.5*ffem/fem,
                              color: Color(0xff430463),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Salary Section
                  Container(
                    margin: EdgeInsets.fromLTRB(83*fem, 0*fem, 121.6*fem, 19*fem),
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 36*fem, 0*fem),
                          child: Text(
                            'Salary',
                            style: SafeGoogleFont (
                              'Poppins',
                              fontSize: 12*ffem,
                              fontWeight: FontWeight.w700,
                              height: 1.5*ffem/fem,
                              color: Color(0xff430463),
                            ),
                          ),
                        ),
                        Text(
                          '20,000',
                          style: SafeGoogleFont (
                            'Poppins',
                            fontSize: 12*ffem,
                            fontWeight: FontWeight.w500,
                            height: 1.5*ffem/fem,
                            color: Color(0xff430463),
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Total Sales 
                  Container(
                    margin: EdgeInsets.fromLTRB(57*fem, 0*fem, 113.6*fem, 24*fem),
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 35*fem, 0*fem),
                          child: Text(
                            'Total Sales',
                            style: SafeGoogleFont (
                              'Poppins',
                              fontSize: 12*ffem,
                              fontWeight: FontWeight.w700,
                              height: 1.5*ffem/fem,
                              color: Color(0xff430463),
                            ),
                          ),
                        ),
                        Text(
                          '345,000',
                          style: SafeGoogleFont (
                            'Poppins',
                            fontSize: 12*ffem,
                            fontWeight: FontWeight.w500,
                            height: 1.5*ffem/fem,
                            color: Color(0xff430463),
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Date Employed
                  Container(
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 23.6*fem, 15*fem),
                    child: Text(
                      'Employed 31st February, 2023',
                      style: SafeGoogleFont (
                        'Poppins',
                        fontSize: 12*ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.5*ffem/fem,
                        color: Color(0xff430463),
                      ),
                    ),
                  ),
                  // BUTTON - See Sales
                  GestureDetector(
                    onTap: (() {
                      print("Sales Loading . . .");
                    }),
                    child: Container(
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 24.6*fem, 0*fem),
                      width: 297*fem,
                      height: 52*fem,
                      decoration: BoxDecoration (
                        borderRadius: BorderRadius.circular(5*fem),
                        gradient: const LinearGradient (
                          begin: Alignment(-1, -1.075),
                          end: Alignment(0.931, 0.613),
                          colors: <Color>[Color(0xbcc373eb), Color(0xbc0081d1), Color(0xbc640893)],
                          stops: <double>[0, 0.722, 1],
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
                          'See Staff Sales',
                          style: SafeGoogleFont (
                            'Poppins',
                            fontSize: 15*ffem,
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
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
    );
  }
}