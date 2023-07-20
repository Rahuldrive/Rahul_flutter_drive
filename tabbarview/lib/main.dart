import 'package:flutter/material.dart';

import 'package:tabbarview/screens.dart/second.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
          length: 3,
          child: Scaffold(
            appBar: AppBar(
              bottom: TabBar(tabs: [
                Tab(
                  icon: Icon(Icons.add_alarm),
                ),
                Tab(
                  icon: Icon(Icons.phone),
                ),
                Tab(
                  icon: Icon(Icons.call),
                )
              ]),
              title: Text("Tab Bar"),
            ),
            body: TabBarView(children: [
              phone(),
            ]),
          )),
    );
  }
}
