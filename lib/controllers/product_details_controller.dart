import 'package:get/get.dart';
import 'package:getshop_demo/repositories/product_repository.dart';

class ProductDetailsController extends GetxController {
  final ProductRepository productRepository;
  final int productId;

  var watchers = 1.obs;

  ProductDetailsController(this.productRepository, {required this.productId});

  @override
  void onInit() {
    watchers.bindStream(productRepository.getWatchers(productId));
    super.onInit();
  }
}
