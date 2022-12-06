import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getshop_demo/controllers/product_list_controller.dart';
import 'package:getshop_demo/ui/product/components/product_list.dart';

class ProductListScreen extends StatelessWidget {

  const ProductListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final productListController = Get.find<ProductListController>();
    return Container(
      color: Colors.white,
      child: productListController.obx(
        (state) => ProductList(products: state ?? []),
        onError: (e) => const Center(
          child: Text('Failed loading product list'),
        ),
        onLoading: const Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
