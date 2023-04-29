class Shape {
  void shape() {
    print("this is shape ");
  }
}

class Reactangle extends Shape {
  void reactangle() {
    print("this is a Reactangle shape");
  }
}

class Circle extends Shape {
  void circle() {
    print("this is a circuler shape");
  }
}

class Square extends Reactangle {
  void square() {
    print("square is a reactangle");
  }
}

void main() {
  var obj = Square();
  obj.square();
  obj.reactangle();
  obj.shape();
}
