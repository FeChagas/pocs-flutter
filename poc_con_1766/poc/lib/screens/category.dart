import 'package:flutter/material.dart';

class CategoryScreen extends StatelessWidget {
  // const ({ Key? key, required this.originTitle }) : super(key: key);

  String originTitle = "";

  CategoryScreen({originTitle}) {
    this.originTitle = originTitle;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Categoria")),
      body: Container(child: Text(originTitle)),
    );
  }
}
