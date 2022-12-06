import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getshop_demo/ui/category_list_screen.dart';
import 'package:getshop_demo/util/nav.dart';

import '../components/cart_button.dart';

class HomeScreen extends StatelessWidget {
  final navigatorKey = Get.nestedKey(Nav.id);

  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Getshop'),
          actions: const [
            CartButton(),
          ],
        ),
        body: WillPopScope(
          onWillPop: _handleBackClick,
          child: Navigator(
            key: navigatorKey,
            initialRoute: CategoryListScreen.route,
            onGenerateRoute: _handleNavigation,
          ),
        )
      ),
    );
  }

  Future<bool> _handleBackClick() {
    if (navigatorKey?.currentState?.canPop() == true) {
      navigatorKey?.currentState?.pop();
      return Future.value(false);
    } else {
      return Future.value(true);
    }
  }

  PageRoute _handleNavigation(RouteSettings route) {
    late Widget page;
    if (route.name == CategoryListScreen.route) {
      page = const CategoryListScreen();
    }

    return MaterialPageRoute(builder: (c) => page);
  }
}
