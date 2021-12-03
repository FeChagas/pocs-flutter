import 'package:flutter/material.dart';

class CategoryScreen extends StatelessWidget {
  final String origin;

  const CategoryScreen({Key? key, required this.origin}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Tela de Categoria')),
        body: Center(
            child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('Tela de Categoria', style: TextStyle(fontSize: 40)),
            Text('Origem: $origin'),
          ],
        )));
  }
}
