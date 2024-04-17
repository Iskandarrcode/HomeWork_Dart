void main(List<String> args) {
    // objects class
  var lion = Lion();
  var panther = Panther();
  var wolf = Wolf();

  lion.hunt();
  lion.animalAttack();
  lion.animalBest();

  panther.hunt();
  panther.animalAttack();

  wolf.hunt();
  wolf.animalAttack();
  wolf.animalEscape();
}

// abstract class Pedator
abstract class Pedator {
    void hunt();
}

// mixin Attack
mixin Attack {
    void animalAttack() {}
}

// mixin Escape
mixin Escape {
    void animalEscape() {}
}

// mixin Best
mixin Best {
    void animalBest() {}
}

// class Lion extends Pedator
class Lion extends Pedator with Attack, Best {
    @override
  void hunt() {
    print("Arslon Ov qildi");
  }
  
//   mixin Attack
  @override
  void animalAttack() {
    print("class Lion mixin Attack ishladi");
  }

    // mixin Best
  @override
  void animalBest() {
    print("class Lion mixin Best ishladi\n");    
  }
}


// class Panther extends Pedator
class Panther extends Pedator with Attack {
  @override
  void hunt() {
    print("Qoplon Ov Qildi");
  }
//   mixin Attack
  @override
  void animalAttack() {
    print("class Panther mixin Attack ishladi\n");    
  }
}
 
// class Wolf extends Pedator
class Wolf extends Pedator with Attack, Escape {
    @override
  void hunt() {
    print("Bo'ri Ov Qildi");
  }

    // mixin Attack
  @override
  void animalAttack() {
    print("class Wolf mixin Attack ishladi");
  }

    // mixin Escape
  @override
  void animalEscape() {
    print("class Wolf mixin Escape ishladi\n");
  }

}
