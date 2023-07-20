import 'package:flutter/material.dart';

class login_Screen extends StatefulWidget {
  const login_Screen({super.key});

  @override
  State<login_Screen> createState() => _login_ScreenState();
}

class _login_ScreenState extends State<login_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Center(
            child: Text(
          "KhataApp",
          style: TextStyle(),
        )),
      ),
      body: Container(
        decoration: BoxDecoration(
            image: NetworkImage(
                "https://png.pngtree.com/png-vector/20190507/ourmid/pngtree-vector-wallet-icon-png-image_1025642.jpg")),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 300, left: 10, right: 10),
              child: Column(
                children: [
                  Container(
                    //     margin: EdgeInsets.only(top: 30, left: 10, right: 10),
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12)),
                          labelText: "ID",
                          hintText: "Enter your id"),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12)),
                        labelText: "Password",
                        hintText: "Your password shoud be 8 to 10 character"),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(onPressed: () {}, child: Text("Login")),
                        ElevatedButton(onPressed: () {}, child: Text("Signup"))
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
}
