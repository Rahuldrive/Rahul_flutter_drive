class Bank {
  void name() {
    print("this is your bank");
  }
}

class BankA extends Bank {
  void getBalance() {
    print("your balance is 100");
  }
}

class Bankb extends BankA {
  void getbalance() {
    print("your balance is 150");
  }
}

class Bankc extends Bankb {
  void getbalance() {
    print("your balance is 200");
  }
}

void main() {
  var obj = Bankc();
  obj.name();
  obj.getBalance();
  obj.getbalance();
  obj.getbalance();
}
