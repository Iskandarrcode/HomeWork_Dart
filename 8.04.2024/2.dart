void main(List<String> args) {
//   objects
  var food = Food();
  var sweetnes = Sweetnes();

  print("\nFood Class");
  food.taste();
  print("\nSweetnes Class");
  sweetnes.taste();
}

// class Food
class Food {
  void taste() {
    print("Tamini anglatadi");
  }
}

// class Sweetnse
class Sweetnes extends Food {
  @override
  void taste() {
    super.taste();
  }
}
