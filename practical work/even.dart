import 'dart:io';

void main() {
  var a;
  print("Enter the value of a");
  a = int.parse(stdin.readLineSync()!);
  if (a % 2 == 0) {
    print("This is even number");
  } else {
    print("This is odd number");
  }
}
