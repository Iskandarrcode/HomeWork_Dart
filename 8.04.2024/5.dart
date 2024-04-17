void main(List<String> args) {
  // toysBase list in Classes
  List<Toys> toysBase = [Cubic(), Car(), Doll()];

  for (var i = 0; i < toysBase.length; i++) {
    // Check is there a Car in toysBase List ?
    if (toysBase[i] is Car) {
      // print Car class in play() method
      Car().play();
    }
  }
}

// Toys class
class Toys {}

// Cubic class extends Toys class
class Cubic extends Toys {
  void play() {
    print("Cubic ni o'ynamoq");
  }
}

// Car class extends Toys class
class Car extends Toys {
  void play() {
    print("Mashinani o'ynamoq");
  }
}

// Doll class extends Toys class
class Doll extends Toys {
  void play() {
    print("Qo'g'irchoqni o'ynamoq");
  }
}
