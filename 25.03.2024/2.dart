import 'dart:io';
void main(List<String> args) {
  print("1 - songa qiymat kiriting: ");
  int a = int.parse (stdin.readLineSync()!);
  print("2 - songa qiymat kiririting: ");
  int b =int.parse (stdin.readLineSync()!);
  // Ikki sonning yig'indisi: 
  print("$a + $b = ${a + b}");

  // Ikki sonning ayirmasi:
  print("$a - $b = ${a - b}");

  // Ikki sonning ko'paytmasi:
  print("$a * $b = ${a * b}");

  // Ikki sonning bo'linmasi:
  print("$a / $b = ${a / b}");

  // Ikki sonning bo'linmasi (faqat butun qismini oladi):
  print("$a ~/ $b = ${a ~/ b}");

  // Ikki sonning bo'linmasini (qoldiqini) oladi:
  print("$a % $b = ${a % b}");

  // Aylanani maydonini hisoblash s = 2*pi*R
  const pi = 3.14;
  print("Aylananing radiusini kiriting: ");
  int r = int.parse (stdin.readLineSync()!);
  print("Aylananing Uzunligi: ${2 * pi * r}");

}