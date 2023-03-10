//Area of circle:

import 'dart:io';

void main() {
  var redius;
  var area;
  var PI;
  print("enter redius of cirlce");
  redius = int.parse(stdin.readLineSync()!);
  PI = 3.14;

  area = PI * redius * redius;
  print("area of circle is $area :");

// Area of rectangle:

  var length;
  length = int.parse(stdin.readLineSync()!);
  print("Enter length:");
  var wigth;
  wigth = int.parse(stdin.readLineSync()!);
  print("Enter Wigth");
  var rectangle;
  rectangle = length * wigth;
  print("area of reactangle is:$rectangle");
}
