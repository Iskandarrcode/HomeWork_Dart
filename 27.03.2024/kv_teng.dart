// Kvadrat tenglamani yechimini topish dasturi  x*x -x - 12 = 0 !!!
import 'dart:io';
import 'dart:math';
void main(List<String> args) {
    stdout.write("a ga qiymat kiriting: ");
    int a = int.parse(stdin.readLineSync()!);

    stdout.write("b ga qiymat kiriting: ");
    int b = int.parse(stdin.readLineSync()!);

    stdout.write("c ga qiymat kiriting: ");
    int c = int.parse(stdin.readLineSync()!);

    int d = (b*b - 4 * a * c);
    if (d > 0) {
        print("Tenglama 2 ta yechimga ega: ");
        double x1 = (-b + sqrt(d)) / (2 * a);
        double x2 = (-b - sqrt(d)) / (2 * a);
        print("x1 = $x1 va x2 = $x2 ");
    }
    else if (d == 0) {
        print("Tenglama 1 ta yechimga ega");
        double y = (-b + sqrt(d)) / (2 * a);
        print("x = $y");
    }
    else {
        print("Tenglama Yechimga ega emas !!!");
    }

}