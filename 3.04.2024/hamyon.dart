import 'dart:io';

void main(List<String> args) {
  // INPUT CARD NUMBERS
  print("KARTA RAQAM KIRITING: ");
  String? cardNumber = stdin.readLineSync()!;
  // INPUT CARD IN MONEY !!!
  print("KARTA ICHIDAGI MABLAG'I: ");
  int cardSumma = int.parse(stdin.readLineSync()!);
  // OBJECT THE CLASS
  var user = Hamyon(cardNumber, cardSumma);

  // CLEAR AND NEW CNSOL
  stdout.write('\x1B[2J\x1B[0;0H');
  print("\nSALOM QUYDAGI BO'LIMLARDAN BIRINI TANLANG 😊\n");

  while (true) {
    // THE CHOOSE  THE PART
    print(
        "\n\n1.HAMYON BALANSI👀\n2.HAMYONNI TO'DIRISH💸\n3.PUL SARFLASH🤘\n4.NIMALAR QIB QO'YDIM 😮\n5.EXIT🙁\n");
    String? part = stdin.readLineSync()!;

    switch (part) {
      // WALLET BALANCE
      case "1":
        stdout.write('\x1B[2J\x1B[0;0H');
        user.balance();
        break;
      // ADD TO WALLET
      case "2":
        stdout.write('\x1B[2J\x1B[0;0H');
        user.addMoney();
        break;
      // SPEND TO WALLET
      case "3":
        stdout.write('\x1B[2J\x1B[0;0H');
        user.spendMoney();
        break;
      // SHEE HISTORY
      case "4":
        stdout.write('\x1B[2J\x1B[0;0H');
        user.historys();
        break;
      // EXIT CONSOL AND PROGRAM
      case "5":
        stdout.write('\x1B[2J\x1B[0;0H');
        print("\nTASHRIFINGIZ UCHUN TASHAKKUR 😊");
        exit(0);
      default:
    }
  }
}

// CALASS Hamyon section
class Hamyon {
  // class propertys
  String cardNumber;
  int cardSumma;

// costructor and if !!!
  Hamyon(this.cardNumber, this.cardSumma) {
    if (this.cardSumma < 0) {
      throw "Xato summa kiritildi !!!";
    }
  }

// This is method print balance to the card
  void balance() {
    print("\nBALANCE: $cardSumma SO'M 😮\n");
  }

// This is method adds to the card
  void addMoney() {
    stdout.write("\nKARTANGIZGA QANCHA MABLAG' QO'SHMOQCHISIZ?...  ");
    int addSumma = int.parse(stdin.readLineSync()!);
    this.cardSumma += addSumma;
    print("\nKARTANGIZGA $addSumma SO'M QO'SHILDI !!!\n");
    // Writes historys to file
    _writeHistory("KARTAGA QO'SHILDI !!!F", addSumma);
  }

// This method spen to the card
  void spendMoney() {
    stdout.write("QANCHA MIQTORDA?...   ");
    int spendSumma = int.parse(stdin.readLineSync()!);
    cardSumma -= spendSumma;
    print("\nKARTANGIZDAN $spendSumma SO'M YECHILDI !!! 💸");

    // writes historys to file
    _writeHistory("KARTANGIZDAN PUL YECHILDI !!!", spendSumma);
  }

// This method see historys
  void historys() {
    File historyFile = File('history.txt');
    if (historyFile.existsSync()) {
      print(historyFile.readAsStringSync());
    } else {
      print("Hali amallar tarixi mavjud emas.");
    }
  }

// This method open the file
  void _writeHistory(String action, int amount) {
    File historyFile = File('history.txt');
    String timestamp = DateTime.now().toString();
    String entry = "$timestamp - $action $amount so'm\n";
    historyFile.writeAsStringSync(entry, mode: FileMode.append);
  }
}
