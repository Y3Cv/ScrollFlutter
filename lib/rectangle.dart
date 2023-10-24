import 'package:flutter/material.dart';

class MyRectangle extends StatelessWidget {

  final String child;

  MyRectangle ({required this.child});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 200,
        color: Colors.green,
        child: Center(
            child: Text(
              child,
              style: TextStyle(fontSize: 35),
    ))));
  }
}
