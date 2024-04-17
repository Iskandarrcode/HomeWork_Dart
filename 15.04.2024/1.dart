import 'dart:io';

void main(List<String> args) {
  List<Electronic> electronicData = [
    Electronic(123, "Televizor", 120),
    Electronic(1234, "Haladelnik", 150),
    Electronic(12345, "Kir Moshina", 200),
    Electronic(123456, "Kandisaner", 250)
  ];
  List<Clothing> clothingData = [
    Clothing(987, "Shim", 123),
    Clothing(9876, "Ko'ylak", 129),
    Clothing(98765, "Shafka", 50),
    Clothing(6543, "Sharf", 100)
  ];
  List<Groceries> groceriesData = [
    Groceries(111, "Osh", 200),
    Groceries(222, "Manti", 300), 
    Groceries(444, "Somsa", 150), 
    Groceries(555, "Barak", 500)
  ];

  List<dynamic> showBasket = [];
  print("\nSALAMALEYKUM HARIDOR BO'LIMNI TANLANG...\n");

  // case choose
  print("1.ELEKTRONIKA...\n2.KIYIMLAR...\n3.OZIQ-OVQAT...\n0.Exit...\n");
  String? choose = stdin.readLineSync()!;
  stdout.write('\x1B[2J\x1B[0;0H');

  switch (choose) {
    // CASE ELECTORNIC PRODUCTS
    case "1":
      stdout.write('\x1B[2J\x1B[0;0H');
      print(
          "\n                                  --> ELEKTONIKA BO'LIMIGA HUSH KELIBSIZ <--\n\n");
      print("Nima qilishni istaysi?...\n");
      while (true) {
        print(
            "\n1.Umumiy maxsulotlarni ko'rish\n2.Savatga maxsulot qo'shish\n3.Savtdan maxsulot o'chirish\n4.Savatdagi maxsulotlar\n5.Savat Narxi...\n0.Exit...\n");
        String? chooseElectronica = stdin.readLineSync()!;
        stdout.write('\x1B[2J\x1B[0;0H');

        switch (chooseElectronica) {
          case "1":
            // CASE SHOW
            stdout.write('\x1B[2J\x1B[0;0H');
            Electronic.displayInfo(electronicData);
            break;
          case "2":
            stdout.write('\x1B[2J\x1B[0;0H');
            Electronic.addBasket(electronicData, showBasket);
            break;
          case "3":
            stdout.write('\x1B[2J\x1B[0;0H');
            Electronic.removeBasket(electronicData, showBasket);
            break;
          case "4":
            stdout.write('\x1B[2J\x1B[0;0H');
            Electronic.infoBasket(showBasket);
            break;
          case "5":
            stdout.write('\x1B[2J\x1B[0;0H');
            Electronic.summPrice(showBasket);
          case "0":
            exit(0);
        }
      }
    case "2":
      stdout.write('\x1B[2J\x1B[0;0H');
      print(
          "\n                                  --> KIYIMLAR BO'LIMIGA HUSH KELIBSIZ <--\n\n");
      print("Nima qilishni istaysi?...\n");
      while (true) {
        print(
            "\n1.Umumiy maxsulotlarni ko'rish\n2.Savatga maxsulot qo'shish\n3.Savtdan maxsulot o'chirish\n4.Savatdagi maxsulotlar\n5.Savatdagi Narx\n0.Exit...\n");
        String? chooseElectronica = stdin.readLineSync()!;
        stdout.write('\x1B[2J\x1B[0;0H');

        switch (chooseElectronica) {
          case "1":
            // CASE SHOW
            stdout.write('\x1B[2J\x1B[0;0H');
            Clothing.displayInfo(clothingData);
            break;
          case "2":
            stdout.write('\x1B[2J\x1B[0;0H');
            Clothing.addBasket(clothingData, showBasket);
            break;
          case "3":
            stdout.write('\x1B[2J\x1B[0;0H');
            Clothing.removeBasket(clothingData, showBasket);
            break;
          case "4":
            stdout.write('\x1B[2J\x1B[0;0H');
            Clothing.infoBasket(showBasket);
            break;
          case "5":
            stdout.write('\x1B[2J\x1B[0;0H');
            Clothing.summPrice(showBasket);
          case "0":
            exit(0);
        }
      }
    case "3":
      stdout.write('\x1B[2J\x1B[0;0H');
      print(
          "\n                                  --> ELEKTONIKA BO'LIMIGA HUSH KELIBSIZ <--\n\n");
      print("Nima qilishni istaysi?...\n");
      while (true) {
        print(
            "\n1.Umumiy maxsulotlarni ko'rish\n2.Savatga maxsulot qo'shish\n3.Savtdan maxsulot o'chirish\n4.Savatdagi maxsulotlar\n5.Savat Narxi...\n0.Exit...\n");
        String? chooseElectronica = stdin.readLineSync()!;
        stdout.write('\x1B[2J\x1B[0;0H');

        switch (chooseElectronica) {
          case "1":
            // CASE SHOW
            stdout.write('\x1B[2J\x1B[0;0H');
            Groceries.displayInfo(groceriesData);
            break;
          case "2":
            stdout.write('\x1B[2J\x1B[0;0H');
            Groceries.addBasket(groceriesData, showBasket);
            break;
          case "3":
            stdout.write('\x1B[2J\x1B[0;0H');
            Groceries.removeBasket(groceriesData, showBasket);
            break;
          case "4":
            stdout.write('\x1B[2J\x1B[0;0H');
            Groceries.infoBasket(showBasket);
            break;
          case "5":
            stdout.write('\x1B[2J\x1B[0;0H');
            Groceries.summPrice(showBasket);
          case "0":
            exit(0);
        }
      }
    default:
  }
}

