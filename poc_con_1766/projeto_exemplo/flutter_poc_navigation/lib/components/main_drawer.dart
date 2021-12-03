import 'package:flutter/material.dart';
import 'package:flutter_poc_navigation/utils/routes.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            height: 120,
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            alignment: Alignment.bottomRight,
            color: Colors.blue,
            child: const Text(
              'Drawer',
              style: TextStyle(fontWeight: FontWeight.w900, fontSize: 30),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushReplacementNamed(Routes.HOME);
              },
              child: const Text('Home')),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context)
                    .pushNamed(Routes.CATEGORY, arguments: 'Drawer');
              },
              child: const Text('Categoria')),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context)
                    .pushNamed(Routes.SHOP, arguments: 'Drawer');
              },
              child: const Text('Loja')),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushReplacementNamed(Routes.SETTINGS);
              },
              child: const Text('Configurações')),
        ],
      ),
    );
  }
}
