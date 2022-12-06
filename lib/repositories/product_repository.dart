import 'package:getshop_demo/data/product/product.dart';
import 'package:getshop_demo/data/product/product_category.dart';
import 'package:getshop_demo/services/product/product_service.dart';

class ProductRepository {
  final ProductService _service;

  ProductRepository(this._service);

  Future<List<Product>> getProducts(ProductCategory category) => _service.getProducts(category);
  Stream<int> getWatchers(int productId) => _service.getWatchers(productId);
}