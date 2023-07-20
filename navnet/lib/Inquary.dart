import 'package:flutter/material.dart';

class Inquary extends StatelessWidget {
  const Inquary({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Inquary Form",
          style: TextStyle(
            color: Colors.redAccent,
            fontSize: 30,
          ),
        ),
      ),
      body: Column(
        children: [
          Column(
            children: [
              TextField(
                decoration: InputDecoration(
                    hintText: "Enter Your Full Name:",
                    labelText: " Name",
                    filled: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                decoration: InputDecoration(
                    hintText: "eg.myname@example.com",
                    labelText: "Email",
                    prefixIcon: Icon(Icons.mail),
                    filled: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                decoration: InputDecoration(
                    hintText: "(00)1234567890",
                    labelText: "Mobile Number",
                    prefixIcon: Icon(Icons.phone),
                    filled: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                decoration: InputDecoration(
                    hintText: "***********",
                    labelText: "Message",
                    prefixIcon: Icon(Icons.message),
                    filled: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
              ElevatedButton(onPressed: () {}, child: Text("Submit")),
            ],
          )
        ],
      ),
    );
  }
}
