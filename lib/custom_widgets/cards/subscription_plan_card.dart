import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saletick/app_constants/app_dimensions.dart';


class SubscriptionPlanCard extends StatelessWidget {

  final String planName;
  final String price;
  final String description;
  final bool isTrial;
  
  SubscriptionPlanCard({super.key, required this.planName, required this.price, required this.description, this.isTrial=false});

  TextStyle kResultTextStyle = TextStyle(
    color: Color(0xFF24D876),
    fontSize: Dimensions.size25,
    fontWeight: FontWeight.bold,
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.all(Dimensions.size15),
          child: Container(
            padding: EdgeInsets.all(Dimensions.size12),
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [Colors.purple, Colors.pink]
              ),          
              borderRadius: BorderRadius.circular(Dimensions.size10),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: Dimensions.size40),
                // Plan Name
                Text(
                  planName.toUpperCase(),
                  style: kResultTextStyle,                  
                ),
                // Price
                Text(
                  price,
                  style: GoogleFonts.montserrat(
                    textStyle: TextStyle(
                        color: Colors.white,
                        fontSize: Dimensions.size60,
                        fontWeight: FontWeight.w800),
                  ),
                ),
                // Pay Year Text
                Padding(
                  padding: const EdgeInsets.only(top: 18.0, left: 28, right: 28),
                  child: Text(
                    isTrial? 'Three Months' : 'Yearly',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.lato(
                      textStyle: TextStyle(
                        color: Colors.white,
                        fontSize: Dimensions.size20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                // Descriptions
                Padding(
                  padding: const EdgeInsets.only(top: 18.0, left: 28, right: 28),
                  child: Text(
                    description,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.lato(
                      textStyle: TextStyle(
                        color: Colors.white,
                        fontSize: Dimensions.size20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: Dimensions.size40),
              ],
            ),
          ),
        ),        
      ],
    );
  }
}