import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getshop_demo/components/cart_items_list.dart';
import 'package:getshop_demo/controllers/cart_controller.dart';

import '../data/product/product.dart';
import 'cart_badge.dart';

class CartButton extends StatelessWidget {
  const CartButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cartController = Get.find<CartController>();
    return Obx(
      () => IconButton(
        onPressed: () => _openCart(cartController.cart),
        icon: Stack(
          children: [
            Align(
              alignment: Alignment.center,
              child: Icon(cartController.cart.isEmpty ? Icons.shopping_cart_outlined : Icons.shopping_cart),
            ),
            if (cartController.cart.isNotEmpty) CartBadge(number: cartController.cart.length),
          ],
        ),
      ),
    );
  }

  void _openCart(List<Product> products) {
    Get.dialog(
      Dialog(
        insetPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
        child: SizedBox(
          height: Get.mediaQuery.size.height * 0.75,
          child: const CartItemsList(),
        ),
      ),
    );
  }
}
