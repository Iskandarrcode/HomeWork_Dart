/*1 dan 100 gacha tasodifiy raqam hosil qiling. Foydalanuvchidan raqamni
taxmin qilishini so'rang, so'ngra ular juda past, juda baland yoki to'liq
to'g'ri deb taxmin qilganligini ayting.
Foydalanuvchi qancha taxmin qilganini kuzatib boring va o'yin
tugagandan so'ng, uni chop eting. */

import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  int count = 1;

  // random number
  int rand_num = Random().nextInt(100);
  // To check
  print("Test uchun => rand_num: $rand_num");

  print("MEN O'YLAGAN SONNI TOPING....");
  while (true) {
    // input user number
    stdout.write("1 dan 100 gacha son tanlang: ");
    int user_num = int.parse(stdin.readLineSync()!);

    if (rand_num < user_num) {
      print("Kichigroq son o'ylang: ");
      count += 1;
    } else if (rand_num > user_num) {
      print("Kattaroq son o'ylang: ");
      count += 1;
    } else {
      print("=> TABRIKLAYMAN SONNI TOPDINGIZ...):");
      print("URUNISHLR SONI: $count");
      break;
    }
  }
}
