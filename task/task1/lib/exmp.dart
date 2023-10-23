import 'package:flutter/material.dart';

class expmle extends StatelessWidget {
  var name;
  var age;
  var email;
  expmle({required this.name, required this.age, required this.email});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(),
      bottomSheet: Container(
        height: 100,
        width: MediaQuery.of(context).size.width * 100,
        decoration: BoxDecoration(color: Colors.white),
        child: Column(
          children: [Text("$name"), Text("$age"), Text("$email")],
        ),
      ),
    );
  }
}
