import 'dart:io';

void main(List<String> args) {
    gamePolech();
}

void gamePolech() {
    print("\n                          --> POLECHUDES O'YINIGA HUSH KELIBSIZ !!! <--\n");
    print("Men o'ylagan so'zni topish uchun harflarni kiritasiz kerak...\n");
    // think String
    String think = "nima";
    // this is List --> String spit 
    List ls = think.split("");
    // given opportunities
    int len = 2 * think.length;
    // True answers
    String answer = "";

    for(int i = 0; i < len; i++) {
        // Input answers
        stdout.write("Harf kiriting (${len - i} ta urinish)...\n");
        String? inputString = stdin.readLineSync()!;
        stdout.write('\x1B[2J\x1B[0;0H');

        // check answer
        // The number of error attempts depends on the length of the input String !!!
        // number of attempts --> (ls.length)
        for (int j = 0; j < ls.length; j++) {
            if (inputString == ls[j]) {
                // save the correct answers
                print("\nTo'g'ri topdingiz davom eting...\n");
                answer += inputString;
                if (think.length == answer.length) {
                    // game over
                    stdout.write('\x1B[2J\x1B[0;0H');
                    print("                          --> GAME OVER <--\n--> TABRIKLAYMAN SIZ G'OLIB BO'LDINGIZ !!! <--");
                    print("O'ylangan so'z: --> ${think} <-- edi\n");
                    print("Urunishlar soni --> $i ta <-- ");
                    return;

                }
                // ture answer remove in List
                ls.remove(inputString);
            }
            // Is not String in iniputString
            if (j == ls.length - 1) {
                if (!think.contains(inputString)) {
                    print("Bunday harf yo'q !!!");
                }
            }
        }

    }

    // when the answers are correct
    if (think.length == answer.length) {
        print("                          --> GAME OVER <--\n--> TABRIKLAYMAN SIZ G'OLIB BO'LDINGIZ !!! <--");
    }
    else {
        print("                          --> GAME OVER <--");
        print("O'ylangan so'z: --> ${think} <-- edi\n");
        print("""--> AFSUSKI SIZ BU O'YINDA YUTQAZDINGIZ !!! <--\n\n
    SIZ ${answer.length} ta belgini to'g'ri topdingiz !!!\n
    Bu belgilar --> ${answer} <--""");
    }

}