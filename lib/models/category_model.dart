import 'package:auto_select_and_scroll/models/product_model.dart';

class CategoryModel {
  final int id;
  final String title;
  final List<ProductModel> products;

  CategoryModel(
      {required this.id, required this.title, required this.products});
}
