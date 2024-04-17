import 'dart:io';
void main(List<String> args) {
  
  List<Map<String, dynamic>> todo = [];

  while (true) {
      print("\n1_Reja qo'shish: ");
      print("2_Reja o'zgartirish: ");
      print("3_Reja o'chirish: ");
      print("4_Reja ko'rish: ");
      print("5_Chiqish: \n");
      int part = int.parse(stdin.readLineSync()!);

    switch (part) {
        case 1: reja_qosh(todo);

        case 2: reja_ozgar(todo);
                       
        case 3: reja_ochir(todo);

        case 4: reja_chopet(todo);

        default: exit(0);
    }
  }
}

void reja_qosh(List todo) {

    stdout.write("id: ");
    int id = int.parse(stdin.readLineSync()!);

    stdout.write("Title: ");
    String? title = stdin.readLineSync();

    stdout.write("Date(Y-M-D): ");
    DateTime date = DateTime.parse(stdin.readLineSync()!);

    Map<String, dynamic> reja = {
        "id": id, 
        "title": title, 
        "date": date
        };
    todo.add(reja);
    print("\nQo'shgan rejangiz: $reja:");
    
}

void reja_ozgar(List todo) {
    stdout.write("id: ");
    int id = int.parse(stdin.readLineSync()!);
    todo.removeWhere((element) => element["id"] == id);
    print("Yangi reja: \n");

    stdout.write("id: ");
    int id2 = int.parse(stdin.readLineSync()!);

    stdout.write("Title: ");
    String? title = stdin.readLineSync();

    stdout.write("Date(Y-M-D): ");
    DateTime date = DateTime.parse(stdin.readLineSync()!);

    Map<String, dynamic> reja = {
        "id": id2, 
        "title": title, 
        "date": date
        };
    todo.add(reja);
    print("\nTahrirlangan rejangiz: $reja\n");

}

void reja_ochir(List todo) {
    stdout.write("id: ");
    int id = int.parse(stdin.readLineSync()!);
    todo.removeWhere((element) => element["id"] == id);
    print("REJA O'CHRILDI...\n");
}

void reja_chopet(List todo) {
    print("UMUMIY REJALAR: \n");
    print(todo);
}