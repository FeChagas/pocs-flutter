import 'package:flutter/material.dart';

class ShopScreen extends StatelessWidget {
  final String origin;

  const ShopScreen({Key? key, required this.origin}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Tela da Loja')),
        body: Center(
            child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('Tela da Loja', style: TextStyle(fontSize: 40)),
            Text('Origem: $origin')
          ],
        )));
  }
}
