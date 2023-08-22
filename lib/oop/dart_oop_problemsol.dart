void main() {
  Shape shape = Circle();
  shape.calculateArea(); // Note the lowercase method name
  Shape rectangular = Rectangular();
  rectangular.calculateArea(); // Note the lowercase method name
}

abstract class Shape {
  double calculateArea(); // Specify a return type
}

class Circle extends Shape {
  @override
  double calculateArea() { // Specify a return type and use correct formula
    return 3.1416 * 5 * 5; // Calculate the area of a circle
  }
}

class Rectangular extends Shape {
  @override
  double calculateArea() { // Specify a return type and use correct formula
    return 8 * 9; // Calculate the area of a rectangle
  }
}
