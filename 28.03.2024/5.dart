/*Aytaylik, sizga o'zgaruvchida saqlangan ro'yxat berilgan:
a = [1, 4, 9, 16, 25, 36, 49, 64, 81, 100].
Dart kodini yozing, bu ro'yxatni oladi va unda ushbu ro'yxatning faqat juft
elementlari bo'lgan yangi ro'yxatni tuzadi. */

import 'dart:io';
void main(List<String> args) {
    // Input List elements in String
    stdout.write("List qiymatlrini kiriting_(1 2 3 4):  ");
    String? str = stdin.readLineSync()!;
    List ls = [];
    // String to List split(" ")__(one space)
    ls = str.split(" ");
    List ls2 = [];

    // This section checks numbers for pairs
    for (var i = 0; i < ls.length; i++) {
        // List elements to int and couple check
        if (int.parse(ls[i]) % 2 == 0) {
            // add to 2 - list
            ls2.add(ls[i]);
        }
    }

    print(ls2);
}