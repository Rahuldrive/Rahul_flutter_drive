import 'dart:io';

int Multiplication() {
  int a, b;
  print("enter the number 1");
  a = int.parse(stdin.readLineSync()!);
  print("enter the number 2");
  b = int.parse(stdin.readLineSync()!);
  var ans;
  ans = a * b;
  return (ans);
}

void main() {
  int ans;
  ans = Multiplication();
  print(ans);
}
