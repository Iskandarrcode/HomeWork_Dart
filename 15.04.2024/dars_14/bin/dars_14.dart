// import 'package:dars_14/dars_14.dart' as dars_14;

void main(List<String> arguments) {
  // abjects class
  var cat = Cat();
  var dog = Dog();
  var bird = Bird();

  cat.soundAnimal();
  dog.soundAnimal();
  bird.soundAnimal();
}

// Animal abstract class
abstract class Animal {
  void soundAnimal();
}

// Cat class extends Animal class
class Cat extends Animal {
  @override
  void soundAnimal() {
    print("Miyovvv");
  }
}

// Dog class extends Animal class
class Dog extends Animal {
  @override
  void soundAnimal() {
    print("Vov Vov");
  }
}

// Bird class extends Animal class
class Bird extends Animal {
  @override
  void soundAnimal() {
    print("Chivirlarydi");
  }
}
