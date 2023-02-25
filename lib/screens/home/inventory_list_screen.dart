import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:saletick/app_constants/app_colors.dart';
import 'package:saletick/app_constants/app_dimensions.dart';
import 'package:saletick/app_constants/custom_text_styles.dart';
import 'package:saletick/controllers/auth_controller.dart';
import 'package:saletick/controllers/product_controller.dart';
import 'package:saletick/custom_widgets/header/header_widget.dart';
// import 'package:saletick/custom_widgets/lists/inventory_item_card.dart';
// import 'package:saletick/custom_widgets/texts/text_n_divider_header.dart';
import 'package:saletick/screens/products/add_new_product.dart';


class InventoryListScreen extends StatefulWidget {
  const InventoryListScreen({Key? key}) : super(key: key);

  static const String routeName = '/home';

  @override
  State<InventoryListScreen> createState() => _InventoryListScreenState();
}

class _InventoryListScreenState extends State<InventoryListScreen> {

  // instance of product controller
    ProductController productController = Get.find<ProductController>();

  // instance of auth controller
    AuthController authController = Get.find<AuthController>();

  @override
  void initState() {
    productController.getAllProducts(authController.currentUserData.isAdmin);
    productController.getAllSalesData(authController.currentUserData.isAdmin);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {    

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Obx(() {
            return Column(
              children: [
                const HeaderWidget(),
                // const TextnDividerHeader(text: 'My Inventory', wantDivider: false),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: Dimensions.size15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Categories',
                        style: headline5.copyWith(fontWeight: FontWeight.bold, color: AppColors.tarnorFadeTextColor),
                      ),
                      // Row for Sort
                      Row(
                        children: [
                          Text(
                            'Sort',
                            style: headline5.copyWith(fontWeight: FontWeight.bold, color: AppColors.tarnorFadeTextColor),
                          ),
                          SizedBox(width: Dimensions.size3),
                          Icon(
                            Icons.sync_alt_outlined,
                            size: Dimensions.size18,
                            color: AppColors.tarnorFadeTextColor,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: Dimensions.size10),
                  child: Divider(height: Dimensions.size9, thickness: 2),
                ),
                SizedBox(height: Dimensions.size20),
                // Horizontal LIST of CARDS
                Container( 
                  height: Dimensions.size25*3,
                  padding: EdgeInsets.symmetric(horizontal: Dimensions.size10),
                  child: ListView.separated(
                    itemCount: 3, // productController.allProductsList.length,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (context, index) => SizedBox(width: Dimensions.size5),
                    itemBuilder: (context, index) {
                      // specific product for the current index
                      // var product = productController.allProductsList[index];
                      return InkWell(
                        // onTap: () => Get.to(InventoryDetailScreen(productModel: product)),
                        // child: Text(),InventoryItemCard(
                        //   itemName: product.name, // product's name 
                        //   quantity: product.unitAvailable.toString(), // product's quantity
                        // ),
                      );
                    },
                  ),
                ),
                SizedBox(height: Dimensions.size20),
                // Divider
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: Dimensions.size15),
                  child: Divider(height: Dimensions.size9, thickness: 2),
                ),
                // Expandable and Collapsable Widget
                ListView.separated(
                  itemCount: 33, //productController.allProductsList.length,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  separatorBuilder: (context, index) {
                    return Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: Dimensions.size15),
                          child: Divider(height: Dimensions.size9, thickness: 1),
                        ),
                        SizedBox(height: Dimensions.size5),
                      ],
                    );
                  },
                  itemBuilder: (context, index) {
                    // specific product for each index
                    // var product = productController.allProductsList[index];
                    return ExpansionTile(
                      title: Text(
                        'Aba',  //product.name, // product name
                        style: headline4.copyWith(color: AppColors.tarnorTextColor),
                      ),
                       // Getting each the each product's categories with List.generate()
                      children: List.generate(2, (index) {                       
                        // var category = product.colors[index];
                        return ListTile(
                          title: Text('Adama'),
                          onTap: (){},
                        );
                      }),
                    );
                  },
                ),
                // extra space at the screen end
                SizedBox(height: Dimensions.size60)           
              ],
            );
          }
        ),
      ),
      floatingActionButton: !(authController.currentUserData.isAdmin)? null : FloatingActionButton(
        elevation: 3,
        child: const Icon(Icons.add),
        onPressed: (){ 
          Get.toNamed(AddNewProductScreen.routeName);
        },
      ),
    );
  }
}