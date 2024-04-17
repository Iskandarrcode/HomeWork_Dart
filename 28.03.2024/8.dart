/*Foydalanuvchidan bir son so’rang va quyidagi shakldagi piramidani
chiqaring: */

import 'dart:io';
void main(List<String> args) {
    stdout.write("N ga qiymat kiriting: ");
    int n = int.parse(stdin.readLineSync()!);

    for (var i = 0; i <= n; i++) {
        for (var j = 0; j < n - i; j++) {
            stdout.write(" ");
        }
        for (var k = 0; k < i; k++) {
            stdout.write("$i ");
        }
        print("\n");
    }
}