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
}
