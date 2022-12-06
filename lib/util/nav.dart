import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

abstract class Nav {
  Nav._();

  static const id = 123456;

  static Future<T?>? to<T>(Widget page, {Bindings? binding}) {
    return Get.to<T>(
      () => page,
      id: id,
      binding: binding,
    );
  }
}
