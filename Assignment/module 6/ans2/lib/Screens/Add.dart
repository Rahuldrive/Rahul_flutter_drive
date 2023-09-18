import 'package:flutter/material.dart';

import '../main.dart';

class Add_Screen extends StatefulWidget {
  const Add_Screen({super.key});

  @override
  State<Add_Screen> createState() => _Add_ScreenState();
}

class _Add_ScreenState extends State<Add_Screen> {
  TextEditingController Name = TextEditingController();
  TextEditingController Surname = TextEditingController();
  TextEditingController email = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        margin: EdgeInsets.only(top: 40),
        child: Column(
          children: [
            TextField(
              controller: Name,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25)),
                  hintText: 'Name',
                  labelText: 'Name'),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: Surname,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25)),
                  hintText: 'Surname',
                  labelText: 'Surname'),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: email,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25)),
                  hintText: 'email',
                  labelText: 'email'),
            ),
            SizedBox(
              height: 20,
            ),
            MaterialButton(
              color: Colors.red,
              minWidth: double.maxFinite,
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => MyHome()));
              },
              child: Text("Add Data"),
            )
          ],
        ),
      ),
    );
  }

  void insertdata() {
    var url =
        "https://databaserahul123.000webhostapp.com/Flutter%20Crud/inser.php";
    http.post(Uri.parse(url), body: {
      "name": Name.text.toString(),
      "surname": Surname.text.toString(),
      "email": email.text.toString()
    });
  }
}
