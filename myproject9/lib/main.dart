import 'package:flutter/material.dart';

void main() {
  runApp(myapp());
}

class myapp extends StatelessWidget {
  const myapp({super.key});

  @override
  Widget build(BuildContext context) {
    var num = 0;
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title: Text("My app"),
            ),
            body: Container(
              height: 80,
              width: 150,
              margin: EdgeInsets.all(25),
              padding: EdgeInsets.all(5),
              color: Colors.lightBlue,

              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text("Row 1"),
                  Text("Row 2"),
                  Icon(
                    Icons.alarm,
                    size: 35,
                  ),
                  Container(
                    child: Column(
                      children: [
                        Image.asset("assets/images/123.jpg"),
                        Image.network(
                            "data:image/jpeg;base64,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"),
                      ],
                    ),
                  )
                ],
              ),
              // child: TextField(
              //     decoration: InputDecoration(
              //         border: OutlineInputBorder(
              //   borderRadius: BorderRadius.circular(25),
            )));
    // child: ElevatedButton(
    //   child: Text("Press"),
    //   onPressed: () {
    //     print("$num");
    //     num++;
    //   },
    // ),
  }
}
