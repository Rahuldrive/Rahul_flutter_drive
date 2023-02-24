// simple intrest program //
import 'dart:io';

void main() {
  var P;
  print("enter any value");
  P = int.parse(stdin.readLineSync()!);

  var T;
  print("enter any value");
  T = int.parse(stdin.readLineSync()!);

  var R;
  print("enter any value");
  R = int.parse(stdin.readLineSync()!);

  var SI = P * T * R / 100;
  print(SI);
}
