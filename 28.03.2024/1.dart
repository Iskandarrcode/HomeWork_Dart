/*Ro'yxatni oling, masalan, buni:
a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89]
va ro'yxatning 5 dan kichik bo'lgan barcha elementlarini chiqaradigan
dasturni yozing */

import 'dart:io';
void main(List<String> args) {
    // List a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
    stdout.write("List qiymatlrini kiriting_(1 2 3 4):  ");
    String? str = stdin.readLineSync()!;
    List a = [];
    // String to List split(" ")__(one space)
    a = str.split(" ");

// the number-crunching cycle
    for (int i = 0; i < a.length; i++) {
        // a[i] < 5
        if (int.parse(a[i]) < 5) {
            // print the number
            stdout.write("${a[i]} ");
        }
    }
}