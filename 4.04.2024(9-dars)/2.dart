import 'dart:io';

void main(List<String> args) {
  List mathList = [];
//   wihle cikle
  while (true) {
    int sum = 0;
    // input string
    print("Matematik amalni kiriting_(3+5)_ko'rinishda...\n");
    print("Faqat 1 xonali raqam kiriting; \n");
    String? math = stdin.readLineSync()!;

    // exit programm
    stdout.write('\x1B[2J\x1B[0;0H');
    if(math == "exit") {
        print("Tashakkur !!!");
        break;
    }
    // split string
    mathList = math.split("");
    if (mathList.contains(" ") || mathList.length < 3) {
      print("Amal Noto'g'ri kiritildi !!!");
      break;
    } else if(mathList.length > 2) {
        if (mathList[1] == "+") {
          sum += int.parse(mathList[0]) + int.parse(mathList[mathList.length - 1]);
        }
        if (mathList[1] == "-") {
          sum = int.parse(mathList[0]) - int.parse(mathList[mathList.length - 1]);;
        }
        if (mathList[1] == "*") {
            sum = int.parse(mathList[0]) * int.parse(mathList[mathList.length - 1]);
        }
    }

    print("Sum = $sum");
  }

//   // if a or b is null
//   if (a == null || b == null) {
//     print("null");
//   } else {
//     // else actions
//     print("$a + $b = ${a + b}");
//     print("$a - $b = ${a - b}");
//     print("$a * $b = ${a * b}");
//     print("$a / $b = ${a / b}");
//   }
}
