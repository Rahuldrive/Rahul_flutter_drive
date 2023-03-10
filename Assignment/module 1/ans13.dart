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

  int max;
  if (a > b) {
    if (a > c)
      max = a;
    else
      max = c;
  } else {
    if (b > c)
      max = b;
    else
      max = c;
  }
  print("Maximum:$max");
}
