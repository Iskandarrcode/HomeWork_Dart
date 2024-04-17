void main(List<String> args) {
  var person = Person();
  var teacher = Teacher();
  var student = Student();

  person.network();
  teacher.network();
  student.network();
}

// Person class
class Person {
  // Network method
  void network() {
    print("Person Tanishtiruv");
  }
}

// Teacher class extends Person class
class Teacher extends Person {
  @override
  void network() {
    print("\nTeacher class ni ichi");
    super.network();
  }
}

// Student class extends Person class
class Student extends Person {
  @override
  void network() {
    print("\nStudent class ni ichi");
    super.network();
  }
}
