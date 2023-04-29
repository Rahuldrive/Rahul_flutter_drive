import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double _fontSize = 16; // Initial Font Size
  void increasesize() {
    setState(() {
      _fontSize += 2.0;
    });
  }

  void decreasesize() {
    setState(() {
      _fontSize -= 2.0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Font Size Changer',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Font Changer'),
        ),
        body: Center(
          child: Column(
            children: [
              Text(
                'Change Font Size Using the below Buttons',
                style: TextStyle(fontSize: _fontSize),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      onPressed: decreasesize, child: Icon(Icons.remove)),
                  SizedBox(
                    width: 20,
                  ),
                  ElevatedButton(
                      onPressed: increasesize, child: Icon(Icons.add)),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
