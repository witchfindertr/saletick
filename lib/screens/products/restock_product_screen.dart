import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:saletick/app_constants/app_dimensions.dart';
import 'package:saletick/controllers/product_controller.dart';
import 'package:saletick/custom_widgets/buttons/main_button.dart';
import 'package:saletick/custom_widgets/inputs/input_field_plus_text.dart';
import 'package:saletick/custom_widgets/texts/text_n_divider_header.dart';
import 'package:saletick/models/product_model.dart';
import 'package:saletick/utilities/feedback.dart';


import '../../custom_widgets/header/header_widget.dart';

class ReStockProductScreen extends StatefulWidget {
  final ProductModel product;
  
  const ReStockProductScreen({Key? key, required this.product}) : super(key: key);

  @override
  State<ReStockProductScreen> createState() => _ReStockProductScreenState();
}

class _ReStockProductScreenState extends State<ReStockProductScreen> {
  // form key
  GlobalKey<FormState> reStockFormKey = GlobalKey<FormState>();

  // product controller instance
  ProductController _productController = Get.find<ProductController>();

  // restock unit text controller
  var restockUnitController = TextEditingController();

 @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            // header
            const HeaderWidget(),
            const TextnDividerHeader(text: 'Restock Product', wantDivider: false),
            // The form Section
            Padding(
              padding: EdgeInsets.symmetric(horizontal: Dimensions.size10),
              child: Material(
                elevation: 4,
                color: Colors.white,
                borderRadius: BorderRadius.circular(Dimensions.size15), 
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: Dimensions.size5, vertical: Dimensions.size20),
                  child: Column(
                    children: [
                      Column(
                        children: [
                          // productName to be sold,  
                          Row(
                            children: [
                              Expanded(
                                child: AbsorbPointer(
                                  child: InputFieldPlusTextWidget(
                                    text: '', 
                                    textController: TextEditingController(),
                                    myHintText: widget.product.name.toUpperCase(), // product name
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: Dimensions.size15),
                          // Unit Sold & Total
                          Row(
                            children: [
                                Expanded(
                                child: Form(
                                  key: reStockFormKey,
                                  child: InputFieldPlusTextWidget(
                                    text: 'Quantity To Be Added', 
                                    textController: restockUnitController, 
                                    isItForNumber: true,                                        
                                  ),
                                ),
                              ),                                 
                            ],
                          ),                                                                                         
                        ],
                      ),                                             
                      SizedBox(height: Dimensions.size20),
                      // The ADD button Here 
                      MainButton(
                        text: 'ReStock',
                        onPressed: () {                                                 
                          // if form is valid i.e is unit is supplied, then go on to add the product to the Database                    
                          if(reStockFormKey.currentState!.validate()){                                                     
                            // getting confirmation from the user
                            UserFeedBack.showConfirmation(
                              onConfirm: (){
                                Get.back();
                                // Calling the reStock function from product Controller                               
                                _productController.restockProduct(
                                  widget.product, 
                                  int.parse(restockUnitController.text.trim())                                  
                                );
                              }, 
                              confirmQuestion: 'Confirm request to restock ${widget.product.name}?'
                            );                            
                          }                                                       
                        },                         
                      ), 
                      SizedBox(height: Dimensions.size30), 
                    ],
                  ),
                ),
              ),
            ),
            // Extra space at screen end
            SizedBox(height: Dimensions.size50),
          ],
        ),
      ),
    );
  }
}