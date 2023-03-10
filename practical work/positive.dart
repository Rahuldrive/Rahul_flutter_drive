import 'dart:io';

void mainO() {
  var a;
  print("enter the value of a");
  a = int.parse(stdin.readLineSync()!);
  if (a >= 0) {
    print("The given number is Positive");
  } else {
    print("The give number is Negative");
  }
}
