import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Details extends StatefulWidget {
  List list;
  int index;
  Details({required this.list, required this.index});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${widget.list[widget.index]['Name']}'),
      ),
      body: Container(
        child: Column(
          children: [
            Text(
              widget.list[widget.index]['Name'],
              style: TextStyle(fontSize: 20),
            ),
            Text(
              widget.list[widget.index]['Email'],
              style: TextStyle(fontSize: 20),
            ),
            MaterialButton(child: Text("Edit"), onPressed: () {}),
            MaterialButton(child: Text("Delete"), onPressed: () {})
          ],
        ),
      ),
    );
  }
}
