class Parent {
  void one() {
    print("This is a parent class");
  }
}

class two extends Parent {
  void child() {
    print("this is a Child class");
  }
}

void main() {
  var obj = two();
  obj.one();
  obj.child();
}
