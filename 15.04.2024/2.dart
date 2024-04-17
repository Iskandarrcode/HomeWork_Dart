void main(List<String> args) {
  var dessert = Dessert();
  var mainCourse = MainCourse();
  var beverages = Beverages();

  dessert.displayFood();
  dessert.estimateCookingTime();
  dessert.createFood();
  dessert.orderFood();
  dessert.likeFood();

  mainCourse.displayFood();
  mainCourse.estimateCookingTime();
  mainCourse.createFood();
  mainCourse.orderFood();
  mainCourse.likeFood();

  beverages.displayFood();
  beverages.estimateCookingTime();
  beverages.createFood();
  beverages.orderFood();
  beverages.likeFood();
}

// Abstract class
abstract class Tecipe {
  late int id;
  late String title;
  late String ingredients;
  late String duration;
  late String category;

  // print Tecipe method
  void displayFood();

  // preparation time
  void estimateCookingTime();
}

// Interface class
class UserAcitons {
  // Create food method
  void createFood() {
    // Create Food section
  }

  // orderFood method
  void orderFood() {
    // order
  }

  // like method
  void likeFood() {
    // like seciton
  }
}

// Sub class Dessert
class Dessert extends Tecipe implements UserAcitons {
  @override
  // display food in desert
  void displayFood() {
    print("\nclass Dessert in displayFood method");
  }

  @override
  // estimeteCookingTime in desert
  void estimateCookingTime() {
    print("class Dessert in estimeteCookingTime method");
  }

  @override
  // create food in desert
  void createFood() {
    print("class Dessert in createFood method");
  }

  @override
  // order food in desert
  void orderFood() {
    print("class Dessert in orderFood method");
  }

  @override
  // like food in desert
  void likeFood() {
    print("class Dessert in likeFood method\n");
  }
}

// Sub class MainCourse
class MainCourse extends Tecipe implements UserAcitons {
  @override
  // display food in desert
  void displayFood() {
    print("\nclass MainCourse in displayFood method");
  }

  @override
  // estimeteCookingTime in desert
  void estimateCookingTime() {
    print("class MainCourse in estimeteCookingTime method");
  }

  @override
  // create food in desert
  void createFood() {
    print("class MainCourse in createFood method");
  }

  @override
  // order food in desert
  void orderFood() {
    print("class MainCourse in orderFood method");
  }

  @override
  // like food in desert
  void likeFood() {
    print("class MainCourse in likeFood method\n");
  }
}

// Sub class Beverages
class Beverages extends Tecipe implements UserAcitons {
  @override
  // display food in desert
  void displayFood() {
    print("\nclass Beverages in displayFood method");
  }

  @override
  // estimeteCookingTime in desert
  void estimateCookingTime() {
    print("class Beverages in estimeteCookingTime method");
  }

  @override
  // create food in desert
  void createFood() {
    print("class Beverages in createFood method");
  }

  @override
  // order food in desert
  void orderFood() {
    print("class Beverages in orderFood method");
  }

  @override
  // like food in desert
  void likeFood() {
    print("class Beverages in likeFood method\n");
  }
}
