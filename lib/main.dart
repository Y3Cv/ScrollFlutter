import 'package:flutter/material.dart';

import 'rectangle.dart';

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
    'massage 1',
    'massage 2',
    'massage 3',
    'massage 4',
    'massage 5',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: massages.length,
          itemBuilder: (context, index) {
            return MyRectangle(child: massages[index],);
          }),
    );
  }
}