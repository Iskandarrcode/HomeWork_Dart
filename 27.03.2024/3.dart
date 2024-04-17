/*Foydalanuvchi kiritgan maʼlumotlar asosida haroratni Selsiy va Farengeyt
oʻrtasida oʻzgartiruvchi konsol ilovasini yarating. Birinchi haroratni kiritadi
va keyin S (Selsiy uchun) yoki F (Farengeyt) harflarini kiritadi va shunga
qarab haroratni kerakli o’lchov birligiga o’zgartiradi  __C = (F - 32) * 5 / 9 __ */

import 'dart:io';

void main(List<String> args) {
  // Choose
  stdout.write("1:Press => C to F:  2:Press => F to C: ");
  int press = int.parse(stdin.readLineSync()!);

  if (press == 1) {
    // Transfer from C to F
    stdout.write("Input C:  ");
    int input_c = int.parse(stdin.readLineSync()!);

    // Formula
    double to_f = input_c * (9 / 5) + 32;
    print("$input_c C = $to_f F");
  } else if (press == 2) {
    // Transfer from F to C
    stdout.write("Input F:  ");
    int input_f = int.parse(stdin.readLineSync()!);
    
    // Formula
    double to_c = (input_f - 32) * (5 / 9);
    print("$input_f F = $to_c C");
  }
}
