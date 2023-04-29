import 'package:flutter/material.dart';

class list_ex extends StatefulWidget {
  const list_ex({super.key});

  @override
  State<list_ex> createState() => _list_exState();
}

class _list_exState extends State<list_ex> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Number And Name"),
        backgroundColor: Colors.deepPurple,
      ),
      body: ListView.builder(
          itemCount: 20,
          itemBuilder: (context, int index) {
            return Card(
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  index.toString(),
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                ),
              ),
            );
          }),
    );
    ;
  }
}
