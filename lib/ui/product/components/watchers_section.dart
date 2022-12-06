import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getshop_demo/controllers/product_details_controller.dart';

class WatchersSection extends StatelessWidget {
  const WatchersSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final detailsController = Get.find<ProductDetailsController>();
    return Obx(
      () => Text(
        'Number of people watching this product: ${detailsController.watchers}',
        style: const TextStyle(fontSize: 12, color: Colors.grey),
      ),
    );
  }
}
