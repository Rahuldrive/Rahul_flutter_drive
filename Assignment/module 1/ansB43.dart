class parent {
  void message() {
    print("This is a parent class");
  }
}

class First extends parent {
  void subclass1() {
    print("this is a first subclass");
  }
}

class second extends First {
  void subclass2() {
    print("this is second subclass");
  }
}

void main() {
  var obj = second();
  obj.message();
  obj.subclass1();
  obj.subclass2();
}
