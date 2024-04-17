/*Foydalanuvchi 1 xadli amal kiritadi, siz esa bu amalni natijasini
chiqarishingiz kerak. Bunda switch dan foydalaning. */

import 'dart:io';

void main(List<String> args) {
    calculator();
}

// Calculations function
void calculator() {
    // input exemples
    stdout.write("Misol kiriting(12 + 10):    ");
    String? exemple = stdin.readLineSync();

    // exemple not null ?
    if (exemple != null) {
        // exemple string split(" ")
        List ls = exemple.split(" ");
        // this is 1 element in the list => num1
        int num1 = int.parse(ls[0]);
        // this is 2 elements in the list => num2
        int num2 = int.parse(ls[2]);
        // this is 3 elements in the hint => hint
        String hint = ls[1];
        // Action sellection section
        switch (hint) {
            case "+":
                print("$num1 + $num2 = ${num1 + num2} ");
                break;
            case "-":
                print("$num1 - $num2 = ${num1 - num2}");
                break;
            case "*":
                print("$num1 * $num2 = ${num1 * num2}");
                break;
            case "/":
                print("$num1 / $num2 = ${num1 / num2}");
                break;
            case "%":
                print("$num1 % $num2 = ${num1 % num2}");
                break;
            case "~/":
                print("$num1 ~/ $num2 = ${num1 ~/ num2}");
        }

    }else {
        print("Exemple null!");
    }
    
}