import 'package:flutter/material.dart';

import 'package:myproject15/second.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    "https://cdn.pixabay.com/photo/2013/10/02/23/03/mountains-190055_960_720.jpg"),
                fit: BoxFit.cover)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                    width: 4.0,
                  ),
                  borderRadius: BorderRadius.circular(12)),
              margin: EdgeInsets.all(20),
              padding: EdgeInsets.all(35),
              // color: Colors.white,
              // decoration: BoxDecoration(
              //     image: DecorationImage(
              //         image: NetworkImage(
              //             "https://cdn.pixabay.com/photo/2016/04/15/04/02/water-1330252__340.jpg"),
              //         fit: BoxFit.cover)),
              height: 300,
              width: 500,
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                        labelText: "Email:",
                        hintText: "Enter Your Email Address:",
                        prefixIcon: Icon(Icons.email),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        )),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        labelText: "Password:",
                        hintText: "Enter Your Email Password:",
                        prefixIcon: Icon(Icons.remove_red_eye),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        )),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    child: Column(
                      children: [
                        ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Screen()));
                            },
                            child: Text("Log In"))
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
