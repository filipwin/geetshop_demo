import 'package:flutter/material.dart';
import 'package:getshop_demo/ui/product/components/add_to_cart_section.dart';

import '../../../data/product/product.dart';

class ProductDetailsScreen extends StatelessWidget {
  final Product product;

  const ProductDetailsScreen({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(32),
        color: Colors.white,
        child: Column(
          children: [
            Image.network(
              product.imageUrl,
              width: MediaQuery.of(context).size.width * 0.8,
            ),
            const SizedBox(height: 32),
            Text(
              product.name,
              style: const TextStyle(fontSize: 32),
            ),
            AddToCartSection(product: product),
            const SizedBox(height: 16),
            Text(
              product.description,
              style: const TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
