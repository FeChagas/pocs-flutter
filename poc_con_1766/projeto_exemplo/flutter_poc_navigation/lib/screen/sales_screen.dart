import 'package:flutter/material.dart';
import 'package:flutter_poc_navigation/utils/routes.dart';

class SalesScreen extends StatelessWidget {
  const SalesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Tela de Ofertas')),
        body: Center(
            child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('Tela de Ofertas', style: TextStyle(fontSize: 40)),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop(Routes.SALES);
                },
                child: const Text('Voltar para Home')),
          ],
        )));
  }
}
