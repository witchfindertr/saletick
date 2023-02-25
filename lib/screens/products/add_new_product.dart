import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:saletick/app_constants/app_dimensions.dart';
import 'package:saletick/controllers/product_controller.dart';
import 'package:saletick/custom_widgets/buttons/main_button.dart';
import 'package:saletick/custom_widgets/header/header_widget.dart';



class AddNewProductScreen extends StatefulWidget {
  const AddNewProductScreen({Key? key}) : super(key: key);

  static const String routeName = '/create-new-product';

  @override
  State<AddNewProductScreen> createState() => _AddNewProductScreenState();
}

class _AddNewProductScreenState extends State<AddNewProductScreen> {

  // input controllers
  TextEditingController productNameController = TextEditingController();
  TextEditingController amountController = TextEditingController();
  TextEditingController unitController = TextEditingController();
  TextEditingController shapeController = TextEditingController();
  TextEditingController sizeController = TextEditingController();
  TextEditingController typeController = TextEditingController();
  TextEditingController materialController = TextEditingController();
  TextEditingController lengthController = TextEditingController();
  TextEditingController categoryController = TextEditingController();
  TextEditingController colorController = TextEditingController();

  // Form key
  var createProductFormKey = GlobalKey<FormState>();

  ProductController productController = Get.find<ProductController>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            // header
            const HeaderWidget(),
            // const TextnDividerHeader(text: 'Add New Product', wantDivider: false),
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
                      // Form(
                      //   key: createProductFormKey,
                      //   child: Column(
                      //     children: [
                      //       // productName & Amount,  
                      //       Row(
                      //         children: [
                      //           Expanded(
                      //             child: InputFieldPlusTextWidget(text: 'Product Name', textController: productNameController),
                      //           ),
                      //           Expanded(
                      //             child: InputFieldPlusTextWidget(text: 'Amount', textController: amountController),
                      //           ),
                      //         ],
                      //       ),
                      //       SizedBox(height: Dimensions.size15),
                      //       // CATEGORIES & SELECT COLOR
                      //       Row(
                      //         children: [
                      //           Expanded(
                      //             child: InputFieldPlusTextWidget(text: 'Categories', textController: categoryController),
                      //           ),
                      //           SizedBox(width: Dimensions.size10),
                      //           // SELECT COLOR
                      //           Expanded(
                      //             child: InputFieldPlusTextWidget(text: 'Colors', textController: colorController),
                      //           ),
                      //         ],
                      //       ),
                      //       SizedBox(height: Dimensions.size15),
                      //       // Unit & Shape 
                      //       Row(
                      //         children: [
                      //           Expanded(
                      //             child: InputFieldPlusTextWidget(text: 'Unit', textController: unitController, isItForNumber: true),
                      //           ),
                      //           Expanded(
                      //             child: InputFieldPlusTextWidget(text: 'Shape', textController: shapeController),
                      //           ),
                      //         ],
                      //       ),            
                      //       SizedBox(height: Dimensions.size15),            
                      //       // Size & Type
                      //       Row(
                      //         children: [
                      //           Expanded(
                      //             child: InputFieldPlusTextWidget(text: 'Size', textController: sizeController),
                      //           ),
                      //           Expanded(
                      //             child: InputFieldPlusTextWidget(text: 'Type', textController: typeController),
                      //           ),
                      //         ],
                      //       ), 
                      //       SizedBox(height: Dimensions.size15),             
                      //       // Material & Length
                      //       Row(
                      //         children: [
                      //           Expanded(
                      //             child: InputFieldPlusTextWidget(text: 'Material', textController: materialController),
                      //           ),
                      //           Expanded(
                      //             child: InputFieldPlusTextWidget(text: 'Length', textController: lengthController),
                      //           ),
                      //         ],
                      //       ),                                    
                      //     ],
                      //   ),
                      // ),
                      SizedBox(height: Dimensions.size25),
                      // The ADD button Here 
                      MainButton(
                        text: 'ADD',
                        onPressed: () {                          
                          // if form is valid, go on to add the product to the Database                       
                          if(createProductFormKey.currentState!.validate()){

                            print('Added A new Product');
                            var categoryList = categoryController.text.trim().split(' ');
                            var productColorList = colorController.text.trim().split(' ');

                            // An instance of product model
                            // ProductModel productModel = ProductModel(
                            //   name: productNameController.text.trim(), 
                            //   amount: amountController.text.trim(), 
                            //   colors: productColorList, 
                            //   unit: int.parse(unitController.text.trim()),
                            //   unitSold: 0,
                            //   unitAvailable: int.parse(unitController.text.trim()),
                            //   shape: shapeController.text.trim(), 
                            //   size: sizeController.text.trim(),
                            //   type: typeController.text.trim(),
                            //   material: materialController.text.trim(),
                            //   length: lengthController.text.trim(), 
                            //   categories: categoryList
                            // ); 

                            // getting confirmation from the user
                            // UserFeedBack.showConfirmation(
                            //   onConfirm: (){
                            //     // Calling our create function here (from productController)
                            //     Get.back();
                            //     productController.createProductItem(productModel);
                            //   }, 
                            //   confirmQuestion: 'Add a new product to your inventory?'
                            // );

                            
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