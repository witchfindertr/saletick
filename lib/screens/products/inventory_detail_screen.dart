import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:saletick/controllers/auth_controller.dart';
import 'package:saletick/controllers/chart_controller.dart';
import 'package:saletick/controllers/product_controller.dart';
import 'package:saletick/custom_widgets/header/header_one_widget.dart';
import 'package:saletick/app_constants/app_colors.dart';
import 'package:saletick/app_constants/app_dimensions.dart';
import 'package:saletick/app_constants/custom_text_styles.dart';
import 'package:saletick/custom_widgets/buttons/main_button.dart';
import 'package:saletick/custom_widgets/buttons/saletick_back_button.dart';
import 'package:saletick/custom_widgets/texts/inventory_detail_text_widget.dart';
import 'package:saletick/models/product_model.dart';
import 'package:saletick/screens/products/restock_product_screen.dart';
import 'package:saletick/screens/products/sell_a_product.dart';


class InventoryDetailScreen extends StatelessWidget {
  
  final ProductModel currentProduct;
  
  InventoryDetailScreen({Key? key, required this.currentProduct}) : super(key: key);

  ProductController productController = Get.find<ProductController>();

  AuthController authController = Get.find<AuthController>();

  // ChartController chartController = Get.find<ChartController>();


  @override
  Widget build(BuildContext context) {
    // calc. the %centage for the circularProgress Indicator
    double percentage = ((currentProduct.unitAvailable)/(currentProduct.unit))*100;
    // Reduced to the ratio of 0 - 1 (eg 0.1, 0.2, 0.3, 0.4, etc)
    double percentValue = percentage/100;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Header
            const SaletickHeaderOne(headerOneTitleText: 'Inventory'),
            SizedBox(height: Dimensions.size40),
            // item name
            Padding(
              padding: EdgeInsets.symmetric(horizontal: Dimensions.size15),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  currentProduct.name, // name
                  style: headline3.copyWith(fontWeight: FontWeight.bold, color: AppColors.tarnorFadeTextColor),
                ),
              ),
            ),
            // Divider
            Padding(
              padding: EdgeInsets.symmetric(horizontal: Dimensions.size10),
              child: Divider(height: Dimensions.size9, thickness: 2),
            ),
            SizedBox(height: Dimensions.size10),            
            Container(
              padding: EdgeInsets.symmetric(horizontal: Dimensions.size5, vertical: Dimensions.size20),
              color: Color.fromRGBO(255, 255, 255, 1).withOpacity(0.2),
              child: Row(
                children: [
                  // Circular Rating Bar
                  Expanded(
                    child: CircularPercentIndicator(
                      radius: Dimensions.size25*3,
                      lineWidth: Dimensions.size30,
                      percent: percentValue,
                      center: Text('${percentage.toInt()}%', style: headline3.copyWith(letterSpacing: 2)),
                      progressColor: AppColors.mainColor2,
                      backgroundColor: AppColors.mainColorLight,
                      reverse: true,
                      animation: true,
                      animationDuration: 2400,
                    ),
                  ),                
                  SizedBox(width: Dimensions.size5),
                  // column of items beside the circular rating bar
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Total Income",
                          style: headline5.copyWith(color: AppColors.mainTextColor2),
                        ),
                        SizedBox(height: Dimensions.size5),
                        // Column for total income amount & the green Added Amount
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              productController.totalCashgeneratedByProduct(currentProduct), // amount generated in all sales
                              style: headline2.copyWith(color: AppColors.mainTextColor3, fontSize: Dimensions.size25, letterSpacing: 1),
                            ),
                            Text(
                              "+${productController.totalCashgeneratedByProductToday(currentProduct)}", // amount generated today
                              style: headline4.copyWith(color: AppColors.saletickGreen, letterSpacing: 1),
                            ),
                          ],
                        ),
                        SizedBox(height: Dimensions.size15),
                        // Units available
                        Row(
                          children: [
                             Container(
                              height: Dimensions.size10,
                              width: Dimensions.size10,
                              color: AppColors.mainTextColor1,
                            ),
                            SizedBox(width: Dimensions.size5),
                            Text(
                              '${currentProduct.unitAvailable} Units Available',  // units available
                              style: headline6, 
                            ),
                          ],
                        ),
                        SizedBox(height: Dimensions.size10),
                        // Units Sold
                        Row(
                          children: [
                             Container(
                              height: Dimensions.size10,
                              width: Dimensions.size10,
                              color: AppColors.mainColorLight,
                            ),
                            SizedBox(width: Dimensions.size5),
                            Text(
                              '${currentProduct.unitSold} Units Sold', // units sold
                              style: headline6, 
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: Dimensions.size10),
            // Divider
            Padding(
              padding: EdgeInsets.symmetric(horizontal: Dimensions.size10),
              child: Divider(height: Dimensions.size9, thickness: 2),
            ),
            SizedBox(height: Dimensions.size40),
            // Item Details Here: 1st ROW
            Row(
              children: [
                // product name
                Expanded(
                  child: InventoryDetailTextWidget(titleText: 'Product name', valueText: currentProduct.name) // name
                ),
                // Material
                Expanded(
                  child: InventoryDetailTextWidget(titleText: 'Category', valueText: currentProduct.category) // material
                ),
                // Length
                Expanded(
                  child: InventoryDetailTextWidget(titleText: 'Unit(s)', valueText: currentProduct.unit.toString()), // length
                ),
              ],
            ),        
            SizedBox(height: Dimensions.size30),
            // Item Details Here: 3nd ROW
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Size
                InventoryDetailTextWidget(titleText: 'Unit Price', valueText: currentProduct.amount),  // unit price
                SizedBox(width: Dimensions.screenWidth*0.2),
                // Shape
                const InventoryDetailTextWidget(
                  titleText: 'Colour', 
                  isStar: true,
                ),
              ],
            ),
             SizedBox(height: Dimensions.size40),
            // Item Details Here: 2nd ROW
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Short Description',
                  style: headline5,
                ),
                SizedBox(height: Dimensions.size3),             
                // value
                Text(
                  currentProduct.description, // Short Description: Poppins-SemiBold because the following exception occurred:',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.w400, 
                    color: AppColors.mainTextColor3.withOpacity(0.7),
                    fontSize: Dimensions.size15,
                  ),
                ),              
              ],
            ),
            // The ReStock Button
            SizedBox(height: Dimensions.size50),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [               
                if(authController.currentUserData.isAdmin)                
                  Column(
                    children: [
                      MainButton(
                        onPressed: (){
                          Get.to(ReStockProductScreen(product: currentProduct));
                        }, 
                        text: 'ReStock',
                        width: Dimensions.size100*1.3,
                      ),
                      SizedBox(height: Dimensions.size20),
                    ],
                  ),                
                MainButton(
                  onPressed: (){
                    Get.to(SellAProductScreen(product: currentProduct));
                  }, 
                  text: 'Sell',
                  width: Dimensions.size100,
                ),
              ],
            ),
            SizedBox(height: Dimensions.size30),
            // Back Button
            const SaletickBackButton(),
            SizedBox(height: Dimensions.size50),
          ],
        ),
      ),
    );
  }
}






