import 'package:get/get.dart';

import '../data/product/product.dart';

class CartController extends GetxController {
  final _cart = <Product>[].obs;
  RxList<Product> get cart => _cart;

  @override
  void onInit() {
    ever<List<Product>>(cart, (rx) => print("Number of items in cart: ${rx.length}"));
    super.onInit();
  }

  void addToCart(Product product) => _cart.add(product);
  void removeFromCart(Product product) => _cart.remove(product);
}