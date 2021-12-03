import 'package:flutter/material.dart';

class NotFoundScreen extends StatelessWidget {
  const NotFoundScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Não Encontrado')),
        body: Center(
            child: Column(
          mainAxisSize: MainAxisSize.min,
          children: const [
            Text('Tela não encontrada', style: TextStyle(fontSize: 40))
          ],
        )));
  }
}
