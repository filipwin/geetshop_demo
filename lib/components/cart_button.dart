import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getshop_demo/controllers/cart_controller.dart';

class CartButton extends StatelessWidget {
  const CartButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cartController = Get.find<CartController>();
    return Obx(
      () => IconButton(
        onPressed: _openCart,
        icon: Icon(cartController.cart.isEmpty ? Icons.shopping_cart_outlined : Icons.shopping_cart),
      ),
    );
  }

  void _openCart() {}
}
