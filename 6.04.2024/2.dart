import 'dart:io';

void main(List<String> args) {
  // Kantaktlarni Map ga saqlaydigan dastur agar Telefon raqam takrorlansa ogohlantradi !!!
  print("CANTACT SAQLASH DASTURIGA HUSH KELIBSIZ...\n");
  stdout.write("Nechta Cantact saqlamoqchisiz?...  ");
  int count = int.parse(stdin.readLineSync()!);

  Map data = {};

  for (var i = 0; i < count; i++) {
    stdout.write("Ism kiriting: ");
    String? name = stdin.readLineSync()!;

    stdout.write("Telefo'n raqam kiriting: ");
    String? message = stdin.readLineSync()!;

    getUserInput(message);

    if (!data.containsValue(message)) {
      data[name] = message;
    } else {
      print("\nRAQAM OLDIN FOYDALANILGAN !!!\n");
    }
  }

  print(data);
}

String getUserInput(String message) {
  print(message);
  String? userInput = stdin.readLineSync();
  while (userInput == null || userInput.trim().isEmpty) {
    stdout.write(message);
    userInput = stdin.readLineSync();
  }
  return userInput;
}
