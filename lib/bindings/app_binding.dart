import 'package:get/get.dart';
import 'package:getshop_demo/controllers/cart_controller.dart';

class AppBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CartController());
  }
}