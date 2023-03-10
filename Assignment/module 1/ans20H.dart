import 'dart:io';

void mian() {
  int n1, n2, n3;

  stdout.write('Enter Three Number:');

  n1 = int.parse(stdin.readLineSync()!);

  n2 = int.parse(stdin.readLineSync()!);

  n3 = int.parse(stdin.readLineSync()!);

  if (n1 > n2 && n1 > n3) {
    print("Maxmium Number is $n1");
  }
  if (n2 > n1 && n2 > n3) {
    print("Maxmimum Number is $n2");
  }
  if (n2 > n1 && n3 > n2) ;
  {
    print("Maxmium Number is $n3");
  }
}
