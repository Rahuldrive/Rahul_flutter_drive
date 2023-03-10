import 'dart:io';

void main() {
  int maths;
  print("enter marks of maths ");
  maths = int.parse(stdin.readLineSync()!);

  int phy;
  print("enter marks of phy");
  phy = int.parse(stdin.readLineSync()!);

  int chem;
  print("enter marks of chem");
  chem = int.parse(stdin.readLineSync()!);

  int eng;
  print("enter marks of eng");
  eng = int.parse(stdin.readLineSync()!);

  int com;
  print("enter marks of com");
  com = int.parse(stdin.readLineSync()!);

  int total;
  total = (maths + phy + chem + eng + com);
  //print("your total marks is here");//
  var per;
  per = total / 5;
  print("Your per is : $per");
}
