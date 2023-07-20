// ignore_for_file: unused_import

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:ondb/Screens/Add.dart';
import 'package:ondb/Screens/Details.dart';
import 'package:ondb/Screens/View.dart';
import 'package:ondb/Screens/view.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHome(),
    );
  }
}

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  Future<List> getdata() async {
    final Response = await http.get(Uri.parse(
        "https://databaserahul123.000webhostapp.com/Flutter%20Crud/view.php"));
    return jsonDecode(Response.body);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("json parsing"),
      ),
      body: FutureBuilder<List>(
        future: getdata(),
        builder: (cxt, ss) {
          if (ss.hasError) {
            print("Error");
          }
          if (ss.hasData) {
            return Item(list: ss.data!);
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (BuildContext context) => Add_Screen()));
      }),
    );
  }
}

// ignore: must_be_immutable
class Item extends StatelessWidget {
  List list;
  Item({required this.list});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      // ignore: unnecessary_null_comparison
      itemCount: list == null ? 0 : list.length,
      itemBuilder: (cxt, i) {
        return ListTile(
          title: Text(list[i]!["name"]),
          subtitle: Text(list[i]["email"]),
          leading: Text(list[i]["id"]),
          onTap: () => Navigator.of(context).push(MaterialPageRoute(
              builder: (BuildContext context) =>
                  Details(list: list, index: i))),
        );
      },
    );
  }
}
