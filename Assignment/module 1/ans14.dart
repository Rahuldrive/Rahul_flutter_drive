// void main() {
//   int num1 = 10;
//   int num2 = 15;
//   int num3 = 30;
//   int max = (num1 > num2 > num3) ? num1 : num2: num3;
//   print("The greatest number is $max");
// }

import 'dart:io';

void main() {
  int a;
  print("enter the value of a");
  a = int.parse(stdin.readLineSync()!);

  int b;
  print("enter the value of b");
  b = int.parse(stdin.readLineSync()!);

  int c;
  print("enter the value of c");
  c = int.parse(stdin.readLineSync()!);

  int max = a > b ? (a > c ? a : c) : (b < c ? b : c);
  print("the max number is:$max");
}
