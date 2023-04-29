import 'package:flutter/material.dart';

class ListView_example extends StatefulWidget {
  const ListView_example({super.key});

  @override
  State<ListView_example> createState() => _ListView_exampleState();
}

class _ListView_exampleState extends State<ListView_example> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListView"),
        backgroundColor: Colors.black12,
      ),
      body: ListView.builder(
          itemCount: 20,
          itemBuilder: (context, position) {
            return Card(
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  position.toString(),
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                ),
              ),
            );
          }),
    );
  }
}
