import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getshop_demo/controllers/cart_controller.dart';

import '../data/product/product.dart';

class CartItemsList extends StatelessWidget {
  const CartItemsList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cartController = Get.find<CartController>();
    return Obx(
      () => Column(
        children: [
          const SizedBox(height: 8),
          const Text(
            'Cart ',
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Divider(height: 8),
          Flexible(
            child: ListView.separated(
              shrinkWrap: false,
              itemBuilder: (c, i) => CartListItem(item: cartController.cart[i]),
              separatorBuilder: (c, i) => const Divider(height: 2, thickness: 1.5),
              itemCount: cartController.cart.length,
            ),
          ),
          const Divider(height: 8),
          CartTotalValue(products: cartController.cart),
        ],
      ),
    );
  }
}

class CartListItem extends StatelessWidget {
  final Product item;

  const CartListItem({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Row(
        children: [
          Image.network(
            item.imageUrl,
            width: 60,
            height: 60,
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.name,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(fontSize: 16),
                ),
                Text(
                  '\$${item.price}',
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          IconButton(
            onPressed: _removeFromCart,
            icon: const Icon(Icons.remove_circle_outline_rounded),
          ),
        ],
      ),
    );
  }

  void _removeFromCart() {
    Get.find<CartController>().removeFromCart(item);
  }
}

class CartTotalValue extends StatelessWidget {
  final List<Product> products;

  const CartTotalValue({super.key, required this.products});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Total: \$${_getTotalValue()}',
            style: const TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
          ),
          TextButton(
            onPressed: _onOkClick,
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }

  double _getTotalValue() => products.fold(0.0, (previousValue, element) => previousValue + element.price);

  void _onOkClick() {
    Get.back();
  }
}