// class InventoryDetailScreen extends StatelessWidget {
  
//   final ProductModel productModel;
  
//   InventoryDetailScreen({Key? key, required this.productModel}) : super(key: key);

//   ProductController productController = Get.find<ProductController>();

//   AuthController authController = Get.find<AuthController>();


//   @override
//   Widget build(BuildContext context) {
//     // calc. the %centage for the circularProgress Indicator
//     double percentage = ((productModel.unitAvailable)/(productModel.unit))*100;
//     // Reduced to the ratio of 0 - 1 (eg 0.1, 0.2, 0.3, 0.4, etc)
//     double percentValue = percentage/100;
//     print(percentValue);

//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             const HeaderWidget(),
//             SizedBox(height: Dimensions.size40),
//             // item name
//             Padding(
//               padding: EdgeInsets.symmetric(horizontal: Dimensions.size15),
//               child: Align(
//                 alignment: Alignment.centerLeft,
//                 child: Text(
//                   productModel.name, //name
//                   style: headline3.copyWith(fontWeight: FontWeight.bold, color: AppColors.tarnorFadeTextColor),
//                 ),
//               ),
//             ),
//             // Divider
//             Padding(
//               padding: EdgeInsets.symmetric(horizontal: Dimensions.size10),
//               child: Divider(height: Dimensions.size9, thickness: 2),
//             ),
//             SizedBox(height: Dimensions.size10),            
//             Container(
//               padding: EdgeInsets.symmetric(horizontal: Dimensions.size5, vertical: Dimensions.size20),
//               color: Color.fromRGBO(255, 255, 255, 1).withOpacity(0.2),
//               child: Row(
//                 children: [
//                   // Circular Rating Bar
//                   Expanded(
//                     child: CircularPercentIndicator(
//                       radius: Dimensions.size25*3,
//                       lineWidth: Dimensions.size30,
//                       percent: percentValue,
//                       center: Text('${percentage.toInt()}%', style: headline3.copyWith(letterSpacing: 2)),
//                       progressColor: AppColors.mainTextColor1,
//                       backgroundColor: AppColors.mainTextColor3,
//                       reverse: true,
//                       animation: true,
//                       animationDuration: 2400,
//                     ),
//                   ),
//                   SizedBox(width: Dimensions.size5),
//                   // column of items beside the circular rating bar
//                   Expanded(
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           "Total Income",
//                           style: headline5.copyWith(color: AppColors.mainTextColor2),
//                         ),
//                         SizedBox(height: Dimensions.size5),
//                         // Column for total income amount & the green Added Amount
//                         Column(
//                           crossAxisAlignment: CrossAxisAlignment.end,
//                           children: [
//                             Text(
//                               productController.totalCashgeneratedByProduct(productModel),//"11,345,070",  amount generated in all sales
//                               style: headline2.copyWith(color: AppColors.mainTextColor3, fontSize: Dimensions.size25, letterSpacing: 1),
//                             ),
//                             Text(
//                               "+${productController.totalCashgeneratedByProductToday(productModel)}",//"+331,993", amount generated today
//                               style: headline4.copyWith(color: AppColors.tarnorGreen, letterSpacing: 1),
//                             ),
//                           ],
//                         ),
//                         SizedBox(height: Dimensions.size15),
//                         // Units available
//                         Row(
//                           children: [
//                              Container(
//                               height: Dimensions.size10,
//                               width: Dimensions.size10,
//                               color: AppColors.mainTextColor1,
//                             ),
//                             SizedBox(width: Dimensions.size5),
//                             Text(
//                               '${productModel.unitAvailable} Units Available',  // units available
//                               style: headline6, 
//                             ),
//                           ],
//                         ),
//                         SizedBox(height: Dimensions.size10),
//                         // Units Sold
//                         Row(
//                           children: [
//                              Container(
//                               height: Dimensions.size10,
//                               width: Dimensions.size10,
//                               color: AppColors.mainTextColor3,
//                             ),
//                             SizedBox(width: Dimensions.size5),
//                             Text(
//                               '${productModel.unitSold} Units Sold', // units sold
//                               style: headline6, 
//                             ),
//                           ],
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             SizedBox(height: Dimensions.size10),
//             // Divider
//             Padding(
//               padding: EdgeInsets.symmetric(horizontal: Dimensions.size10),
//               child: Divider(height: Dimensions.size9, thickness: 2),
//             ),
//             SizedBox(height: Dimensions.size40),
//             // Item Details Here: 1st ROW
//             Row(
//               children: [
//                 // product name
//                 Expanded(
//                   child: InventoryDetailTextWidget(titleText: 'Product name', valueText: productModel.name) // name
//                 ),
//                 // Material
//                 Expanded(
//                   child: InventoryDetailTextWidget(titleText: 'Material', valueText: productModel.material) // material
//                 ),
//                 // Length
//                 Expanded(
//                   child: InventoryDetailTextWidget(titleText: 'Length(M)', valueText: productModel.length), // length
//                 ),
//               ],
//             ),
//             SizedBox(height: Dimensions.size30),
//             // Item Details Here: 2nd ROW
//             Row(
//               children: [
//                 // Type
//                 Expanded(
//                   child: InventoryDetailTextWidget(titleText: 'Type', valueText: productModel.type)  // type
//                 ),
//                 // Shape
//                 Expanded(
//                   child: InventoryDetailTextWidget(titleText: 'Shape', valueText: productModel.shape) // shape
//                 ),
//                 // Unit
//                 Expanded(
//                   child: InventoryDetailTextWidget(titleText: 'Unit', valueText: productModel.unit.toString()), // units
//                 ),
//               ],
//             ),
//             SizedBox(height: Dimensions.size30),
//             // Item Details Here: 3nd ROW
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 // Size
//                 InventoryDetailTextWidget(titleText: 'Size', valueText: productModel.size),  // size
//                 SizedBox(width: Dimensions.screenWidth*0.2),
//                 // Shape
//                 InventoryDetailTextWidget(
//                   titleText: 'Colour', 
//                   isStar: true,
//                 ),
//               ],
//             ),
//             // The ReStock Button
//             SizedBox(height: Dimensions.size50),
//             Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 if(authController.currentUserData.isAdmin)
//                   Column(
//                     children: [
//                       MainButton(
//                         onPressed: (){
//                           Get.to(ReStockProductScreen(product: productModel));
//                         }, 
//                         text: 'ReStock'
//                       ),
//                       SizedBox(height: Dimensions.size20),
//                     ],
//                   ),                
//                 MainButton(
//                   onPressed: (){
//                     Get.to(SellAProductScreen(product: productModel));
//                   }, 
//                   text: 'Sell'
//                 ),
//               ],
//             ),
//             SizedBox(height: Dimensions.size30),
//             // Back Button
//             const SaletickBackButton(),
//             SizedBox(height: Dimensions.size50),
//           ],
//         ),
//       ),
//     );
//   }
// }