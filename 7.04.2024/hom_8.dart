// class shart emas degandilar o'shnchun class ishlatmadim !!!
import 'dart:io';
void main(List<String> args) {
  List searchProduct = [];
  List products = [
    "SHIM",
    "SHO'RTIK",
    "KRASOFKA",
    "KARTOSHKA",
    "KIYIM",
    "PIYOLA",
    "PAMIDO",
    "SOAT",
    "SIR",
    "OLMA",
    "OLCHA",
    "ANANAS",
    "MANGO",
    "BANAN",
    "ANOR",
    "AXLAT QUTI"
  ];
  stdout.write("\nNIMA QIDIRYABSIZ 😊 ...   ");

  String? search = stdin.readLineSync()!.toUpperCase();
  // exit programm
  if (search == "EXIT") {
    exit(0);
  }

  stdout.write('\x1B[2J\x1B[0;0H');
  bool check = false;

  // search in products
  for (var i = 0; i < products.length; i++) {
    if (products[i].toUpperCase() == search) {
      stdout.write('\x1B[2J\x1B[0;0H');
      print("\n${products[i].toUpperCase()} BIZNING OMBORDA MAVJUD 😊\n");
      check = true;
    }
  }

  // search in products
  for (var i = 0; i < products.length; i++) {
    if (products[i].startsWith(search)) {
      searchProduct.add(products[i]);
      check = true;
    }
  }

  // sort the alphabit
  searchProduct.sort();
  stdout.write('\x1B[2J\x1B[0;0H');
  print(
      "\n_____________________________________PRADUCTALAR___________________________________________\n\n");

  // print products
  for (var i = 0; i < searchProduct.length; i++) {
    print("${i + 1}.${searchProduct[i]}");
  }

  // search in products and information this not product
  if (check == false) {
    stdout.write('\x1B[2J\x1B[0;0H');
    print("\nKECHIRASIZ BUNDAY MAXSULOT BIZNING OMBORDA MAVJUD EMAS EKAN 😔\n");
  }
}
