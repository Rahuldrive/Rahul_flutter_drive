import 'package:flutter/material.dart';

class List extends StatelessWidget {
  const List({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(children: <Widget>[
      Container(
        height: 50,
        color: Colors.lime[800],
        child: const Center(child: Text('Rahul')),
      ),
      Container(
        height: 50,
        color: Colors.lime[800],
        child: const Center(child: Text('Parth  ')),
      ),
      Container(
        height: 50,
        color: Colors.lime[800],
        child: const Center(child: Text('Kishan')),
      ),
      Container(
        height: 50,
        color: Colors.lime[800],
        child: const Center(child: Text('Radha')),
      ),
      Container(
        height: 50,
        color: Colors.lime[800],
        child: const Center(child: Text('Gopi')),
      ),
    ]));
  }
}
