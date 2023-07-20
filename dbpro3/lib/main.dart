import 'package:dbpro3/Screen/Note_Screen2.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter local databse demo app',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const NoteScreen(),
    );
  }
}
