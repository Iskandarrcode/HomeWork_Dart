void main(List<String> args) {
  // objects section
  var subject = Subject();
  var math = Math();
  var physics = Physics();

  subject.giveTeach();

  math.giveTeach();

  physics.giveTeach();
}

// class subjects
class Subject {
  String teacherName = "O'qituvchi";

  void giveTeach() {
    print("Dars bermoq");
  }
}

// class math
class Math extends Subject {
  @override
  String teacherName = "Matematika o'qituvchisi Normat";

  @override
  void giveTeach() {
    print("Matematika o'tuvchisi dars beryabdi");
  }
}

// physics class
class Physics extends Subject {
  @override
  String teacherName = "Fizika o'qituvchisi Toshmat";

  @override
  void giveTeach() {
    print("Fizika o'qituvchisi dars beryabdi");
  }
}
