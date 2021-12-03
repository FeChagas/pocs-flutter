import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          const DrawerHeader(
              child: Text('teste texto'),
              decoration: BoxDecoration(color: Colors.pink)),
          ListTile(
              title: Text('Categoria'),
              onTap: () {
                Navigator.of(context).pushNamed("/category",
                    arguments: {'originTitle': "MainDrawer"});
              }),
          ListTile(
              title: const Text('Rota Inválida'),
              onTap: () {
                Navigator.of(context).pushNamed("/categories",
                    arguments: {'originTitle': "MainDrawer"});
              }),
          const ListTile(title: Text('Item 3')),
          const ListTile(title: Text('Item 4')),
          const ListTile(title: Text('Item 5')),
          const ListTile(title: Text('Item 6')),
          const ListTile(title: Text('Item 7')),
          const ListTile(title: Text('Item 8')),
          const ListTile(title: Text('Item 9')),
          const ListTile(title: Text('Item 10')),
          const ListTile(title: Text('Item 11')),
          const ListTile(title: Text('Item 12')),
          const ListTile(title: Text('Item 13')),
          const ListTile(title: Text('Item 14')),
          const ListTile(title: Text('Item 15')),
          const ListTile(title: Text('Item 16'))
        ],
      ),
    );
  }
}
