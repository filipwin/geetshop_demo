import 'package:flutter/material.dart';

import '../../../data/product/product.dart';

class AddToCartSection extends StatelessWidget {
  final Product product;

  const AddToCartSection({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          '\$${product.price}',
          style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        const SizedBox(width: 16),
        MaterialButton(
          onPressed: () {},
          color: Theme.of(context).primaryColor,
          shape: const StadiumBorder(),
          child: const Text("Add to cart"),
        ),
      ],
    );
  }
}
