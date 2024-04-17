/*Foydalanuvchidan raqam so'raydigan dasturni yarating, so'ngra ushbu
raqamning barcha qoldiqsiz bo'linuvchilarining ro'yxatini chiqaradi. */
import 'dart:io';
void main(List<String> args) {
    // Input number
    stdout.write("Input number: ");
    int num = int.parse(stdin.readLineSync()!);
    // find the divisors of a number
    for (var i = 1; i <= num; i++) {
        if(num % i == 0) {
            // print the number
            stdout.write("$i ");
        }
    }
}