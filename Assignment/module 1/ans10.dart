import 'dart:io';

void main() {
  var number;
  print("enter any number");
  number = int.parse(stdin.readLineSync()!);

  if (number >= 0) {
    print("Positive");
  } else {
    print("Negative");
  }
}
