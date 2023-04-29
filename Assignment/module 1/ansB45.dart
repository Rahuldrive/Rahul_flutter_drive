abstract class Marks {
  double? getPercentage;
}

class StudentA extends Marks {
  int? sub1;
  int? sub2;
  int? sub3;

  void input(sub1, sub2, sub3) {
    this.sub1 = sub1;
    this.sub2 = sub2;
    this.sub3 = sub3;
  }

  void display() {
    print("Student A percentrage is:$getPercentage");
  }
}

class StudentB extends StudentA {
  @override
  int? sub4;

  StudentB.input1(sub1, sub2, sub3, sub4) {
    super.input(sub1, sub2, sub3);
    this.sub4 = sub4;
  }
  void dispaly1() {
    print("Student B percentage is:$getPercentage");
  }
}

void main() {
  var obj = StudentB;
  obj.i
}
