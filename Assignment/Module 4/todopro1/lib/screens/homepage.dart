import 'package:flutter/material.dart';

class Home_Page extends StatefulWidget {
  const Home_Page({super.key});

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  List<Map<String, dynamic>> mydata = [];

  TextEditingController titlecontroller = TextEditingController();
  TextEditingController descriptioncontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Center(
            child: Text(
          "Notes",
          style: TextStyle(color: Colors.black, fontSize: 25),
        )),
      ),
      body: ListView(padding: EdgeInsets.all(15), children: [
        TextField(
          controller: titlecontroller,
          decoration: InputDecoration(hintText: 'Title'),
        ),
        SizedBox(
          height: 20,
        ),
        TextField(
          controller: descriptioncontroller,
          decoration: InputDecoration(
            hintText: 'Description',
          ),
          minLines: 5,
          maxLines: 8,
          keyboardType: TextInputType.multiline,
        ),
        SizedBox(
          height: 20,
        ),
        ElevatedButton(onPressed: () {}, child: Text("Save"))
      ]),
    );
  }
}
