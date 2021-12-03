import 'package:flutter/material.dart';
import 'package:flutter_poc_navigation/route/route_generator.dart';
import 'package:flutter_poc_navigation/screen/not_found_screen.dart';

import './utils/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: Routes.HOME,
      onGenerateRoute: RouteGenerator.generateRoute,
      onUnknownRoute: (settings) =>
          MaterialPageRoute(builder: (context) => const NotFoundScreen()),
    );
  }
}
