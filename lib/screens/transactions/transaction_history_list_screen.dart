import 'package:flutter/material.dart';
import 'package:saletick/custom_widgets/header/header_one_widget.dart';
import 'package:saletick/custom_widgets/cards/trasaction_card.dart';
import 'package:saletick/app_constants/app_colors.dart';
import 'package:saletick/app_constants/app_dimensions.dart';
import 'package:saletick/app_constants/dimensions2.dart';
import 'package:saletick/utilities/utils.dart';


class TransactionHistoryListScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: AppColors.saletickScaffoldColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
           // Header HERE
           const SaletickHeaderOne(headerOneTitleText: 'Transactions'),
            Container(
              padding: EdgeInsets.fromLTRB(20*Dimensions2.fem, 44.61*Dimensions2.fem, 15*Dimensions2.fem, 8*Dimensions2.fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(7*Dimensions2.fem, 0*Dimensions2.fem, 0*Dimensions2.fem, 6*Dimensions2.fem),
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        // The bigger rectanle just above Income container
                        Container(
                          margin: EdgeInsets.fromLTRB(0*Dimensions2.fem, 0*Dimensions2.fem, 9*Dimensions2.fem, 0*Dimensions2.fem),
                          width: 278*Dimensions2.fem,
                          height: 29*Dimensions2.fem,
                          decoration: BoxDecoration (
                            borderRadius: BorderRadius.circular(5*Dimensions2.fem),
                            color: Color(0x388f7aff),
                          ),
                        ),
                        // The smaller rectangle above Expenses
                        Container(
                          width: 61*Dimensions2.fem,
                          height: 29*Dimensions2.fem,
                          decoration: BoxDecoration (
                            borderRadius: BorderRadius.circular(5*Dimensions2.fem),
                            color: Color(0x388f7aff),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(6*Dimensions2.fem, 0*Dimensions2.fem, 0*Dimensions2.fem, 4*Dimensions2.fem),
                    width: double.infinity,
                    height: 36*Dimensions2.fem,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(0*Dimensions2.fem, 0*Dimensions2.fem, 13*Dimensions2.fem, 0*Dimensions2.fem),
                          width: 168*Dimensions2.fem,
                          height: double.infinity,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0*Dimensions2.fem,
                                top: 7*Dimensions2.fem,
                                child: Align(
                                  child: SizedBox(
                                    width: 168*Dimensions2.fem,
                                    height: 29*Dimensions2.fem,
                                    child: Container(
                                      decoration: BoxDecoration (
                                        borderRadius: BorderRadius.circular(5*Dimensions2.fem),
                                        color: Color(0x388f7aff),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              // Income
                              Positioned(
                                left: 62*Dimensions2.fem,
                                top: 13*Dimensions2.fem,
                                child: Align(
                                  child: SizedBox(
                                    width: 43*Dimensions2.fem,
                                    height: 17*Dimensions2.fem,
                                    child: Text(
                                      'Income',
                                      style: SafeGoogleFont (
                                        'Poppins',
                                        fontSize: 11*Dimensions2.ffem,
                                        fontWeight: FontWeight.w700,
                                        height: 1.5*Dimensions2.ffem/Dimensions2.fem,
                                        color: Color(0xb503c781),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 99*Dimensions2.fem,
                                top: 0*Dimensions2.fem,
                                child: Container(
                                  width: 26*Dimensions2.fem,
                                  height: 26*Dimensions2.fem,
                                ),
                              ),
                            ],
                          ),
                        ),
                        // Expenses Container
                        Container(
                          width: 168*Dimensions2.fem,
                          height: 29*Dimensions2.fem,
                          decoration: BoxDecoration (
                            color: Color(0x388f7aff),
                            borderRadius: BorderRadius.circular(5*Dimensions2.fem),
                          ),
                          child: Center(
                            child: Text(
                              'Expenses',
                              style: SafeGoogleFont (
                                'Poppins',
                                fontSize: 11*Dimensions2.ffem,
                                fontWeight: FontWeight.w700,
                                height: 1.5*Dimensions2.ffem/Dimensions2.fem,
                                color: const Color(0xb5c70303),
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
            SizedBox(height: Dimensions.size20),
            // The Transaction Card and List
            Padding(
              padding: EdgeInsets.symmetric(horizontal: Dimensions.size10),
              child: MediaQuery.removePadding(
                context: context,
                removeTop: true,
                child: ListView.separated(
                  itemCount: 11, // controller.allUsersDataList.length,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  separatorBuilder: ((context, index) {
                    return Column(
                      children: [
                        SizedBox(height: Dimensions.size3),                            
                      ],
                    );
                  }),
                  itemBuilder: ((context, index) {
                    // var staff = controller.allUsersDataList[index];
                    return  InkWell(
                      onTap: (){
                        print('See transaction reeceipt');
                      },
                      child: TransactionCard(
                        time: '2:28:01', 
                        date: '22/2/2023', 
                        unitsSold: '12', 
                        amount: '12,300', 
                        nameOfProduct: 'Agaba Pro', 
                        nameOfSalesRep: 'Ugwuoke Chinaza',
                        isExpense: index.isEven? true : false,
                      ),
                    );
                  })
                ),
              ),
            ),
            SizedBox(height: Dimensions.size50),  // space at screen end                             
          ],
        ),
      ),
    );
  }
}