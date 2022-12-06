import 'package:get/get.dart';
import 'package:getshop_demo/data/product/product_category.dart';
import 'package:getshop_demo/repositories/product_repository.dart';

import '../data/product/product.dart';

class ProductListController extends GetxController with StateMixin<List<Product>> {
  final ProductCategory category;
  final ProductRepository _productRepository;

  ProductListController(this._productRepository, {required this.category});

  @override
  void onInit() {
    fetchProducts(category);
    super.onInit();
  }

  Future<void> fetchProducts(ProductCategory category) async {
    change(null, status: RxStatus.loading());
    try {
      final data = await _productRepository.getProducts(category);
      change(data, status: RxStatus.success());
    } catch (e) {
      change(null, status: RxStatus.error(e.toString()));
    }
  }
}
