// Alert box

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(colorSchemeSeed: Color(0xff6750a4), useMaterial3: true),
      home: Scaffold(
          appBar: AppBar(title: const Text('AlertDialog Box')),
          body: const Center(
            child: DilogExample(),
          )),
    );
  }
}

class DilogExample extends StatelessWidget {
  const DilogExample({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => showDialog<String>(
          context: context,
          builder: (BuildContext context) => AlertDialog(
                title: const Text("Alert Dilog title"),
                content: const Text("Alert Dilog description"),
                actions: <Widget>[
                  TextButton(
                    onPressed: () => Navigator.pop(context, 'Cancle'),
                    child: const Text("Cancle"),
                  ),
                  TextButton(
                    onPressed: () => Navigator.pop(context, 'OK'),
                    child: const Text("Ok"),
                  ),
                ],
              )),
      child: const Text("show Dialog"),
    );
  }
}
