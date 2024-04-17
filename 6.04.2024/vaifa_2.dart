import 'dart:io';

void main(List<String> args) {
  // data informatin
  List<Science> scienceData = [];

  while (true) {
    try {
      print("\n\n1.FAN QO'SHISH\n2.FANLAR RO'YHATI\n3.O'QISH VAHTI\n\nexit --> DASTURDAN CHIQISH !!!\n");
      String? cases = stdin.readLineSync()!;

      switch (cases) {
        case "1":
          stdout.write('\x1B[2J\x1B[0;0H');
          Science.addScience(scienceData);
          break;
        case "2":
          stdout.write('\x1B[2J\x1B[0;0H');
          for (int i = 0; i < scienceData.length; i++) {
            print(
                "FAN NOMI: ${scienceData[i].scienceName} HAFTASIGA --> ${scienceData[i].dateLineWeek} SOAT");
          }
          break;
        case "3":
          stdout.write('\x1B[2J\x1B[0;0H');
          Science.stadyPlans(scienceData);

        case "exit":
          exit(0);
        default:
      }
    } catch (e) {
      print("\nERROR !!!");
    }
  }
}

// class Science
class Science {
  String scienceName;
  int dateLineWeek;

  Science(this.scienceName, this.dateLineWeek);

  static addScience(List scienceData) {
    // input how many science ?
    stdout.write("\nNECHTA FAN QO'SHMOQCHISIZ?...  ");
    int count = int.parse(stdin.readLineSync()!);
    stdout.write('\x1B[2J\x1B[0;0H');

    for (var i = 0; i < count; i++) {
      // input science name and science date
      stdout.write("\nFAN NOMINI KIRITING...  ");
      String? scienceName = stdin.readLineSync()!;

      stdout.write("HAFTASIGA NECHI SOATDAN...  ");
      int dateLineWeek = int.parse(stdin.readLineSync()!);

      // add information in data
      scienceData.add(Science(scienceName, dateLineWeek));
    }
  }

  // Stady Plans Method
  static stadyPlans(List scienceData) {
    int sumDate = 0;
    for (var i = 0; i < scienceData.length; i++) {
      if (scienceData[i].scienceData % 6 == 0) {
        print(
            "\n\nDushanba (${scienceData[i].scienceName}) --> ${scienceData[i].scienceData / 6} Soat:");
        print(
            "Seshanba (${scienceData[i].scienceName}) --> ${scienceData[i].scienceData / 6} Soat:");
        print(
            "Chorshanba (${scienceData[i].scienceName}) --> ${scienceData[i].scienceData / 6} Soat:");
        print(
            "Payshanba (${scienceData[i].scienceName}) --> ${scienceData[i].scienceData / 6} Soat:");
        print(
            "Juma (${scienceData[i].scienceName}) --> ${scienceData[i].scienceData / 6} Soat:");
        print(
            "Shanba (${scienceData[i].scienceName}) --> ${scienceData[i].scienceData / 6} Soat:\n");
      } else {
        sumDate = scienceData[i].dateLineWeek;
        print(
            "\n\nDushanba (${scienceData[i].scienceName}) --> ${sumDate ~/ 2} Soat:");
        sumDate = sumDate - (sumDate ~/ 2);
        print(
            "Seshanba (${scienceData[i].scienceName}) --> ${sumDate % 6} Soat:");
        print(
            "Chorshanba (${scienceData[i].scienceName}) --> ${sumDate % 2} Soat:");
        print(
            "Payshanba (${scienceData[i].scienceName}) --> ${sumDate ~/ 3} Soat:");
        print("Juma (${scienceData[i].scienceName}) --> ${sumDate ~/ 4} Soat:");
        print(
            "Shanba (${scienceData[i].scienceName}) --> ${sumDate % 4} Soat:\n");
      }
    }
  }
}
