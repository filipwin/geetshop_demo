import 'package:get/get.dart';
import 'package:getshop_demo/services/product/product_service.dart';

class ProductDetailsController extends GetxController {
  final ProductService productService;
  final int productId;

  ProductDetailsController(this.productService, {required this.productId});
}