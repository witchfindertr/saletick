import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:saletick/app_constants/app_colors.dart';
import 'package:saletick/app_constants/app_dimensions.dart';
import 'package:saletick/app_constants/custom_text_styles.dart';
import 'package:saletick/controllers/auth_controller.dart';
import 'package:saletick/controllers/product_controller.dart';
import 'package:saletick/custom_widgets/header/header_widget.dart';
import 'package:saletick/custom_widgets/lists/inventory_item_card.dart';
import 'package:saletick/custom_widgets/texts/text_n_divider_header.dart';
import 'package:saletick/screens/products/add_new_product.dart';
import 'package:saletick/screens/products/inventory_detail_screen.dart';


class InventoryListScreen extends StatelessWidget {
  const InventoryListScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    // instance of product controller
    ProductController productController = Get.find<ProductController>();

    // instance of auth controller
    AuthController authController = Get.find<AuthController>();

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Obx(() {
            return Column(
              children: [
                const HeaderWidget(),
                const TextnDividerHeader(text: 'My Inventory', wantDivider: false),
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
                    itemCount: productController.allProductsList.length,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (context, index) => SizedBox(width: Dimensions.size5),
                    itemBuilder: (context, index) {
                      // specific product for the current index
                      var product = productController.allProductsList[index];
                      return InkWell(
                        onTap: () => Get.to(InventoryDetailScreen(productModel: product)),
                        child: InventoryItemCard(
                          itemName: product.name, // product's name 
                          quantity: product.unitAvailable.toString(), // product's quantity
                        ),
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
                  itemCount: productController.allProductsList.length,
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
                    var product = productController.allProductsList[index];
                    return ExpansionTile(
                      title: Text(
                        product.name, // product name
                        style: headline4.copyWith(color: AppColors.tarnorTextColor),
                      ),
                       // Getting each the each product's categories with List.generate()
                      children: List.generate(product.categories.length, (index) {                       
                        var category = product.categories[index];
                        return ListTile(
                          title: Text(category),
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
      floatingActionButton: authController.currentUserData.isStaff? null : FloatingActionButton(
        elevation: 3,
        child: const Icon(Icons.add),
        onPressed: (){ 
          Get.toNamed(AddNewProductScreen.routeName);
        },
      ),
    );
  }
}