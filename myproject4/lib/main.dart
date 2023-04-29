import 'package:flutter/material.dart';

void main() {
  runApp(Songapp());
}

class Songapp extends StatelessWidget {
  const Songapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Song app"),
        ),
        body: Container(
          child: Row(
            children: [
              Container(
                height: 100,
                width: 200,
                color: Colors.brown,
                margin: EdgeInsets.all(20),
                padding: EdgeInsets.all(10),
                child: Row(
                  children: [
                    Icon(
                      Icons.call,
                      size: 50,
                      color: Colors.red,
                    ),
                    Icon(
                      Icons.route,
                      size: 50,
                      color: Colors.yellow,
                    ),
                    Icon(
                      Icons.share,
                      size: 50,
                      color: Colors.green,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
