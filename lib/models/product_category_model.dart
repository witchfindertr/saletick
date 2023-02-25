import 'package:saletick/models/product_model.dart';

class ProductCategoryModel {
  String category;
  List<ProductModel> products;

  ProductCategoryModel({required this.category, required this.products});
}