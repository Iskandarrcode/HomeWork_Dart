import 'dart:io';

void main(List<String> args) {
  // Mevalarni omborga saqlaydigandan kegin hohlagan mevani narxini so'rasa chop etib beruvchi dastur
  print("MEVALAR OMBORIGA HUSH KELIBSIZ...\n");
  stdout.write("Nechta Meva saqlamoqchisiz?...  ");
  int count = int.parse(stdin.readLineSync()!);

  Map data = {};

  stdout.write('\x1B[2J\x1B[0;0H');
  for (var i = 0; i < count; i++) {
    stdout.write("\nMevani ismini kiriting: ");
    String? name = stdin.readLineSync()!;

    stdout.write("Mevani Narxini kiriting: ");
    String? price = stdin.readLineSync()!;

    if (!data.containsKey(name)) {
      data[name] = price;
    } else {
      print("\nMEVA OLDIN KIRITILGAN !!!\n");
    }
  }

  print("\nQaysi mevani narxi sizga qiziq? ...\n");
  String? fruitName = stdin.readLineSync()!;

  if (data.containsKey(fruitName)) {
    print("\nNarxi: ${data[fruitName]} So'm\n");
  } else {
    print("\nOMBORDA BUNDAY MEVA YO'Q !!!\n");
  }
}