// abstract class Product
abstract class Product {
  // these are propertyes
  late int id;
  late String name;
  late int price;

  // show this method prints the Information
  static displayInfo() {}
}

// interface class CartOpaeration
class CartOperation {
  // method add basket
  static addBasket(int id, String name, int price) {}

  // method remove basket
  static removeBasket(int id, String name, int price) {}

  // method productsBasket
  static infoBasket(int id, String name, int price) {}

  // method summPrice
  static summPrice(int price) {}
}

// Subclass Electronic
class Electronic extends Product implements CartOperation {
  late int id;
  late String name;
  late int price;
  Electronic(this.id, this.name, this.price);

  // Product class get displayInfo method
  @override
  static displayInfo(List electronicData) {
    for (var i = 0; i < electronicData.length; i++) {
      print(
          "\nId: ${electronicData[i].id}\nNomi: ${electronicData[i].name}\nNarxi: ${electronicData[i].price}");
    }
  }

  // interface class get add basket mathod
  @override
  static addBasket(List electronicData, List showBasket) {
    for (var i = 0; i < electronicData.length; i++) {
      print(
          "\nId: ${electronicData[i].id}\nNomi: ${electronicData[i].name}\nNarxi: ${electronicData[i].price}");
    }

    print("\nProduct id kiriting: ");
    int? id = int.parse(stdin.readLineSync()!);

    for (var i = 0; i < electronicData.length; i++) {
      if (electronicData[i].id == id) {
        showBasket.add(electronicData[i]);
        stdout.write('\x1B[2J\x1B[0;0H');
        print("Maxsulot Savatga qo'shildi\n");
        return;
      }
    }
  }

  // interface class get remove basket mathod
  @override
  static removeBasket(List electronicData, List showBasket) {
    // chek showBasket isEmpty
    if (showBasket.isEmpty) {
      stdout.write('\x1B[2J\x1B[0;0H');
      print("\nSavatda Maxsulot mavjud emas !!!\n");
    } else {
      for (var i = 0; i < electronicData.length; i++) {
        print(
            "\nId: ${electronicData[i].id}\nNomi: ${electronicData[i].name}\nNarxi: ${electronicData[i].price}");
      }
      print("\nProduct id kiriting: ");
      int? id = int.parse(stdin.readLineSync()!);

      for (var i = 0; i < electronicData.length; i++) {
        if (electronicData[i].id == id) {
          showBasket.remove(electronicData[i]);
          stdout.write('\x1B[2J\x1B[0;0H');
          print("Maxsulot Savatdan O'chirildi\n");
        }
      }
    }
  }

  // interface class get info basket mathod
  @override
  static infoBasket(List showBasket) {
    if (showBasket.length == 0) {
      stdout.write('\x1B[2J\x1B[0;0H');
      print("Savatda Maxsulot Yo'q !!!\n");
    } else {
      for (var i = 0; i < showBasket.length; i++) {
        print(
            "\nId: ${showBasket[i].id}\nNomi: ${showBasket[i].name}\nNarxi: ${showBasket[i].price}");
      }
    }
  }

  // interface class get summa price basket mathod
  @override
  static summPrice(List showBasket) {
    double summa = 0;
    for (var i = 0; i < showBasket.length; i++) {
      summa += showBasket[i].price;
    }
    stdout.write('\x1B[2J\x1B[0;0H');
    print("SAVATDAGI UMUMIY NARX --> $summa GA TENG");
  }
}

// Subclass Clothing
class Clothing extends Product implements CartOperation {
  late int id;
  late String name;
  late int price;
  Clothing(this.id, this.name, this.price);

  // Product class get displayInfo method
  @override
  static displayInfo(List clothingData) {
    for (var i = 0; i < clothingData.length; i++) {
      print(
          "\nId: ${clothingData[i].id}\nNomi: ${clothingData[i].name}\nNarxi: ${clothingData[i].price}");
    }
  }

  // interface class get add basket mathod
  @override
  static addBasket(List clothingData, List showBasket) {
    for (var i = 0; i < clothingData.length; i++) {
      print(
          "\nId: ${clothingData[i].id}\nNomi: ${clothingData[i].name}\nNarxi: ${clothingData[i].price}");
    }

    print("\nProduct id kiriting: ");
    int? id = int.parse(stdin.readLineSync()!);

    for (var i = 0; i < clothingData.length; i++) {
      if (clothingData[i].id == id) {
        showBasket.add(clothingData[i]);
        stdout.write('\x1B[2J\x1B[0;0H');
        print("Maxsulot Savatga qo'shildi\n");
        return;
      }
    }
  }

