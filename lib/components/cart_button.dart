import 'package:flutter/material.dart';

class CartButton extends StatelessWidget {
  const CartButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: _openCart,
      icon: const Icon(Icons.shopping_cart_outlined),
    );
  }

  void _openCart() {}
}
