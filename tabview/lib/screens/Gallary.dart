import 'package:flutter/material.dart';

class Gallary extends StatelessWidget {
  const Gallary({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> images = [
      "assets/images/im1.jpg",
      "assets/images/im2.jpg",
      "assets/images/im3.jpg",
      "assets/images/im4.jpg",
      "assets/images/im5.jpg",
      "assets/images/im6.jpg",
      "assets/images/im7.jpg",
      "assets/images/im8.jpg"
    ];
    return GridView.builder(
        itemCount: images.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, mainAxisSpacing: 8, crossAxisSpacing: 8),
        itemBuilder: (BuildContext, int index) {
          return Image.asset(images[index]);
        });
  }
}
