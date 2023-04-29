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
          title: Text(" myAPP"),
        ),
        body: Container(
            child: Column(
          children: [
            Container(
                margin: EdgeInsets.all(12),
                padding: EdgeInsets.all(1),
                height: 100,
                width: 1000,
                color: Colors.red),
            Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.all(2),
                    padding: EdgeInsets.all(2),
                    height: 100,
                    width: 500,
                    color: Colors.blue,
                  ),
                  Container(
                    margin: EdgeInsets.all(5),
                    padding: EdgeInsets.all(2),
                    height: 100,
                    width: 500,
                    color: Colors.blue,
                  ),
                ],
              ),
            ),
            Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.all(5),
                    padding: EdgeInsets.all(2),
                    height: 100,
                    width: 500,
                    color: Colors.blue,
                  ),
                  Container(
                    margin: EdgeInsets.all(5),
                    padding: EdgeInsets.all(2),
                    height: 100,
                    width: 500,
                    color: Colors.blue,
                  ),
                ],
              ),
            ),
            Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.all(5),
                    padding: EdgeInsets.all(2),
                    height: 100,
                    width: 320,
                    color: Colors.yellow,
                  ),
                  Container(
                    margin: EdgeInsets.all(5),
                    padding: EdgeInsets.all(2),
                    height: 100,
                    width: 320,
                    color: Colors.yellow,
                  ),
                  Container(
                    margin: EdgeInsets.all(5),
                    padding: EdgeInsets.all(2),
                    height: 100,
                    width: 320,
                    color: Colors.yellow,
                  ),
                ],
              ),
            )
          ],
        )),
      ),
    );
  }
}
