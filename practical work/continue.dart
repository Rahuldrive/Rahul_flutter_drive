import 'dart:io';

void main() {
  var num;
  for (int i = 1; i < 5; i++) {
    print("number");
    num = int.parse(stdin.readLineSync()!);
    if (num % 2 == 0) {
      print("even");
      break;
    } else {
      print("odd");
    }
  }
}
