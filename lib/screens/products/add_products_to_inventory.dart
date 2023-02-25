
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:saletick/controllers/chart_controller.dart';
import 'package:saletick/controllers/product_controller.dart';
import 'package:saletick/custom_widgets/header/header_one_widget.dart';
import 'package:saletick/app_constants/app_dimensions.dart';
import 'package:saletick/custom_widgets/buttons/main_button.dart';
import 'package:saletick/custom_widgets/inputs/input_field_plus_text.dart';
import 'package:saletick/models/product_model.dart';
import 'package:saletick/utilities/feedback.dart';
import 'package:saletick/utilities/utils.dart';
import 'package:barcode_widget/barcode_widget.dart';


class AddProductsToInventory extends StatefulWidget {
  final String uniqueProductId;

  const AddProductsToInventory({Key? key, required this.uniqueProductId});

  @override
  State<AddProductsToInventory> createState() => _AddProductsToInventoryState();
}

class _AddProductsToInventoryState extends State<AddProductsToInventory> {

  // input controllers
  TextEditingController productNameController = TextEditingController();
  TextEditingController categoryController = TextEditingController();
  TextEditingController unitController = TextEditingController();
  TextEditingController unitPriceController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();


  // Form key
  var createProductFormKey = GlobalKey<FormState>();

  // instance of product controller
  ProductController productController = Get.find<ProductController>();

  // instance of chart controller
  ChartController chartController = Get.find<ChartController>();

   @override
  void dispose() {
    productController.dispose();
    categoryController.dispose();
    unitController.dispose();
    unitPriceController.dispose();
    descriptionController.dispose();
    super.dispose();
  }



  @override
  Widget build(BuildContext context) {
    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: [
                // Header HERE
                const SaletickHeaderOne(headerOneTitleText: 'Add Product'),
                SizedBox(height: Dimensions.size60),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: Dimensions.size20),
                  child: Row(
                   children: [
                     Expanded(
                       child: Column(
                         children: [
                           BarcodeWidget(
                            barcode: Barcode.qrCode(),
                            data: widget.uniqueProductId, //'jsm3783821jdh',
                            height: Dimensions.size20*3,
                            width: Dimensions.size20*3,
                           ),
                           SizedBox(height: Dimensions.size3),
                           const Text('QR Code')
                         ],
                       ),
                     ),
                     Expanded(
                       child: BarcodeWidget(
                          barcode: Barcode.code128(),
                          data: widget.uniqueProductId, //'jsm3783821jdh',
                          height: Dimensions.size20*3,
                          width: Dimensions.size100,
                        ),
                     ),  
                   ],
                  ),
                ),             
               SizedBox(height: Dimensions.size30),
               Form(
                key: createProductFormKey,
                 child: Column(
                  children: [
                    // For Category & Name of Product  
                    Row(
                      children: [
                        Expanded(
                          child: InputFieldPlusTextWidget(
                            text: 'Category',
                            textController: categoryController,
                            customTextInputAction: TextInputAction.next,
                          ),
                        ),
                        Expanded(
                          child: InputFieldPlusTextWidget(
                            text: 'Name of Product',
                            textController: productNameController,
                            customTextInputAction: TextInputAction.next,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: Dimensions.size20),
                    // For No. of Units & Unit Price 
                    Row(
                      children: [
                        Expanded(
                          child: InputFieldPlusTextWidget(
                            text: 'No. of Units',
                            textController: unitController,
                            isItForNumber: true,
                            customTextInputAction: TextInputAction.next,
                          ),
                        ),
                        Expanded(
                          child: InputFieldPlusTextWidget(
                            text: 'Unit Price',
                            textController: unitPriceController,
                            isItForNumber: true,
                            customTextInputAction: TextInputAction.next,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: Dimensions.size20),
                    // Description of the Product
                    Row(
                      children: [
                        Expanded(
                          child: InputFieldPlusTextWidget(
                            text: 'Description',
                            textController: descriptionController,
                            customTextInputAction: TextInputAction.done,
                          ),
                        ),             
                      ],
                    ),
                  ],
                 ),
               ),               
               SizedBox(height: Dimensions.size10),
               // Row Containing number of total sales
               Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: Dimensions.size15),
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Text(
                          'Total Possible Sales: ',
                          style: SafeGoogleFont (
                            'Poppins',
                            fontSize: 15*ffem,
                            fontWeight: FontWeight.w600,
                            height: 1.5*ffem/fem,
                            color: Color(0xff430463),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Obx(() {
                            return Text(
                              chartController.allSalesTotalAmount(), //'25,778,4784',
                              style: SafeGoogleFont (
                                'Poppins',
                                fontSize: 24*ffem,
                                fontWeight: FontWeight.w700,
                                height: 1.5*ffem/fem,
                                color: Color(0xff430463),
                              ),
                            );
                          }
                        ),
                      ),
                    ],
                  ),
                ),
                // Button Here
                SizedBox(height: Dimensions.size20),
                MainButton(
                  text: 'Add To Inventory',
                  onPressed: (){
                    if(createProductFormKey.currentState!.validate()){
                      // An instance of product model
                      ProductModel productModel = ProductModel(
                        name: productNameController.text.trim(), 
                        amount: unitPriceController.text.trim(), 
                        colors: [], 
                        unit: int.parse(unitController.text.trim()),
                        unitSold: 0,
                        unitAvailable: int.parse(unitController.text.trim()),
                        category: categoryController.text.trim(),
                        productID: widget.uniqueProductId,
                        description: descriptionController.text.trim(),                       
                      ); 

                      // getting confirmation from the user
                      UserFeedBack.showConfirmation(
                        onConfirm: (){
                          // Calling our create function here (from productController)
                          Get.back();
                          productController.createProductItem(productModel);
                        }, 
                        confirmQuestion: 'Add a new product to your inventory?'
                      );
                    }
                  },
                  isTripleGradient: true,
                ),
                SizedBox(height: Dimensions.size60),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

