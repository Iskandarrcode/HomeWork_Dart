void main(List<String> args) {
  List shapes = [
    Line(),
    Circle(),
    Triangle(),
  ];

  for (var shape in shapes) {
    shape.draw();
  }
}

// inteface class Shape
abstract class Shape {
  void draw();
}

// Line class Shape implements
class Line implements Shape {
  @override
  void draw() {
    print("To'g'ri chiziq chizildi");
  }
}

// Circle class Shape implements
class Circle implements Shape {
  @override
  void draw() {
    print("Doira chizildi");
  }
}

// Triangle class Shape implements
class Triangle implements Shape {
  @override
  void draw() {
    print("Uchburchak chizildi");
  }
}
