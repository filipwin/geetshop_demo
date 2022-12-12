import 'package:get/get.dart';

import '../data/product/product.dart';

class CartController extends GetxController {
  final cart = <Product>[].obs;

  @override
  void onInit() {
    ever<List<Product>>(cart, (rx) => print("Number of items in cart: ${rx.length}"));
    super.onInit();
  }
}
