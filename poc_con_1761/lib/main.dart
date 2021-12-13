import 'package:flutter/material.dart';
import 'Widgets/homeBox.dart';
import 'Services/api.dart';
import 'package:poc_con_1760/Models/event.dart';
import 'dart:convert';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Future<List<Event>>? _fetchEvents;

  @override
  void initState() {
    _fetchEvents = fetchEvents();
    super.initState();
    // fetchEvents().then((events) {
    //   setState(() {
    //     _fetchEvents = events;
    //   });
    // });
  }

  // @override
  // didUpdateWidget() {
  //   _fetchEvents = fetchEvents();
  //   super.didUpdateWidget();
  // }

  /*child: FutureBuilder<tipo>(
    future: nomvaVariavel,
    builder: (context, snapshot) {
      if(snapshot.hasData){
        //acao aqui
      }else if( snapshot. hassError){
        // outra cao aqui
      }else{
        return CircularProgressIndicator()
      }
    }
  )*/

//   ListView.builder(
//   padding: const EdgeInsets.all(8),
//   itemCount: entries.length,
//   itemBuilder: (BuildContext context, int index) {
//     return Container(
//       height: 50,
//       color: Colors.amber[colorCodes[index]],
//       child: Center(child: Text('Entry ${entries[index]}')),
//     );
//   }
// );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        decoration: BoxDecoration(color: Colors.red),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
                child: FutureBuilder<List<Event>>(
                    future: _fetchEvents,
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        return ListView.builder(
                          itemCount: snapshot.data?.length,
                          itemBuilder: (BuildContext context, int index) {
                            return HomeBox(
                              title: snapshot.data?[index].title,
                              onPress: () {},
                              imageUrl:
                                  'http://10.0.2.2/${snapshot.data?[index].cover}',
                            );
                          },
                        );
                      } else if (snapshot.hasError) {
                        print(snapshot);
                      }

                      return Center(
                        child: const CircularProgressIndicator(),
                      );
                    }))
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _incrementCounter,
      //   tooltip: 'Increment',
      //   child: Icon(Icons.add),
      // ),
    );
  }
}
