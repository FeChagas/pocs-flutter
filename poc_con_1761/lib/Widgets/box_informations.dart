import 'package:flutter/material.dart';
import 'package:poc_con_1760/Widgets/homeBox.dart';

class BoxInformations extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 8, top: 8),
            child: IconText(
                icon: Icon(
                  Icons.place_outlined,
                  color: Colors.pink,
                  size: 24.0,
                  semanticLabel:
                      'Text sssss to announce in accessibility modes',
                ),
                text: Text('Shopping RioMar Recife')),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: IconText(
                icon: Icon(
                  Icons.airplane_ticket_outlined,
                  color: Colors.pink,
                  size: 24.0,
                  semanticLabel: 'Text to announce in accessibility modes',
                ),
                text: Text('220 pontos por cupom')),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: IconText(
                icon: Icon(
                  Icons.calendar_today_outlined,
                  color: Colors.pink,
                  size: 24.0,
                  semanticLabel: 'Text to announce in accessibility modes',
                ),
                text: Text('Sorteio em 18/11/2021')),
          )
        ],
      ),
    );
  }
}
