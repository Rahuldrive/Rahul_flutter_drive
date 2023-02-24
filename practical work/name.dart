import "dart:io";

void main() {
  var fname;
  var lname;
  var fullname;
  print("enter your first name");
  fname = (stdin.readLineSync()!);
  print("enter your last name");
  lname = (stdin.readLineSync()!);
  fullname = fname + lname;
  print(fullname);
}
