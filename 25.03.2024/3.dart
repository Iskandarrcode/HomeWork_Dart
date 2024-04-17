import 'dart:io';
void main(List<String> args) {
  // length ga qiymat foydalanuvchidan qabul qilib olish:
  print("Length ga qiymat kiriting: ");
  double length = double.parse (stdin.readLineSync()!);

  // width ga qiymat foydalanuvchidan qabul qilib olish:
  print("Width ga qiymat kiriting: ");
  double width = double.parse (stdin.readLineSync()!);

  ///Balandlik va kenglik berilgan maydoni yuzasini topish uchum method:
  double calculatArea(double length, double width) {
    return length * width;
  }
  /*Method ni ishga tushirish:*/
  print(calculatArea(length, width));
}