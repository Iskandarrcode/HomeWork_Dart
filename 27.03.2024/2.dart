/*Foydalanuvchilar uchun 5 ta savoldan iborat quiz yarating va yakunida
nechta savolga javob topganini chop eting */

import 'dart:io';
void main(List<String> args) {
    questions();
}

// Questions section !!!
void questions() {
    // count correct answers
    int count_answer = 0;
    for (int i = 1; i <= 5; i++) {
        switch (i) {
            // 1 - question
            case 1:
                print("$i - Savol:_ ");
                print("Uch burchakning ichki burchaklari yig'indisi necha gradus?... ");
                print("""A) 360:   B) 180:   C) 279:""");
                stdout.write("\nJAVOB...:  ");

                // input answer 
                String? answer = stdin.readLineSync();
                if (answer == "B") {
                    count_answer ++;
                    print("\n...TO'G'RI JAVOB...\n");
                }else {
                    print("...AFSUS NOTO'G'RI JAVOB...\n");
                }
            //  2 - question
            case 2:
                print("$i - Savol:_ ");
                print("To'rt burchakning ichki burchaklari yig'indisi necha gradus?... ");
                print("""A) 360:   B) 180:   C) 279:\n""");
                stdout.write("\nJAVOB...:  ");
                // input answer
                String? answer = stdin.readLineSync();
                if (answer == "A") {
                    count_answer ++;
                    print("\n...TO'G'RI JAVOB...\n");
                }else {
                    print("...AFSUS NOTO'G'RI JAVOB...\n");
                }
            // 3 - question
             case 3:
                print("$i - Savol:_ ");
                print("N 11 FLUTTER guruhining asosiy ustozni ismi kim?... ");
                print("""A) Ibrohim:   B) Komiljon:   C) Akmaljon:""");
                stdout.write("J\nAVOB...:  ");
                // input answer
                String? answer = stdin.readLineSync();
                if (answer == "C") {
                    count_answer ++;
                    print("\n...TO'G'RI JAVOB...\n");
                }else {
                    print("...AFSUS NOTO'G'RI JAVOB...\n");
                }
            // 4 - question
            case 4:
                print("$i - Savol:_ ");
                print("N 11 FLUTTER guruhining yordamchi ustozni ismi kim?... ");
                print("""A) Ibrohim:   B) Komiljon:   C) Akmaljon:""");
                stdout.write("\nJAVOB...:  ");
                // input answer
                String? answer = stdin.readLineSync();
                if (answer == "A") {
                    count_answer ++;
                    print("\n...TO'G'RI JAVOB...\n");
                }else {
                    print("...AFSUS NOTO'G'RI JAVOB...\n");
                }
            // 5 - question
            case 5:
                print("$i - Savol:_ ");
                print("Iskandar ning xobbiysi nima?... ");
                print("""A) Kino ko'rish:   B) Sport:   C) Uhlash:""");
                stdout.write("\nJAVOB...:  ");
                // input answer
                String? answer = stdin.readLineSync();
                if (answer == "A") {
                    count_answer ++;
                    print("\n...TO'G'RI JAVOB...\n");
                }else {
                    print("...AFSUS NOTO'G'RI JAVOB...\n");
                }
        }
    }
    // count correct answers check
    print("5 ta savoldan $count_answer tasini to'g'ri topdingiz...");
}