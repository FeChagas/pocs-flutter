import 'package:flutter/material.dart';
import 'package:flutter_poc_navigation/components/main_drawer.dart';
import 'package:flutter_poc_navigation/utils/routes.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String _return = '-';

  void setReturn(String screenReturn) {
    setState(() {
      _return = screenReturn;
    });
  }

  _commonScreens(context) {
    return [
      const Text('Telas Comuns', style: TextStyle(fontSize: 20)),
      const SizedBox(height: 20),
      ElevatedButton(
          onPressed: () {
            Navigator.of(context).pushNamed(Routes.CATEGORY, arguments: 'Home');
          },
          child: const Text('Categoria')),
      ElevatedButton(
          onPressed: () {
            Navigator.of(context).pushNamed(Routes.SHOP, arguments: 'Home');
          },
          child: const Text('Loja')),
    ];
  }

  _returnScreens(context) {
    return [
      const SizedBox(height: 20),
      const Text(
        'Telas com Retorno',
        style: TextStyle(fontSize: 20),
      ),
      const SizedBox(height: 10),
      Text('Retorno: $_return'),
      const SizedBox(height: 10),
      ElevatedButton(
          onPressed: () {
            Navigator.of(context).pushNamed(Routes.SALES).then((result) => {
                  if (result != null) {setReturn('$result')}
                });
          },
          child: const Text('Ofertas')),
      ElevatedButton(
          onPressed: () {
            Navigator.of(context).pushNamed(Routes.CART).then((result) => {
                  if (result != null) {setReturn('$result')}
                });
          },
          child: const Text('Carrinho')),
    ];
  }

  _otherScreens(context) {
    return [
      const SizedBox(height: 20),
      const Text(
        'Otras Telas',
        style: TextStyle(fontSize: 20),
      ),
      const SizedBox(height: 10),
      ElevatedButton(
          onPressed: () {
            Navigator.of(context).pushNamed(Routes.CATEGORY);
          },
          child: const Text('Tela com Erro')),
      ElevatedButton(
          onPressed: () {
            Navigator.of(context).pushNamed('not_found');
          },
          child: const Text('Tela Não Encontrada')),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Home Screen')),
        drawer: const MainDrawer(),
        body: Center(
            child: Column(
          mainAxisSize: MainAxisSize.min,
          children: _commonScreens(context) +
              _returnScreens(context) +
              _otherScreens(context),
        )));
  }
}
