import 'dart:async';
import 'dart:io';
void main(List<String> args) {
    // input time
    print("\n                                               PAMIDOR TEXNIKASI\n");
    print("ISH VAQTINI DAVOMIYLIGINI KIRITING(sekund): ");
    int? duration = int.parse(stdin.readLineSync()!);
    print("TANAFUS VAQTINI KIRITING(sekund): ");
    int? breakTime = int.parse(stdin.readLineSync()!);

    tomato(duration, breakTime);
    // tomato2(duration, breakTime);
}

// tomato timer Timer.periodic()
void tomato(int duration, int breakTime) {
  int resTeme = duration;
  Timer.periodic(Duration(seconds: 1), (timer) {
    stdout.write('\x1B[2J\x1B[0;0H');
    print("\n                                          ISH VAQTI: $resTeme Sekund");
    resTeme -= 1;
    // after business hours
    if (resTeme <= 0) {
        // break timer
        stdout.write('\x1B[2J\x1B[0;0H');
        print("\n                                        --> ISH VAQTI TUGADI <--\n");
        breakTime -= 1;
        print("\n                                         TANAFUS VAQT: $breakTime Sekund");
        // break time off
        if (breakTime == 0) {
          stdout.write('\x1B[2J\x1B[0;0H');
          print("\n                                         DASTUR TUGATILDI\n");
          timer.cancel();
        }
      
    }
  });
}

// tomato method 2
void tomato2(int duration, int breakTime) {
    stdout.write('\x1B[2J\x1B[0;0H');
    print("\n                                          ISH VAQTI $duration Sekund\n");

    // Future.delayed ()
    Future.delayed(Duration(seconds: duration), () {
        stdout.write('\x1B[2J\x1B[0;0H');
        print("\n                                        --> ISH VAQTI TUGADI <--\n");
        print("\n                                         TANAFUS VAQT: $breakTime Sekund");
        Future.delayed(Duration(seconds: breakTime), () {
            stdout.write('\x1B[2J\x1B[0;0H');
            print("\n                                         DASTUR TUGATILDI\n");
        });

    });
}