import 'dart:io';

void main(List<String> args) {
  Universitet.increaseStudentCount();
  Universitet.printInfo();
}

class Universitet {
  // static propertys
  static String name = "TATU UF";
  static int countStudents = 100;

  // static method increase Student Count
  static void increaseStudentCount() {
    stdout.write("Talabalr sonini qanchaga oshirasiz... ");
    int count = int.parse(stdin.readLineSync()!);
    countStudents += count;
  }

  // static method print informations
  static void printInfo() {
    print("Universitet nomi: $name va $countStudents ta talaba !!!");
  }
}
