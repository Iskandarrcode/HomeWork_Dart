/*Asosiy kredit miqdori, foiz stavkasi va vaqtni (yil) hisobga olgan holda
oddiy foizlarni hisoblaydigan dasturni ishlab chiqing. Foydalanuvchi ushbu
ma’lumotlarni kiritadi dastur esa hisoblab beradi.
Foiz miqdorini hisoblash formulasi:
Umumiy miqdor = (Kredit miqdori * Foiz stavkasi * Oy) / 100 */

import 'dart:io';
void main(List<String> args) {
    credit();
}

// Method credits
void credit() {
    // Input How many credit
    stdout.write("How many credit you get:  ");
    int c_price = int.parse(stdin.readLineSync()!);

    // Input How many years
    stdout.write("How many years do you want to buy?:  ");
    int c_time = int.parse(stdin.readLineSync()!);

    // Input How many percentage
    stdout.write("What percentage do you want to get?:  ");
    int c_par = int.parse(stdin.readLineSync()!);
    
    // Common credits summa
    double sum = (c_price * c_par * (c_time * 12)) / 100;

    print("Common: $sum so'm");
}