import 'package:flutter/material.dart';

void main() {
  runApp(Gaming());
}

class Gaming extends StatelessWidget {
  const Gaming({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("login Page"),
        ),
        body: Container(
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(5),
            color: Colors.yellow,
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15)),
                      hintText: "Enter your Mobile Number or E-mail",
                      labelText: "Enter you ID"),
                ),
                Container(
                  margin: EdgeInsets.all(20),
                  padding: EdgeInsets.all(5),
                  child: Column(
                    children: [
                      TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15)),
                            hintText:
                                "Your password must conatin Uppercase lowercase and symbol ",
                            labelText: "Enter your Password"),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(onPressed: () {}, child: Text("Log In"))
              ],
            )),
      ),
    );
  }
}
