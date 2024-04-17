import 'dart:io';
void main(List<String> args) {
    while (true) {
        List ls = [];
        
       try {
        // How many add avtomabil ???
        stdout.write("Nechta Avtomobil kiritmoqchisiz ???...");
        int count = int.parse(stdin.readLineSync()!);
        stdout.write('\x1B[2J\x1B[0;0H');


        // User input objects !!!
        for (var i = 0; i < count; i++) {
            stdout.write('\x1B[2J\x1B[0;0H');
            print("${i + 1} - Avtomabil...\n");

            stdout.write("Model: ");
            String? model = stdin.readLineSync()!;
            stdout.write("Color: ");
            String? color = stdin.readLineSync()!;
            stdout.write("Year: ");
            int year = int.parse(stdin.readLineSync()!);
            stdout.write("Price: ");
            int price = int.parse(stdin.readLineSync()!);

            // add objects
            ls.add(Cars(model, color, year, price));

            
        }
        // EXIT section
        print("exit.Chiqish...\n");
        String? cases = stdin.readLineSync()!;
        if (cases == "exit") {
            print("Barcha Avtomabillar ro'yxati...\n");
            Cars.toStrings(ls);
            print("\nYili bo'yicha so'rtlangan Avtomabillar...\n");
            Cars.sortss(ls);
            return;
        }

       } catch (e) {
            print("Notog'ri tanlov !!!\n");
       }
    }
}

// class cars
class Cars {
    String model;
    String color;
    int year;
    int price;

    Cars(this.model, this.color, this.year, this.price);
    // static method --> printer information !!!
    static void toStrings(List ls) {
        for (var i = 0; i < ls.length; i++) {
            print("\n--> ${i + 1} - Avtomabil -->\n");
            print("Model: ${ls[i].model}\nColor: ${ls[i].color}\nYear: ${ls[i].year}\nPrice: ${ls[i].price}");
        }
    }

    static void sortss(List ls) {
        // sort method
        ls.sort((a, b) => a.year.compareTo(b.year));

        for (var i = 0; i < ls.length; i++) {
            print("\n--> ${i + 1} - Avtomabil -->\n");
            print("Model: ${ls[i].model}\nColor: ${ls[i].color}\nYear: ${ls[i].year}\nPrice: ${ls[i].price}");
        }
    }
}