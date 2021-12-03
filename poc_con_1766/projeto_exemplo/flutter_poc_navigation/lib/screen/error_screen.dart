import 'package:flutter/material.dart';

class ErrorScreen extends StatelessWidget {
  const ErrorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Tela de Erro')),
        body: Center(
            child: Column(
          mainAxisSize: MainAxisSize.min,
          children: const [
            Text('Desculpe, ocorreu um erro inesperado.',
                style: TextStyle(fontSize: 30)),
          ],
        )));
  }
}
