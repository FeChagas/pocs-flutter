import 'package:flutter/material.dart';
import 'package:flutter_poc_navigation/screen/cart_screen.dart';
import 'package:flutter_poc_navigation/screen/category_screen.dart';
import 'package:flutter_poc_navigation/screen/error_screen.dart';
import 'package:flutter_poc_navigation/screen/home_screen.dart';
import 'package:flutter_poc_navigation/screen/not_found_screen.dart';
import 'package:flutter_poc_navigation/screen/sales_screen.dart';
import 'package:flutter_poc_navigation/screen/settings_screen.dart';
import 'package:flutter_poc_navigation/screen/shop_screen.dart';
import 'package:flutter_poc_navigation/utils/routes.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case Routes.HOME:
        return MaterialPageRoute(builder: (_) => const HomeScreen());

      case Routes.SETTINGS:
        return MaterialPageRoute(builder: (_) => const SettingsScreen());

      case Routes.CATEGORY:
        if (args is String) {
          return MaterialPageRoute(
              builder: (_) => CategoryScreen(origin: args));
        }
        return _errorRoute();

      case Routes.SHOP:
        if (args is String) {
          return MaterialPageRoute(builder: (_) => ShopScreen(origin: args));
        }
        return _errorRoute();

      case Routes.SALES:
        return MaterialPageRoute(builder: (_) => const SalesScreen());

      case Routes.CART:
        return MaterialPageRoute(builder: (_) => const CartScreen());

      default:
        return MaterialPageRoute(builder: (_) => const NotFoundScreen());
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) => const ErrorScreen());
  }
}
