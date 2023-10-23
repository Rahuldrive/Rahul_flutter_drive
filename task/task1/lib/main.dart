import 'package:flutter/material.dart';
import 'package:task1/Second_Screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TASK 1',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Second_Screen(),
    );
  }
}
