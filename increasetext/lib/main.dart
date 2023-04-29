import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double custFontsize = 20;
  void changeFontSize() async {
    setState(() {
      custFontsize += 2;
    });
  }

  double custFontdec = 20;
  void changeFontdec() async {
    setState(() {
      custFontsize -= 2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Tutorial'),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Text(
                'WELCOME TO FLUTTER',
                style: TextStyle(fontSize: custFontsize),
              ),
              ElevatedButton(
                onPressed: () {
                  changeFontSize();
                },
                child: Text('+'),
              ),
              ElevatedButton(
                onPressed: () {
                  changeFontdec();
                },
                child: Text('-'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
