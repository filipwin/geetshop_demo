import 'package:get/get.dart';

import '../data/product/product.dart';

class CartController extends GetxController {
  final _cart = <Product>[].obs;
  RxList<Product> get cart => _cart;

  void addToCart(Product product) => _cart.add(product);
  void removeFromCart(Product product) => _cart.remove(product);
}