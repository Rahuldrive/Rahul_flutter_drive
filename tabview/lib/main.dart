import 'package:flutter/material.dart';
import 'package:tabview/screens/Gallary.dart';
import 'package:tabview/screens/List.dart';
import 'package:tabview/screens/profile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
          length: 3,
          child: Scaffold(
            appBar: AppBar(
              bottom: TabBar(tabs: [
                Tab(
                  icon: Icon(Icons.list_sharp),
                ),
                Tab(
                  icon: Icon(Icons.photo_library),
                ),
                Tab(
                  icon: Icon(Icons.details),
                )
              ]),
              title: Text("Tab Bar"),
            ),
            body: TabBarView(children: [List(), Gallary(), Profile()]),
          )),
    );
  }
}
