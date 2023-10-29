import 'package:flutter/material.dart';

void main() { runApp(MyApp()); }
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: MyHomePage()
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  final List massages = [
    'Первый',
    'Второй',
    'Третий',
    'Четвертый',
    'Пятый',
    'Шестой',
    'Седьмой',
    'Восьмой',
    'Девятый',
    'Десятый',
  ];

  final List Rimlin = [
    'I',
    'II',
    'III',
    'IV',
    'V',
    'VI',
    'VII',
    'VIII',
    'IX',
    'X',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ListView'),
      centerTitle: true),
      body: ListView.builder(
          itemCount: massages.length,
          itemBuilder: (BuildContext, int index) {
            return Container(
              margin: EdgeInsets.all(8),
                height: 200,
                decoration:
                BoxDecoration(
                borderRadius: BorderRadius.circular(10),
            color: Colors.green),
                padding: EdgeInsets.symmetric(vertical: 10),
              child: Row(children: [
                Expanded(child: Padding(padding: EdgeInsets.only(left: 160, bottom: 130, top: 15), child: Text('${massages[index]}', style: TextStyle(fontSize: 24,), ),)),
                Container(child: Padding(padding: EdgeInsets.only(top: 140, right: 20, ), child: Text('${Rimlin[index]}', style: TextStyle(fontSize: 20),),))
              ]) ,
            );
          }),
    );

  }
}