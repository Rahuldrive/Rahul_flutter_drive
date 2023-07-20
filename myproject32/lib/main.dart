// Linear gradient

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            Colors.red,
            Colors.purple,
            Colors.pink,
            Colors.green,
            Colors.yellow,
            Colors.teal
          ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
        ),
      ),
    );
  }
}
