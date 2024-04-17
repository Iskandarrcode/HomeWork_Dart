import 'dart:io';

void main(List<String> args) {
  List<EventPlans> events = [];
  stdout.write("NECHTA TADBIR QO'SHMOQCHISIIZ ?...  ");
  int eventsNumber = int.parse(stdin.readLineSync()!);

    // INPUT EVENTS
  for (var i = 0; i < eventsNumber; i++) {
    stdout.write('\x1B[2J\x1B[0;0H');
    // INPUT EVENT NAME
    stdout.write("${i + 1} - Tadbir nomi: ");
    String? eventName = stdin.readLineSync();

    // INPUT EVENT DATE
    stdout.write("${i + 1} - Tadbir sanasi: ");
    String? eventDate = stdin.readLineSync();

    // INPUT EVENT TIME
    stdout.write("${i + 1} - Tadbir vaqti: ");
    String? eventTime = stdin.readLineSync()!;

    // CHECK NULL
    if (eventName != null && eventDate != null) {
      // add events plans
      events.add(EventPlans(eventName, eventDate, eventTime));
    } else {
      print(
          "Xatolik: Tadbir nomi, sanasi va vaqti bo'sh bo'lishi mumkin emas!");
    }
  }
  stdout.write('\x1B[2J\x1B[0;0H');
    events[0].showEvents(events);
}

class EventPlans {
  String evensName;
  String evensDate;
  String evensTime;

  EventPlans(this.evensName, this.evensDate, this.evensTime);

    // SHOW EVENTS METHOD
  void showEvents(List events) {
    for (var i = 0; i < events.length; i++) {
      print(
          "${i + 1} - TADBIR NOMI: $evensName\nTADBIR SANASI: $evensDate\nTADIBR VAQTI: $evensTime\n");
    }
  }
}
