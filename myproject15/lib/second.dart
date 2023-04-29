import 'package:flutter/material.dart';
import 'package:myproject15/main.dart';

void main() {
  runApp(Screen());
}

class Screen extends StatelessWidget {
  List image = [
    "https://tse4.mm.bing.net/th?id=OIP.kfwpC2wgXU9boBBGWS1EHQHaE7&pid=Api&P=0&w=300&h=300 ",
    Size(250, 250),
    "http://2.bp.blogspot.com/-8Q5pD9KWmYs/Uk2h7alG5YI/AAAAAAAABjU/iZWoqs5oUis/s1600/100+Inage+Ocean+Park.jpg",
    Size(250, 250),
    "https://japan-web-magazine.com/japanese/chiba/inage-sengen-jinja/images/01.jpg",
    Size(250, 250),
    "https://tse1.mm.bing.net/th?id=OIP.waeaSI4rpCChDyjQaybuAgHaFj&pid=Api&P=0",
    Size(250, 250),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Grid view"),
        ),
        body: Container(
          padding: EdgeInsets.all(15),
          child: Container(
            child: GridView.builder(
              itemCount: image.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 4.0,
                  mainAxisSpacing: 4.0),
              itemBuilder: (BuildContext context, int index) {
                return Image.network(image[index]);
              },
            ),
          ),
        ),
      ),
    );
  }
}
