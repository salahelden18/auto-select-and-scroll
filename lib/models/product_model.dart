class ProductModel {
  final int id;
  final int categoryId;
  final String title;
  final double price;
  final String imageUrl;

  ProductModel(
      {required this.id,
      required this.categoryId,
      required this.title,
      required this.price,
      required this.imageUrl});
}
