import 'package:flutter/material.dart';
import 'package:saletick/custom_widgets/header/header_one_widget.dart';
import 'package:saletick/custom_widgets/cards/trasaction_card.dart';
import 'package:saletick/app_constants/app_dimensions.dart';
import 'package:saletick/custom_widgets/texts/text_n_divider_header.dart';
import 'package:saletick/models/user_model.dart';


class SpecificStaffSalesScreen extends StatelessWidget {
  final UserModel specificStaff;
  
  const SpecificStaffSalesScreen({Key? key, required this.specificStaff}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SaletickHeaderOne(headerOneTitleText: "Staff Sales"),
            TextnDividerHeader(text: "${specificStaff.firstName}'s Sales", wantDivider: false),
             // LIST OF ALL SALES
            Container(
              padding: EdgeInsets.symmetric(horizontal: Dimensions.size10),
              child: MediaQuery.removePadding(
                context: context,
                removeTop: true,
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: 6, //specificStaff.mySales.length,     
                  physics: const NeverScrollableScrollPhysics(),   
                  itemBuilder: (BuildContext context, int index){
                    // var sale = specificStaff.mySales[index];                   
                    return  InkWell(
                      onTap: (() {
                        // Get.to(SoldProductInfoScreen(soldProduct: sale));   
                        // Here insert receipt screen                  
                      }),
                      child: const TransactionCard(
                        amount: '50,0596',
                        date: '21/2/2023',
                        time: '12:26:09',
                        unitsSold: '4',
                        nameOfProduct: 'FineProduct',
                        nameOfSalesRep: 'Ugwuoke Chinaza',
                      ),
                    );
                  }
                ),
              ),
            ),
            SizedBox(height: Dimensions.size60),
          ],
        ),
      ),
    );
  }
}


// class SpecificStaffSalesScreen extends StatelessWidget {
//   final UserModel specificStaff;
  
//   const SpecificStaffSalesScreen({Key? key, required this.specificStaff}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             const HeaderWidget(),
//             TextnDividerHeader(text: "${specificStaff.firstName}'s Sales"),
//              // LIST OF ALL SALES
//             Container(
//               child: ListView.separated(
//                 shrinkWrap: true,
//                 itemCount: specificStaff.mySales.length,     
//                 physics: const NeverScrollableScrollPhysics(),
//                 separatorBuilder: (context, index) =>  SizedBox(height: Dimensions.size9),   
//                 itemBuilder: (BuildContext context, int index){
//                   var sale = specificStaff.mySales[index];                   
//                   return  InkWell(
//                     onTap: (() {
//                       Get.to(SoldProductInfoScreen(soldProduct: sale));                     
//                     }),
//                     child: ProductItemWidget(
//                       productName: sale .productName, // name
//                       time: '${DateFormat.jm().format(sale .dateCreated)} ',
//                       date: sale .date, // date
//                       price: sale .totalAmount, // totalAmount
//                       quantity: sale .unitSold.toString(), // quantity sold
//                     ),
//                   );
//                 }
//               ),
//             ),
//             SizedBox(height: Dimensions.size30),
//           ],
//         ),
//       ),
//     );
//   }
// }