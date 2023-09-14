import 'dart:math';

import 'package:flutter/material.dart';

class InkWell_Example extends StatefulWidget {
  @override
  State<InkWell_Example> createState() => _InkWell_ExampleState();
}

class _InkWell_ExampleState extends State<InkWell_Example> {
  Color _randomColor = Colors.blue;

  void_changeRandomColor() {
    setState(() {
      _randomColor = _getRandomColor();
    });
  }

  Color _getRandomColor() {
    Random random = Random();
    return Color.fromARGB(
      255,
      random.nextInt(256),
      random.nextInt(256),
      random.nextInt(256),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Random Color App'),
      ),
      body: Center(
        child: InkWell(
          onTap: void_changeRandomColor,
          child: Container(
            color: _randomColor,
            child: Text(
              'tap to change color',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
