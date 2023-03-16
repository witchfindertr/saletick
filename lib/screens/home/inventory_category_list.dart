import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:saletick/controllers/auth_controller.dart';
import 'package:saletick/controllers/product_controller.dart';
import 'package:saletick/custom_widgets/footer/saletick_floatinActButton.dart';
import 'package:saletick/custom_widgets/header/header_one_widget.dart';
import 'package:saletick/custom_widgets/footer/saletick_bottom_nav_bar.dart';
import 'package:saletick/custom_widgets/inputs/search_input_widget.dart';
import 'package:saletick/app_constants/app_colors.dart';
import 'package:saletick/app_constants/app_dimensions.dart';
import 'package:saletick/app_constants/custom_text_styles.dart';
import 'package:saletick/app_constants/dimensions2.dart';
import 'package:saletick/screens/products/inventory_detail_screen.dart';
import 'package:saletick/utilities/utils.dart';


class InventoryCategoryListScreen extends StatefulWidget {

  static const String routeName = '/home';

  @override
  State<InventoryCategoryListScreen> createState() => _InventoryCategoryListScreenState();
}

class _InventoryCategoryListScreenState extends State<InventoryCategoryListScreen> {

  // instance of product controller
  ProductController productController = Get.find<ProductController>();

  // instance of auth controller
  var authController = Get.find<AuthController>();

    @override
  void initState() {
    if(productController.allProductsCategoryList.isEmpty){
      productController.getAllProducts(authController.currentUserData.isAdmin);
      productController.getAllTransactionsData(authController.currentUserData.isAdmin);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
 
    return Scaffold(
      backgroundColor: Colors.white,
      body: RefreshIndicator(
        onRefresh:() async {
          productController.getAllProducts(authController.currentUserData.isAdmin);
          productController.getAllTransactionsData(authController.currentUserData.isAdmin);
          print("Hello");
        },
        child: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          child: Obx(() {
              return Column(
                children: [
                  const SaletickHeaderOne(headerOneTitleText: 'Inventory'),
                  SizedBox(height: Dimensions.size50),
                  // Custom search widget here
                  SearchInputWidget(onTapped: (){}),
                  // Texts: Categories .... Add new
                  Container(
                    margin: EdgeInsets.fromLTRB(11*Dimensions2.fem, 0*Dimensions2.fem, 20*Dimensions2.fem, 11*Dimensions2.fem),
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // categories
                          margin: EdgeInsets.fromLTRB(0*Dimensions2.fem, 2*Dimensions2.fem, 175*Dimensions2.fem, 0*Dimensions2.fem),
                          child: Text(
                            'Categories',
                            style: SafeGoogleFont (
                              'Poppins',
                              fontSize: 20*Dimensions2.ffem,
                              fontWeight: FontWeight.w700,
                              height: 1.5*Dimensions2.ffem/Dimensions2.fem,
                              color: Color(0xff57336a),
                            ),
                          ),
                        ),
                        Container(
                          // add new
                          margin: EdgeInsets.fromLTRB(0*Dimensions2.fem, 2*Dimensions2.fem, 5*Dimensions2.fem, 0*Dimensions2.fem),
                          child: Text(
                            'Add New',
                            style: SafeGoogleFont (
                              'Poppins',
                              fontSize: 9*Dimensions2.ffem,
                              fontWeight: FontWeight.w700,
                              height: 1.5*Dimensions2.ffem/Dimensions2.fem,
                              color: Color(0xff430463),
                            ),
                          ),
                        ),
                        // The add icon
                        Text(
                          '+',
                          style: SafeGoogleFont (
                            'Poppins',
                            fontSize: 25*Dimensions2.ffem,
                            fontWeight: FontWeight.w500,
                            height: 1.5*Dimensions2.ffem/Dimensions2.fem,
                            color: Color(0xff430463),
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Expandable and Collapsable Widget
                  ListView.separated(
                    itemCount: productController.allProductsCategoryList.length,
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
                      // recent category stays at the top
                      var rearrangedCategoryList = productController.allProductsCategoryList.reversed.toList();
                      // specific product for each index
                      var pc = rearrangedCategoryList[index];
                      return ExpansionTile(
                        title: Text(
                          pc.category, // 'AkaPr' 
                          style: headline5.copyWith(
                            color: AppColors.tarnorTextColor,
                            fontSize: Dimensions.size20
                          ),
                        ),
                          // Getting each the each product's categories with List.generate()
                        children: List.generate(pc.products.length, (index) { 
                          // rearrange, so that the latest product will appear first
                          var rearrangedProductList = pc.products.reversed.toList(); 
                          //  products associated with this category: 'pc'                    
                          var product = rearrangedProductList[index]; 
                          return Padding(
                            padding: EdgeInsets.symmetric(horizontal: Dimensions.size15),
                            child: Column(
                              children: [
                                ListTile(
                                  title: Text(
                                    product.name, // 'Clintin Sheet',
                                     style: SafeGoogleFont (
                                      'Poppins',
                                      fontWeight: FontWeight.w400,
                                      height: 1.5*Dimensions2.ffem/Dimensions2.fem,
                                      color: index.isEven? const Color(0xff57336a) : Colors.white,
                                    ),
                                  ),
                                  trailing: Icon(
                                    Icons.more_vert,
                                    color: index.isEven? const Color(0xff57336a) : Colors.white,
                                  ),
                                  tileColor: index.isEven? AppColors.inputFillColor : Colors.teal.shade200,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(7)
                                  ),
                                  onTap: (){
                                    Get.to(InventoryDetailScreen(currentProduct: product));
                                  },
                                ),
                                SizedBox(height: Dimensions.size3)
                              ],
                            ),
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
      ),
      bottomNavigationBar: const SaletickBottomNavBar(isInventory: true),
      floatingActionButton: const SaletickFloatingActionButton(isAddSale: true, isAddToInventory: true, isSettings: true,),
    );
  }
}
