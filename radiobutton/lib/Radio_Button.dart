import 'package:flutter/material.dart';

class Radio_Button extends StatefulWidget {
  const Radio_Button({super.key});

  @override
  State<Radio_Button> createState() => _Radio_ButtonState();
}

class _Radio_ButtonState extends State<Radio_Button> {
  String cars = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("$cars"),
      ),
      body: ListView(
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),
        children: [
          RadioListTile(
              title: Text("M"),
              value: "MyBAck",
              groupValue: cars,
              onChanged: _handlechange),
          RadioListTile(
              title: Text("n"),
              value: "gt",
              groupValue: cars,
              onChanged: _handlechange),
          RadioListTile(
              title: Text("o"),
              value: "bmw",
              groupValue: cars,
              onChanged: _handlechange)
        ],
      ),
    );
  }

  void _handlechange(String? value) {}
}
