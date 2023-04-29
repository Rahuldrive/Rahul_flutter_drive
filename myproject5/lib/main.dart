import 'package:flutter/material.dart';

void main() {
  runApp(Photoapp());
}

class Photoapp extends StatelessWidget {
  const Photoapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: Container(
        margin: EdgeInsets.all(20),
        decoration: BoxDecoration(
            border: Border(
          top: BorderSide(color: Colors.black),
          bottom: BorderSide(color: Colors.black),
          left: BorderSide(color: Colors.black),
          right: BorderSide(color: Colors.black),
        )),
        child: Column(
          children: [
            Container(
              height: 50,
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(color: Colors.black),
                  bottom: BorderSide(color: Colors.black),
                  left: BorderSide(color: Colors.black),
                  right: BorderSide(color: Colors.black),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(color: Colors.black),
                  bottom: BorderSide(color: Colors.black),
                  left: BorderSide(color: Colors.black),
                  right: BorderSide(color: Colors.black),
                ),
              ),
              child: Row(
                //  crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.all(5),
                    height: 50,
                    width: 50,
                    color: Colors.purple[50],
                  ),
                  Container(
                    margin: EdgeInsets.all(5),
                    height: 50,
                    width: 50,
                    color: Colors.red[50],
                  ),
                  Container(
                    margin: EdgeInsets.all(5),
                    height: 50,
                    width: 50,
                    color: Colors.yellow[50],
                  ),
                ],
              ),
            ),
            Container(
              height: 50,
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(color: Colors.black),
                  bottom: BorderSide(color: Colors.black),
                  left: BorderSide(color: Colors.black),
                  right: BorderSide(color: Colors.black),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.all(5),
                    height: 50,
                    width: 50,
                    color: Colors.purple[50],
                  ),
                  Container(
                    margin: EdgeInsets.all(5),
                    height: 50,
                    width: 50,
                    color: Colors.red[50],
                  ),
                  Container(
                    margin: EdgeInsets.all(5),
                    height: 50,
                    width: 50,
                    color: Colors.yellow[50],
                  ),
                ],
              ),
            ),
            Container(
              height: 50,
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  border: Border(
                top: BorderSide(color: Colors.black),
                bottom: BorderSide(color: Colors.black),
                left: BorderSide(color: Colors.black),
                right: BorderSide(color: Colors.black),
              )),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    margin: EdgeInsets.all(5),
                    height: 50,
                    width: 50,
                    color: Colors.purple[50],
                  ),
                  Container(
                    margin: EdgeInsets.all(5),
                    height: 50,
                    width: 50,
                    color: Colors.red[50],
                  ),
                  Container(
                    margin: EdgeInsets.all(5),
                    height: 50,
                    width: 50,
                    color: Colors.yellow[50],
                  ),
                ],
              ),
            ),
            Container(
              height: 50,
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  border: Border(
                top: BorderSide(color: Colors.black),
                bottom: BorderSide(color: Colors.black),
                left: BorderSide(color: Colors.black),
                right: BorderSide(color: Colors.black),
              )),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.all(5),
                    height: 50,
                    width: 50,
                    color: Colors.purple[50],
                    child: Text("A"),
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    child: Text("1"),
                  ),
                  Container(
                    margin: EdgeInsets.all(5),
                    height: 50,
                    width: 50,
                    color: Colors.red[50],
                    child: Text("B"),
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    child: Text("2"),
                  ),
                  Container(
                    margin: EdgeInsets.all(5),
                    height: 50,
                    width: 50,
                    color: Colors.yellow[50],
                    child: Text("c"),
                  ),
                ],
              ),
            ),
            Container(
              height: 50,
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  border: Border(
                top: BorderSide(color: Colors.black),
                bottom: BorderSide(color: Colors.black),
                left: BorderSide(color: Colors.black),
                right: BorderSide(color: Colors.black),
              )),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    child: Text("1"),
                  ),
                  Container(
                    margin: EdgeInsets.all(5),
                    height: 50,
                    width: 50,
                    color: Colors.purple[50],
                    child: Text("A"),
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    child: Text("2"),
                  ),
                  Container(
                    margin: EdgeInsets.all(5),
                    height: 50,
                    width: 50,
                    color: Colors.red[50],
                    child: Text("B"),
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    child: Text("3"),
                  ),
                  Container(
                    margin: EdgeInsets.all(5),
                    height: 50,
                    width: 50,
                    color: Colors.yellow[50],
                    child: Text("c"),
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    child: Text("4"),
                  ),
                ],
              ),
            ),
            Container(
              height: 50,
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  border: Border(
                top: BorderSide(color: Colors.black),
                bottom: BorderSide(color: Colors.black),
                left: BorderSide(color: Colors.black),
                right: BorderSide(color: Colors.black),
              )),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    child: Text("1"),
                  ),
                  Container(
                    margin: EdgeInsets.all(5),
                    height: 50,
                    width: 50,
                    color: Colors.purple[50],
                    child: Text("A"),
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    child: Text("2"),
                  ),
                  Container(
                    margin: EdgeInsets.all(5),
                    height: 50,
                    width: 50,
                    color: Colors.red[50],
                    child: Text("B"),
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    child: Text("3"),
                  ),
                  Container(
                    margin: EdgeInsets.all(5),
                    height: 50,
                    width: 50,
                    color: Colors.yellow[50],
                    child: Text("c"),
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    child: Center(child: Text("4")),
                  ),
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
