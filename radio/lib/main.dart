import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  static const String _Title = "Flutter Code";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _Title,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(_Title),
        ),
        body: const Center(
          child: MyStatefulWidget(),
        ),
      ),
    );
  }
}

enum SingleCharacter { Rahul, Solanki }

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  SingleCharacter? _character = SingleCharacter.Rahul;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: const Text("Rahul"),
          leading: Radio<SingleCharacter>(
              value: SingleCharacter.Rahul,
              groupValue: _character,
              onChanged: (SingleCharacter? Value) {
                setState(() {
                  _character = Value;
                });
              }),
        ),
        ListTile(
          title: const Text("Solanki"),
          leading: Radio<SingleCharacter>(
              value: SingleCharacter.Solanki,
              groupValue: _character,
              onChanged: (SingleCharacter? Value) {
                setState(() {
                  _character = Value;
                });
              }),
        )
      ],
    );
  }
}
