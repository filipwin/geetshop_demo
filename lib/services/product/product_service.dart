import 'package:getshop_demo/data/product/product.dart';

import '../../data/product/product_category.dart';

abstract class ProductService {
  Future<List<Product>> getProducts(ProductCategory category);
  Stream<int> getWatchers(int productId);
}