import 'package:flutter/material.dart';
import 'package:poc/widgets/main_drawer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      drawer: MainDrawer(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Teste Aqui',
            ),
            Text(
              '',
              style: Theme.of(context).textTheme.headline4,
            ),
            ElevatedButton(
                onPressed: () {
                  // var param = Map<String, String>();
                  // param["originTitle"] = "HomeScreen";

                  Navigator.of(context).pushNamed("/category",
                      arguments: {'originTitle': "HomeScreen"});
                },
                child: const Text("Tela de Categorias"))
          ],
        ),
      ),
    );
  }
}
