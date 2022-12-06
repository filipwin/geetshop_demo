import 'package:flutter/material.dart';

import '../components/category_button.dart';
import '../data/product/product_category.dart';

class CategoryListScreen extends StatelessWidget {
  static const route = '/';

  const CategoryListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CategoryButton(
          text: "Smartphones",
          color: Colors.amberAccent[100]!,
          category: ProductCategory.smartphone,
        ),
        CategoryButton(
          text: "TVs",
          color: Colors.green[300]!,
          category: ProductCategory.tv,
        ),
        CategoryButton(
          text: "Headphones",
          color: Colors.lightBlue[300]!,
          category: ProductCategory.headphone,
        ),
      ],
    );
  }
}
