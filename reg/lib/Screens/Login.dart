import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:reg/Screens/Reg.dart';
import 'package:reg/Screens/home.dart';
import 'dart:convert';

class Login_Screen extends StatefulWidget {
  const Login_Screen({super.key});

  @override
  State<Login_Screen> createState() => _Login_ScreenState();
}

class _Login_ScreenState extends State<Login_Screen> {
  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 80, right: 25, left: 25),
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          Colors.deepPurple,
          Colors.blue,
          Colors.blueGrey,
          Colors.red
        ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(8),
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(color: Colors.white),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        prefixIcon: Icon(Icons.account_box),
                        hintText: "ID",
                        labelText: "ID"),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12)),
                        prefixIcon: Icon(Icons.remove_red_eye),
                        hintText: "password",
                        labelText: "password"),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        // ElevatedButton(
                        //     onPressed: () {
                        //       login();
                        //     },
                        //     child: Text("Login")),
                        MaterialButton(
                          color: Colors.red,
                          onPressed: () {
                            login();
                          },
                          child: Text("Signup"),
                        ),
                        ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          SignUp()));
                            },
                            child: Text("Register"))
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Future login() async {
    var url =
        "https://databaserahul123.000webhostapp.com/Flutter%20Crud/login.php";
    var response = await http.post(Uri.parse(url), body: {
      "email": email.text.toString(),
      "pass": pass.text.toString(),
    });

    var data = json.decode(response.body);

    if (data == 0) {
      print("fail2");
    } else {
      print("success2");
    }
  }
}
