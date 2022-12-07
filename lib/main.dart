import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getshop_demo/bindings/app_binding.dart';
import 'package:getshop_demo/ui/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Getshop',
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
      ),
      initialBinding: AppBinding(),
      home: HomeScreen(),
    );
  }
}