  // interface class get remove basket mathod
  @override
  static removeBasket(List clothingData, List showBasket) {
    // chek showBasket isEmpty
    if (showBasket.isEmpty) {
      stdout.write('\x1B[2J\x1B[0;0H');
      print("\nSavatda Maxsulot mavjud emas !!!\n");
    } else {
      for (var i = 0; i < clothingData.length; i++) {
        print(
            "\nId: ${clothingData[i].id}\nNomi: ${clothingData[i].name}\nNarxi: ${clothingData[i].price}");
      }
      print("\nProduct id kiriting: ");
      int? id = int.parse(stdin.readLineSync()!);

      for (var i = 0; i < clothingData.length; i++) {
        if (clothingData[i].id == id) {
          showBasket.remove(clothingData[i]);
          stdout.write('\x1B[2J\x1B[0;0H');
          print("Maxsulot Savatdan O'chirildi\n");
        }
      }
    }
  }

  // interface class get info basket mathod
  @override
  static infoBasket(List showBasket) {
    if (showBasket.length == 0) {
      stdout.write('\x1B[2J\x1B[0;0H');
      print("Savatda Maxsulot Yo'q !!!\n");
    } else {
      for (var i = 0; i < showBasket.length; i++) {
        print(
            "\nId: ${showBasket[i].id}\nNomi: ${showBasket[i].name}\nNarxi: ${showBasket[i].price}");
      }
    }
  }

  // interface class get summa price basket mathod
  @override
  static summPrice(List showBasket) {
    double summa = 0;
    for (var i = 0; i < showBasket.length; i++) {
      summa += showBasket[i].price;
    }
    stdout.write('\x1B[2J\x1B[0;0H');
    print("SAVATDAGI UMUMIY NARX --> $summa GA TENG");
  }
}

// Subclass Groceries
class Groceries extends Product implements CartOperation {
  late int id;
  late String name;
  late int price;
  Groceries(this.id, this.name, this.price);

  // Product class get displayInfo method
  @override
  static displayInfo(List groceriesData) {
    for (var i = 0; i < groceriesData.length; i++) {
      print(
          "\nId: ${groceriesData[i].id}\nNomi: ${groceriesData[i].name}\nNarxi: ${groceriesData[i].price}");
    }
  }

  // interface class get add basket mathod
  @override
  static addBasket(List groceriesData, List showBasket) {
    for (var i = 0; i < groceriesData.length; i++) {
      print(
          "\nId: ${groceriesData[i].id}\nNomi: ${groceriesData[i].name}\nNarxi: ${groceriesData[i].price}");
    }

    print("\nProduct id kiriting: ");
    int? id = int.parse(stdin.readLineSync()!);

    for (var i = 0; i < groceriesData.length; i++) {
      if (groceriesData[i].id == id) {
        showBasket.add(groceriesData[i]);
        stdout.write('\x1B[2J\x1B[0;0H');
        print("Maxsulot Savatga qo'shildi\n");
        return;
      }
    }
  }

  // interface class get remove basket mathod
  @override
  static removeBasket(List groceriesData, List showBasket) {
    // chek showBasket isEmpty
    if (showBasket.isEmpty) {
      stdout.write('\x1B[2J\x1B[0;0H');
      print("\nSavatda Maxsulot mavjud emas !!!\n");
    } else {
      for (var i = 0; i < groceriesData.length; i++) {
        print(
            "\nId: ${groceriesData[i].id}\nNomi: ${groceriesData[i].name}\nNarxi: ${groceriesData[i].price}");
      }
      print("\nProduct id kiriting: ");
      int? id = int.parse(stdin.readLineSync()!);

      for (var i = 0; i < groceriesData.length; i++) {
        if (groceriesData[i].id == id) {
          showBasket.remove(groceriesData[i]);
          stdout.write('\x1B[2J\x1B[0;0H');
          print("Maxsulot Savatdan O'chirildi\n");
        }
      }
    }
  }

  // interface class get info basket mathod
  @override
  static infoBasket(List showBasket) {
    if (showBasket.length == 0) {
      stdout.write('\x1B[2J\x1B[0;0H');
      print("Savatda Maxsulot Yo'q !!!\n");
    } else {
      for (var i = 0; i < showBasket.length; i++) {
        print(
            "\nId: ${showBasket[i].id}\nNomi: ${showBasket[i].name}\nNarxi: ${showBasket[i].price}");
      }
    }
  }

  // interface class get summa price basket mathod
  @override
  static summPrice(List showBasket) {
    double summa = 0;
    for (var i = 0; i < showBasket.length; i++) {
      summa += showBasket[i].price;
    }
    stdout.write('\x1B[2J\x1B[0;0H');
    print("SAVATDAGI UMUMIY NARX --> $summa GA TENG");
  }
}
