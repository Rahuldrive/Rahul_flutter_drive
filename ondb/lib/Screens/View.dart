// ignore_for_file: duplicate_import, unnecessary_null_comparison

import 'package:flutter/material.dart';
import 'package:ondb/Screens/Details.dart';
import 'Details.dart';

// ignore: must_be_immutable
class Item extends StatelessWidget {
  List list;

  Item({required this.list});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: list == null ? 0 : list.length,
        itemBuilder: (cxt, i) {
          return ListTile(
            title: Text(list[i]["Name"]),
            subtitle: Text(list[i]["Email"]),
            leading: Text(list[i]["Id"]),
            onTap: () => Navigator.of(context).push(MaterialPageRoute(
                builder: (BuildContext context) =>
                    Details(list: list, index: i))),
          );
        });
  }
}
