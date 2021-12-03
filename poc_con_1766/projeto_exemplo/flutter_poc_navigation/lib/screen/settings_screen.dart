import 'package:flutter/material.dart';
import 'package:flutter_poc_navigation/components/main_drawer.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Tela de Configurações')),
        drawer: const MainDrawer(),
        body: Center(
            child: Column(
          mainAxisSize: MainAxisSize.min,
          children: const [
            Text('Configurações', style: TextStyle(fontSize: 30)),
          ],
        )));
  }
}
