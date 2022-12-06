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
    Get.create<ProductService>(() => ProductMockService(), tag: "mock");
    Get.create(() => ProductRepository(Get.find(tag: "mock")));
    Get.create(() => ProductListController(Get.find(), category: category));
  }
}