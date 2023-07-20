import 'package:flutter/material.dart';

class Gallary extends StatelessWidget {
  const Gallary({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      appBar: AppBar(
          title: Center(
        child: Text(
          "Gallary",
          style: TextStyle(
              color: Colors.lime, fontSize: 30, fontWeight: FontWeight.bold),
        ),
      )),
    );
  }
}
