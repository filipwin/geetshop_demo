import 'package:get/get.dart';
import 'package:getshop_demo/data/product/product_category.dart';

import '../controllers/product_list_controller.dart';
import '../repositories/product_repository.dart';
import '../services/product/product_mock_service.dart';
import '../services/product/product_service.dart';

class ProductListBinding extends Bindings {
  final ProductCategory category;

  ProductListBinding({required this.category});

  @override
  void dependencies() {
    Get.lazyPut<ProductService>(() => ProductMockService(), tag: "mock");
    Get.lazyPut(() => ProductRepository(Get.find(tag: "mock")));
    Get.lazyPut(() => ProductListController(Get.find(), category: category));
  }
}