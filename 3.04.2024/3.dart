// ------------------------------------------  1- usul  ---------------------------------------------------

// void main(List<String> args) {
//     // Objects section
//     var salomlash = Salomlashuv();
//     salomlash.helloTime("ayirli tong");
//     salomlash.helloTime("Hayirli kun");
//     salomlash.helloTime("Hayirli kech");
// }

// class Salomlashuv {

//     void helloTime(String salom) {
//         print(salom);
//     }
// }

// ------------------------------------------  2 - Usul  ------------------------------------------------

import 'dart:io';

void main(List<String> args) {
  var dayTime = Salomlashuv();
  dayTime.manage();
}

class Salomlashuv {
  void goodMorning() {
    print("Hayirli tong\n");
  }

  void goodEvening() {
    print("Hayirli kun\n");
  }

  void goodNight() {
    print("Hayirli tun\n");
  }

  void manage() {
    while (true) {
      // input time day
      print("Salomlashish vahtini tanlang_(tong, kun, tun, exit)...");
      String? goodTime = stdin.readLineSync()!;

      // day time morning
      if (goodTime == "tong") {
        stdout.write('\x1B[2J\x1B[0;0H');
        goodMorning();
      }

      // day time evening
      if (goodTime == "kun") {
        stdout.write('\x1B[2J\x1B[0;0H');
        goodEvening();
      }

      // day time night
      if (goodTime == "tun") {
        stdout.write('\x1B[2J\x1B[0;0H');
        goodNight();
      }

      // exit programa
      if (goodTime == "exit") {
        exit(0);
      }
    }
  }
}
