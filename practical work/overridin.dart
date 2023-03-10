class Person {
  String? name;
  String? Subject;

  void input(name, subject) {
    this.name = name;
    this.Subject = subject;
  }

  void display() {
    print("your name is $name");
    print("your subject is $Subject");
  }
}

class Student extends Person {
  @override
  input(name, subject) {
    super.input(name, subject);
  }

  void display() {
    print("$name");
    print("$Subject");
  }
}

void main() {
  var obj = Student();
  obj.input("Rahul", "Flutter");
  obj.display();
}
