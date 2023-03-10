class Member {
  String? name;
  int? age;
  String? phonenumber;
  String? address;
  int? salry;

  void input(name, age, phonenumber, address, salary) {
    this.name = name;
    this.age = age;
    this.phonenumber = phonenumber;
    this.address = address;
    this.salry = salry;
  }

  void dispaly() {
    print("Your name is $name");
    print("your age is$age");
    print("Your phonrnumber is $phonenumber");
    print("your addrees is$address");
    print("your salary is $salry");
  }
}

class Employee extends Member {
  @override
  String? Specialization;
  Employee(name, age, phonenumber, address, salary, specialization) {
    super.input(
      name,
      age,
      phonenumber,
      address,
      salary,
    );
    this.Specialization = Specialization;
  }
}

class Manager extends Member {
  @override
  String? department;
  Manager(name, age, phonenumber, address, salary, department) {
    super.input(name, age, phonenumber, address, salary);
    this.department = department;
  }
}

void display() {
  print("name");
  print("age");
  print("phonenumber");
  print("address");
  print("salary");
}

void main() {
  var obj =
      Employee("Rahul", "25", "97236314589", "ahmedabad", "15000", "flutter");
  var obj = Manager("Darshan", "25", "1234567890", "ahmedabad", "50000", "it");
  obj.dispaly();
}
