import 'dart:io';

int substraction(int a, int b) {
  var ans;
  ans = a - b;
  return ans;
}

void main() {
  int a, b, ans;
  print("enter number1");
  a = int.parse(stdin.readLineSync()!);
  print("enter number2");
  b = int.parse(stdin.readLineSync()!);
  ans = substraction(a, b);
  print(ans);
}
