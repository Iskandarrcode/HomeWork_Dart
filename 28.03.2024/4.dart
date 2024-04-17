/*Foydalanuvchidan so’z so'rang va ushbu so’z palindrommi yoki yo'qligini
chop eting.
Palindrom - oldinga va orqaga bir xil o'qiydigan so’z.
Misol uchun kiyik teskarisiga ham kiyik */

import 'dart:io';
void main(List<String> args) {
    // to store the reverse string
    String str2 = "";

    // User input String
    stdout.write("So'z kiriting: ");
    String? str = stdin.readLineSync()!;
    // Reverse the string
    for (var i = str.length - 1; i >= 0; i--) {
        str2 = str2 + str[i];
    }

    // Is this palindrom
    // ________________________________Contains only identical characters____________________________
    
    if (str == str2) {
        print("\nThis is palindrom...\n");
        print("$str = $str2");
    }
    else {
        print("\nThis is not palindrom...\n");
        print("$str != $str2");
    }
}