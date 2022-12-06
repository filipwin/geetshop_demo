import 'package:get/get.dart';

import '../controllers/product_details_controller.dart';
import '../repositories/product_repository.dart';
import '../services/product/product_mock_service.dart';
import '../services/product/product_service.dart';

class ProductDetailsBinding extends Bindings {
  final int productId;

  ProductDetailsBinding({required this.productId});

  @override
  void dependencies() {
    Get.create<ProductService>(() => ProductMockService(), tag: "mock");
    Get.create(() => ProductRepository(Get.find(tag: "mock")));
    Get.create(() => ProductDetailsController(Get.find(), productId: productId));
  }
}