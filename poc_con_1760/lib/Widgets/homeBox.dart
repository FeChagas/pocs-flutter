import 'package:flutter/material.dart';

class HomeBox extends StatelessWidget {
  HomeBox({
    required this.onPress,
    required this.title,
  });
  //const HomeBox({Key? key}) : super(key: key);
  Function onPress;
  var title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: 250,
      child: Row(
        children: [
          Card(
            elevation: 5,
            child: Column(
              children: [
                Text(title),
                IconText(
                    icon: Icon(
                      Icons.favorite,
                      color: Colors.pink,
                      size: 24.0,
                      semanticLabel: 'Text to announce in accessibility modes',
                    ),
                    text: Text('Shopping RioMar Recife')),
                IconText(
                    icon: Icon(
                      Icons.favorite,
                      color: Colors.pink,
                      size: 24.0,
                      semanticLabel: 'Text to announce in accessibility modes',
                    ),
                    text: Text('220 pontos por cupom')),
                IconText(
                    icon: Icon(
                      Icons.favorite,
                      color: Colors.pink,
                      size: 24.0,
                      semanticLabel: 'Text to announce in accessibility modes',
                    ),
                    text: Text('Sorteio em 18/11/2021)'))
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class IconText extends StatelessWidget {
  IconText({required this.icon, required this.text});

  Icon icon;
  Text text;

  @override
  Widget build(BuildContext context) {
    return Row(children: [icon, text]);
  }
}
