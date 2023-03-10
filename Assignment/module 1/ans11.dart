import 'dart:io';

void main() {
  int year;
  print("Enter any year");
  year = int.parse(stdin.readLineSync()!);

  if (year % 100 == 0) {
    if (year % 4 == 0)
      print("Leap Year");
    else
      print("Not a Leap year");
  } else if (year % 4 == 0)
    print("leap year");
  else
    print("Not a Leap year");
}
