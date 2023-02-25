import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:saletick/custom_widgets/header/header_one_widget.dart';
import 'package:saletick/custom_widgets/cards/trasaction_card.dart';
import 'package:saletick/app_constants/app_dimensions.dart';
import 'package:saletick/controllers/auth_controller.dart';
import 'package:saletick/models/user_model.dart';


class SeeMySalesScreen extends GetView<AuthController> {
  final UserModel user;
  
  const SeeMySalesScreen({Key? key, required this.user}) : super(key: key);


  @override
  Widget build(BuildContext context) {

  return Scaffold(
      backgroundColor: Colors.white,
      body:  SingleChildScrollView(
        child: Column(
          children: [
            const SaletickHeaderOne(headerOneTitleText: "My Sales"),
              // LIST OF ALL SALES
            Container(
              padding: EdgeInsets.symmetric(horizontal: Dimensions.size10, vertical: Dimensions.size20),
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: 11, //user.mySales.length,     
                physics: const NeverScrollableScrollPhysics(), 
                itemBuilder: (BuildContext context, int index){
                  //var sale = user.mySales[index];                   
                  return  InkWell(
                    onTap: (() {                     
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
            SizedBox(height: Dimensions.size30),
          ],
        ),
      ),
    );      
  }
}
// class SeeMySalesScreen extends GetView<AuthController> {
//   final UserModel user;
  
//   const SeeMySalesScreen({Key? key, required this.user}) : super(key: key);


//   @override
//   Widget build(BuildContext context) {

//   return Scaffold(
//       backgroundColor: Colors.white,
//       body: Obx(() {
//         // checking if current user is being fetched,  if true, show circularProgressIndicator
//         // if fetched, we check if user has made any sales. if there are sales we show list of user's sales 
//         // otherwise we show 'no sales text'
//           return controller.isLoading.value? const Center(
//             child: CircularProgressIndicator(),
//           ) : (user.mySales.isEmpty)? Center(child: Text('No Sales Yet', style: headline5)) : SingleChildScrollView(
//             child: Column(
//               children: [
//                 const SaletickHeaderOne(headerOneTitleText: "My Sales"),
//                  // LIST OF ALL SALES
//                 Container(
//                   child: ListView.separated(
//                     shrinkWrap: true,
//                     itemCount: 5, //user.mySales.length,     
//                     physics: const NeverScrollableScrollPhysics(),
//                     separatorBuilder: (context, index) =>  SizedBox(height: Dimensions.size9),   
//                     itemBuilder: (BuildContext context, int index){
//                       //var sale = user.mySales[index];                   
//                       return  InkWell(
//                         onTap: (() {                     
//                         }),
//                         child: const TransactionCard(
//                           amount: '50,0596',
//                           date: '21/2/2023',
//                           time: '12:26:09',
//                           unitsSold: '4',
//                           nameOfProduct: 'FineProduct',
//                           nameOfSalesRep: 'Ugwuoke Chinaza',
//                         ),
//                       );
//                     }
//                   ),
//                 ),
//                 SizedBox(height: Dimensions.size30),
//               ],
//             ),
//           );
//         }
//       ),
//     );
//   }
// }