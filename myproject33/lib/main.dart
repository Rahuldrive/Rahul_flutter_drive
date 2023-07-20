//Write a code to display simple alert dialog with title, description and icon when button is clicked

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorSchemeSeed: Colors.amber,
        useMaterial3: true,
      ),
      home: Scaffold(
        body: const Center(
          child: Dilogexample(),
        ),
      ),
    );
  }
}

class Dilogexample extends StatelessWidget {
  const Dilogexample({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => showDialog<String>(
          context: context,
          builder: (BuildContext Context) => AlertDialog(
                title: const Text("Next Page"),
                content: const Text("Are you Sure?"),
                actions: <Widget>[
                  TextButton(
                      onPressed: () => Navigator.pop(context, 'Cancle'),
                      child: const Text("Cancle")),
                  TextButton(
                      onPressed: () => Navigator.pop(context, 'OK'),
                      child: const Text("Ok")),
                ],
              )),
      child: const Icon(Icons.mail),
    );
  }
}
