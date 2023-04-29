import 'package:flutter/material.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text("MY APP")),
        body: Container(
            child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 200,
              width: 400,
              color: Colors.yellow,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(
                    Icons.star,
                    size: 70,
                  ),
                  Icon(
                    Icons.star,
                    size: 120,
                  ),
                  Icon(
                    Icons.star,
                    size: 70,
                  )
                ],
              ),
            )
          ],
        )),
      ),
    );
  }
}
