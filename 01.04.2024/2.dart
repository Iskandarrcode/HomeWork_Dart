void main(List<String> args) {
    // Objects in Clss --> Notebooks
    var ob = Notebooks("VICTUS HP", "Black", 512, 8, 800);
    var ob2 = Notebooks("ASUS", "White", 256, 6, 500);
    var ob3 = Notebooks("DELL", "Silver", 256, 8, 400);
    // printerNotebooks Method 
    ob.printerNotebooks();
    ob2.printerNotebooks();
    ob3.printerNotebooks();
    // The price is more than 400
    print("Narxi 400 dan kattalari: \n");
    ob.sorts();
    ob2.sorts();
    ob3.sorts();

}

// This is open Notebooks class
class Notebooks {
    String model;
    String color;
    int memory;
    int aperitifMemory;
    int price;

    Notebooks (this.model, this.color, this.memory, this.aperitifMemory, this.price);

    // printer Method
    void printerNotebooks() {
        print("\nNomi: $model\nRangi: $color\Xotirasi: $memory\nOperativni Xotira: $aperitifMemory\nNarxi: $price\n");
    }
    // sorted Method
    void sorts() {
        if (price > 400) {
            print("\nNomi: $model\nRangi: $color\Xotirasi: $memory\nOperativni Xotira: $aperitifMemory\nNarxi: $price\n");
        }
    }

}