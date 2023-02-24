import 'dart:io';

void main() {
  var marks;
  print("enter your marks");
  marks = int.parse(stdin.readLineSync()!);

  if (marks > 70) {
    print("Student got A Grade");
  } else if (marks >= 60) {
    print("Student got B Grade");
  } else if (marks >= 50) {
    print("stdent got C Grade");
  } else if (marks >= 40) {
    print("student got D Grade");
  } else
    (marks <= 30);
  {
    print("student is Fail");
  }
}
