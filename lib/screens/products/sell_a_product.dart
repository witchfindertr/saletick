import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:saletick/controllers/auth_controller.dart';
import 'package:saletick/controllers/product_controller.dart';
import 'package:saletick/custom_widgets/header/header_one_widget.dart';
import 'package:saletick/app_constants/app_dimensions.dart';
import 'package:saletick/custom_widgets/buttons/main_button.dart';
import 'package:saletick/custom_widgets/inputs/input_field_plus_text.dart';
import 'package:saletick/models/product_model.dart';
import 'package:saletick/utilities/feedback.dart';


class SellAProductScreen extends StatefulWidget {
  final ProductModel product;

  const SellAProductScreen({Key? key, required this.product}) : super(key: key);

  @override
  State<SellAProductScreen> createState() => _SellAProductScreenState();
}

class _SellAProductScreenState extends State<SellAProductScreen> {

   // input controllers
  TextEditingController unitSoldController = TextEditingController();
  TextEditingController soldToWhoController = TextEditingController();


  // Form key
  var sellProdFormKey = GlobalKey<FormState>();
  var soldToFormKey = GlobalKey<FormState>();

  // product controller instance
  ProductController productController = Get.find<ProductController>();
  // auth controller instance
  AuthController authController = Get.find<AuthController>();  


  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            // header
            const SaletickHeaderOne(headerOneTitleText: 'Sell A Product'),
            SizedBox(height: Dimensions.size50),
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
                      Obx(() {
                          return Column(
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
                                        customTextInputAction: TextInputAction.done,
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
                                      key: sellProdFormKey,
                                      child: InputFieldPlusTextWidget(
                                        text: 'Unit', 
                                        textController: unitSoldController, 
                                        isItForNumber: true,
                                        customTextInputAction: TextInputAction.done,
                                        onChanged: (value) {
                                            print('I just changed: $value');// testing  
                                            // Calling the updateSaleVariables from productController. Date & Time plus amount, is updated                                                                                                                     
                                            productController.updateProductSaleVariables(double.parse(unitSoldController.text.trim()), double.parse(widget.product.amount)); // amount from productModel                              
                                        },
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: Dimensions.size10),
                                  // Total Amount
                                  Expanded(
                                    child: AbsorbPointer(
                                      child: InputFieldPlusTextWidget(
                                        text: 'Total Amount', 
                                        textController: TextEditingController(),
                                        customTextInputAction: TextInputAction.done,
                                        myHintText: productController.sellProductTotalAmount.toString(), // freq. updated amount based on no. of units added
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: Dimensions.size15),
                              // Current Date & Time from our Product Controller using DateTime.
                              Row(
                                children: [
                                    Expanded(
                                    child: AbsorbPointer(
                                      child: InputFieldPlusTextWidget(
                                        text: 'Time', 
                                        textController: TextEditingController(), 
                                        customTextInputAction: TextInputAction.next,
                                        myHintText: productController.myTime.value, // freq. updated time
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: Dimensions.size10),
                                  // SELECT COLOR
                                  Expanded(
                                    child: AbsorbPointer(
                                      child: InputFieldPlusTextWidget(
                                        text: 'Date', 
                                        textController: TextEditingController(),
                                        customTextInputAction: TextInputAction.next,
                                        myHintText: productController.myDate.value, // freq. updated date
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: Dimensions.size15),                                        
                              // Sold To
                              Row(
                                children: [
                                  Expanded(
                                    child: Form(
                                      key: soldToFormKey,
                                      child: InputFieldPlusTextWidget(
                                        text: 'Sold To', 
                                        textController: soldToWhoController,     
                                        customTextInputAction: TextInputAction.done,                                    
                                      ),
                                    ),
                                  ),                        
                                ],
                              ),         
                              SizedBox(height: Dimensions.size15),                                        
                              // Who is Selling?
                              Row(
                                children: [
                                  Expanded(
                                    child: AbsorbPointer(
                                      child: InputFieldPlusTextWidget(
                                        text: 'Sold By', 
                                        textController: TextEditingController(),
                                        customTextInputAction: TextInputAction.done,
                                        myHintText: authController.getCurrentUser()!.email,
                                      ),
                                    ),
                                  ),                                
                                ],
                              ),                                    
                            ],
                          );
                        }
                      ),                       
                      SizedBox(height: Dimensions.size25),
                      // The ADD button Here 
                      MainButton(
                        text: 'SELL',
                        onPressed: () {                                                    
                          //if unit is not equal to zero 
                          if(unitSoldController.text.trim()=='0' || unitSoldController.text.trim()=='0.0'){
                            UserFeedBack.showError('You cannot sell this product unless you add at least 1 unit of it. Provide a value in the unit section');
                            return;
                          } 

                          if(widget.product.unitAvailable < 1){
                            UserFeedBack.showError('Sorry, you are out of stock');
                            return;
                          }
                          // if form is valid i.e is unit is supplied, then go on to add the product to the Database                    
                          if(sellProdFormKey.currentState!.validate() && soldToFormKey.currentState!.validate()){  
                            if(widget.product.unitAvailable < int.parse(unitSoldController.text.trim())){
                              UserFeedBack.showError('Insufficient number of units available. You cannot sell more than ${widget.product.unitAvailable} items of this product');
                            }else{
                              // getting confirmation from the user
                              UserFeedBack.showConfirmation(
                                onConfirm: (){
                                  Get.back();
                                  // Calling our function for Selling of Product (productController)                                
                                  productController.sellProductItem(
                                    authController.currentUserData.myAdminEmailAddress,
                                    productModel: widget.product, 
                                    unitSold: int.parse(unitSoldController.text.trim()),
                                    soldTo: soldToWhoController.text.trim(),
                                    isAdmin: authController.currentUserData.isAdmin,
                                  );
                                }, 
                                confirmQuestion: 'You want to go on to sell this product?'
                              );            
                            }                                                                    
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