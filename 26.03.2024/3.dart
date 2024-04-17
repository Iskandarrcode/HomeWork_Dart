/*Kompyuterga qarshi ikki o'yinchi tosh-qog'oz-qaychi o'yinini qiling.
O'yinchidan tanlagan narsasini so'rang, ularni taqqoslang, g'olibga
xabarni chop eting. */

import 'dart:io';
import 'dart:math';
void main(List<String> args) {
    int rand_nums = 1 + Random().nextInt(3);
    print("Rand sonni shunchaki test uchun choq etdim: ");
    print("randum: $rand_nums");

    // input user numbers
    print("1 dan 3 gacha raqam kiriting: 1: Tosh, 2:Qaychi, 3: Qog'oz: ");
    int user_nums = int.parse(stdin.readLineSync()!);

    // is the number entered by the user equal to random
    if (user_nums == rand_nums) {
        print("=>_USER VONE_<=");
        if (user_nums == 1) {
            // What is action won
            print("Rand:> Tosh == User:>Tosh");
        }
        if (user_nums == 2) {
            // What is action won
            print("Rand:> Qaychi == User:> Qaychi");
        }
        if (user_nums == 3) {
            // What is action won
            print("Rand:> Qog'oz == User:> Qog'oz");
        }
     // random is not equal to the number entered by the user
    }else {
        // cycle repetition
        while(user_nums != rand_nums) {
            int rand_nums = 1 + Random().nextInt(3);
            print("randum: $rand_nums");

            // Input user number
            print("1 dan 3 gacha raqam kiriting: 1: Tosh, 2:Qaychi, 3: Qog'oz: ");
            int user_nums = int.parse(stdin.readLineSync()!);

            // check numbers
            if (user_nums == rand_nums) {
                print("=>_USER VONE_<=");
                if (user_nums == 1) {
                    print("Rand:> Tosh == User:>Tosh");
                    break;
                }
                if (user_nums == 2) {
                    print("Rand:> Qaychi == User:> Qaychi");
                    break;
                }
                if (user_nums == 3) {
                    print("Rand:> Qog'oz == User:> Qog'oz");
                    break;
                }
            }
        }
    }

    

}