import 'dart:io';

void main() {
  var name;
  int birthdate;
  int age;
  var address;
  print("enter your name");
  name = (stdin.readLineSync()!);
  print("enter your birthdate");
  birthdate = int.parse(stdin.readLineSync()!);
  print("enter your age");
  age = int.parse(stdin.readLineSync()!);
  print("enter your address");
  address = int.parse(stdin.readLineSync()!);
}
