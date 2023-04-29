import 'package:flutter/material.dart';

void main() {
  runApp(myapp());
}

class myapp extends StatelessWidget {
  const myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("myapp"),
        ),
        body: Container(
            // main box 1
            child: Row(
          children: [
            Container(
              margin: EdgeInsets.all(20),
              height: 500,
              width: 600,
              decoration: BoxDecoration(
                  border: Border(
                top: BorderSide(color: Colors.black),
                bottom: BorderSide(color: Colors.black),
                right: BorderSide(color: Colors.black),
                left: BorderSide(color: Colors.black),
              )),
              child: Column(
                children: [
                  Container(
                    // main box 1(colum 1)
                    margin: EdgeInsets.all(10),
                    height: 50,
                    width: 500,
                    child: Center(
                      child: Text("Flutter"),
                    ),
                    decoration: BoxDecoration(
                        border: Border(
                      top: BorderSide(color: Colors.black),
                      bottom: BorderSide(color: Colors.black),
                      right: BorderSide(color: Colors.black),
                      left: BorderSide(color: Colors.black),
                    )),
                  ),
                  Container(
                    // main box 1(colum 2)
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.all(20),
                          height: 100,
                          width: 500,
                          child: Text("Description"),
                          decoration: BoxDecoration(
                              border: Border(
                            top: BorderSide(color: Colors.black),
                            bottom: BorderSide(color: Colors.black),
                            right: BorderSide(color: Colors.black),
                            left: BorderSide(color: Colors.black),
                          )),
                        ),
                        Container(
                          // main box 1(colum 3)
                          child: Column(
                            children: [
                              Container(
                                margin: EdgeInsets.all(20),
                                height: 50,
                                width: 500,
                                child: Text("*********"),
                                decoration: BoxDecoration(
                                    border: Border(
                                  top: BorderSide(color: Colors.black),
                                  bottom: BorderSide(color: Colors.black),
                                  right: BorderSide(color: Colors.black),
                                  left: BorderSide(color: Colors.black),
                                )),
                              ),
                              Container(
                                child: Column(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.all(20),
                                      height: 50,
                                      width: 500,
                                      child: Text("End"),
                                      decoration: BoxDecoration(
                                          border: Border(
                                        top: BorderSide(color: Colors.black),
                                        bottom: BorderSide(color: Colors.black),
                                        right: BorderSide(color: Colors.black),
                                        left: BorderSide(color: Colors.black),
                                      )),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
                // main box 2
                margin: EdgeInsets.all(20),
                height: 500,
                width: 600,
                decoration: BoxDecoration(
                    border: Border(
                  top: BorderSide(color: Colors.black),
                  bottom: BorderSide(color: Colors.black),
                  right: BorderSide(color: Colors.black),
                  left: BorderSide(color: Colors.black),
                )),
                child: Image.network(
                    "data:image/jpeg;base64,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"))
          ],
        )),
      ),
    );
  }
}
