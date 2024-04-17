/*Dublikatlar sonini hisoblang
Kiritish satrida bir necha marta uchraydigan katta-kichik harflarga sezgir
bo'lmagan alifbo belgilari va raqamli raqamlarning sonini qaytaradigan
funktsiyani yozing. Kirish qatori faqat alifbo (katta va kichik) va raqamli
raqamlardan iborat deb taxmin qilish mumkin.
Misol
"abcde" -> 0 # belgilar bir necha marta takrorlanmaydi
"aabbcde" -> 2 # 'a' va 'b'
"aabBcde" -> 2 # 'a' ikki marta va 'b' ikki marta uchraydi (`b` va `B`)
"bo'linmaslik" -> 1 # 'i' ikki marta uchraydi
"Bo'linmaslik" -> 2 # 'i' ikki marta
"aA11" -> 2 # 'a' va '1'
"ABBA" -> 2 # 'A' va 'B' har biri ikki marta uchraydi */

import 'dart:io';
void main(List<String> args) {
    dublikat();
}

void dublikat() {
    // Input String
    stdout.write("Input String: ");
    String? str = stdin.readLineSync()!;
    int count_num = 0;
    int count_low_upp = 0;
    int brEak = 0;
    String upp = "";
//  String elements count
    for (var i = 0; i < str.length; i++) {
        for (var j = i + 1; j < str.length; j++) {
            if (str[i] == str[j]) {
                count_num ++;
            }
            // UpperCase check
            if (str[i] == str[j].toUpperCase()) {
                count_low_upp ++;
                upp = str[i];
            }
        }
        // how many times did he participate
        if (count_num > 0) {
            print(" '${str[i]}' -> # ${count_num + 1} marta uchraydi...\n");
            brEak ++;
            count_num = 0;
        }
        // uppercase and lowercase letters are involved
        if (count_low_upp > 0) {
            print(" '${str[i]}' -> # ${count_low_upp + 1} marta uchraydi ('${upp.toLowerCase()}', $upp)...\n");
            count_low_upp = 0;
            brEak ++;
        }
    }

    // if the letters are not repeated
    if (count_num == 0 && brEak == 0) {
        print("$str -> Belgilar bir necha marta takrorlanmagan !!!");
    }
            

}