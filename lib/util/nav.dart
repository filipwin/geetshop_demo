import 'package:get/get.dart';

abstract class Nav {
  Nav._();

  static const id = 123456;

  static Future<T?>? to<T>(dynamic page, {Bindings? binding}) {
    return Get.to<T>(
      page,
      id: id,
      binding: binding,
    );
  }
}
