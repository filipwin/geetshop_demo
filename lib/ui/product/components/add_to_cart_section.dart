import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getshop_demo/controllers/cart_controller.dart';

import '../../../data/product/product.dart';

class AddToCartSection extends StatelessWidget {
  final Product product;

  const AddToCartSection({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cartController = Get.find<CartController>();
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          '\$${product.price}',
          style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        const SizedBox(width: 16),
        Obx(
          () => cartController.cart.contains(product)
              ? MaterialButton(
                  onPressed: _removeFromCart,
                  color: Theme.of(context).errorColor,
                  shape: const StadiumBorder(),
                  child: const Text("Remove from cart"),
                )
              : MaterialButton(
                  onPressed: _addToCart,
                  color: Theme.of(context).primaryColor,
                  shape: const StadiumBorder(),
                  child: const Text("Add to cart"),
                ),
        ),
      ],
    );
  }

  void _addToCart() {
    Get.find<CartController>().addToCart(product);
  }

  void _removeFromCart() {
    Get.find<CartController>().removeFromCart(product);
  }
}
