import 'dart:io';

void main(List<String> args) {
    stdout.write('\x1B[2J\x1B[0;0H');
    print("\nRESTARANIMIZGA HUSH KELIBSIZ !!!\n");
    while (true) {
        print("1.JADVAL\n2.STO'L\n3.OVQATLAR\n");
        String? part = stdin.readLineSync()!;

        switch (part) {
            case "1":
                // Restoran.bookTable(tables);
            break;
            default:
        }
    }
}

class Meal {
  String name;

  Meal(this.name);
}

class Table {
  int number;

  Table(this.number);

}

class Order {
  Table table;
  Meal meal;

  Order(this.table, this.meal);
}

class Restoran {

  List meals = [
    "osh",
    "manti",
    "chuchvar", 
    "shashlik"
  ];

  List tables = [];
  List orders = [];

  Restoran(this.meals, this.tables, this.orders);

    static addMeal(List meals) {}

    static bookTable(List tables) {
        stdout.write("NECHTA SO'L BUYURTMA BERASIZ ?...");
        int number = int.parse(stdin.readLineSync()!);

        for (var i = 0; i < number; i++) {
            stdout.write("${i+1} - STO'L RAQAMI... ");
            int number = int.parse(stdin.readLineSync()!);
            tables.add(Table(number));
        }
    }

    static orderMeal(List orders) {}
}
