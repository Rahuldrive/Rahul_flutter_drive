import 'dart:io';

void main() {
  var num1;
  var num2;
  var ans;

  print("Enter your first number");
  num1 = int.parse(stdin.readLineSync()!);
  print("Enter your secoind number");
  num2 = int.parse(stdin.readLineSync()!);

  ans = num1 + num2;
  print(ans);
}
