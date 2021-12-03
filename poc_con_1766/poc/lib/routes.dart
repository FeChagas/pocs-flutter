import 'package:flutter/material.dart';
import './screens/home.dart';
import './screens/category.dart';
import './screens/not_found.dart';

class RoutesConfig {
  static Route<dynamic> createRoute(RouteSettings settings) {
    var routeName = settings.name;
    dynamic arguments = settings.arguments;

    switch (routeName) {
      case "/":
        return MaterialPageRoute(builder: (_) => HomeScreen(title: "Home"));

      case "/category":
        return MaterialPageRoute(
            builder: (_) =>
                CategoryScreen(originTitle: arguments['originTitle']));

      default:
        return MaterialPageRoute(builder: (_) => NotFoundScreen());
    }
  }
}




// static Route<dynamic> generateRoute(RouteSettings settings) {

// MaterialPageRoute(builder: (_) => const HomeScreen())