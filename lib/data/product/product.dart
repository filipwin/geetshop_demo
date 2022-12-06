import 'package:getshop_demo/data/product/product_category.dart';

class Product {
  final int id;
  final ProductCategory category;
  final String name;
  final double price;
  final String description;
  final String imageUrl;
  final double starRating;

  Product({
    required this.id,
    required this.category,
    required this.name,
    required this.price,
    required this.description,
    required this.imageUrl,
    required this.starRating,
  });
}
