import 'package:flutter/material.dart';

void main() {
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Text Field"),
        ),
        body: Container(
          height: 700,
          width: 1500,
          decoration: BoxDecoration(border: Border.all()),
          margin: EdgeInsets.all(15),
          child: Column(
            children: [
              Container(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      margin: EdgeInsets.all(15),
                      height: 200,
                      width: 300,
                      child: Image.network(
                          'https://images.unsplash.com/photo-1561234311-a9e16fa60b25?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80'),
                    ),
                    Container(
                      margin: EdgeInsets.all(15),
                      height: 200,
                      width: 300,
                      child: Image.network(
                          'https://images.unsplash.com/photo-1483972117325-ce4920ff780b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80'),
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: [Text("hello")],
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: 200,
                            width: 300,
                            margin: EdgeInsets.all(15),
                            child: Image.network(
                                'https://images.unsplash.com/photo-1483972117325-ce4920ff780b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80'),
                          ),
                          Container(
                            margin: EdgeInsets.all(15),
                            height: 200,
                            width: 300,
                            child: Image.network(
                                'https://images.unsplash.com/photo-1561234311-a9e16fa60b25?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80'),
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
      ),
    );
  }
}
