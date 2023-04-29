//@dart=2.9

import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart'; //ctrl +. is for solution

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Splash Screen',
      theme: ThemeData.light(),
      home: Splash(),
    );
  }
}

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 3,
      navigateAfterSeconds: SecondScreen(),
      title: Text('Color', textScaleFactor: 2),
      backgroundColor: Colors.blue,
    );
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Color"),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              color: Colors.black,
            )
          ],
        ),
      ),
    );
  }
}
