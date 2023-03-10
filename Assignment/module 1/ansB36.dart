class rahul {
  String? number;
  String? name;

  String? input(number, name) {
    this.number = number;
    this.name = name;
  }

  String? display() {
    print("Number is:$number");
    print("name is:$name");
  }
}

class demo extends rahul {
  @override
  void display1() {
    super.input("10", "adss");
  }
}

void main() {
  var obj = demo();
  obj.input("25", "Rahul");
  obj.display();
}
