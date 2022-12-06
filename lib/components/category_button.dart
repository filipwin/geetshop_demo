import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getshop_demo/bindings/product_list_binding.dart';
import 'package:getshop_demo/data/product/product_category.dart';
import 'package:getshop_demo/ui/product/product_list_screen.dart';
import 'package:getshop_demo/util/nav.dart';

class CategoryButton extends StatelessWidget {
  final String text;
  final Color color;
  final ProductCategory category;

  const CategoryButton({
    Key? key,
    required this.text,
    required this.color,
    required this.category,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Material(
        color: color,
        child: InkWell(
          onTap: _openProductList,
          child: Center(
            child: Text(
              text,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _openProductList() {
    Get.to(
      const ProductListScreen(),
      id: Nav.id,
      binding: ProductListBinding(category: category),
    );
  }
}
