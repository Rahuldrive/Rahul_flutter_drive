import 'dart:io';

void main() {
  var marks;
  print("Enter his/her Marks");
  marks = int.parse(stdin.readLineSync()!);

  if (marks < 100) {
    print(" AA");
  } else if (marks < 90) {
    print("AB");
  } else if (marks < 80) {
    print("BB");
  } else if (marks < 70) {
    print("BC");
  } else if (marks < 60) {
    print("CD");
  } else if (marks < 50) {
    print("DD");
  } else {
    (marks <= 40);
    print("Fail");
  }
}
