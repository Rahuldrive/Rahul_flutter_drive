import 'dart:io';

void main() {
  var marks;
  print("enter your marks");
  marks = int.parse(stdin.readLineSync()!);

  if (marks > 75) {
    print("Distinction");
  } else if (marks >= 60) {
    print("First class");
  } else if (marks >= 50) {
    print("Second class");
  } else if (marks >= 35) {
    print("Pass class");
  } else {
    (marks <= 35);
    print("Fail");
  }
}
