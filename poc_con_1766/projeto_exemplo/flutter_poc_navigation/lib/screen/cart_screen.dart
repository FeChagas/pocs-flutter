import 'package:flutter/material.dart';
import 'package:flutter_poc_navigation/utils/routes.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Carrinho')),
        body: Center(
            child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('Tela do Carrinho', style: TextStyle(fontSize: 40)),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop(Routes.CART);
                },
                child: const Text('Voltar para Home')),
          ],
        )));
  }
}
