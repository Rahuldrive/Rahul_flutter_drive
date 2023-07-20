import 'package:flutter/material.dart';

void main() {
  runApp(Firstapp());
}

class Firstapp extends StatelessWidget {
  const Firstapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Firstapp"),
        ),
        body: Container(
          child: Text("This is my first app"),
        ),
      ),
    );
  }
}
