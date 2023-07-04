import 'package:flutter/material.dart';

class Home_Page extends StatefulWidget {
  const Home_Page({super.key});

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(168, 248, 240, 6),
        title: Text("Sophie's Word"),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.only(top: 40),
          children: [
            ListTile(
              leading: Icon(Icons.add),
              title: Text("Add Word"),
              onTap: () {
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          TextField(
            decoration: InputDecoration(hintText: 'Word'),
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            decoration: InputDecoration(
              hintText: 'Meaning Of Word',
            ),
            keyboardType: TextInputType.multiline,
            maxLines: 8,
            minLines: 4,
          ),
          ElevatedButton(onPressed: () {}, child: Text("Save"))
        ],
      ),
    );
  }
}
