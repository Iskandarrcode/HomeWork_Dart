void main(List<String> args) {
  var spiderMan = SpiderMan();
  var ironMan = IronMan();
  var capitanAmerica = CapitanAmerica();

  spiderMan.attack();
  spiderMan.jumps();

  ironMan.attack();
  ironMan.flies();

  capitanAmerica.attack();
  capitanAmerica.flies();
}

// Hero abstract class
abstract class Hero {
  late String name;
  late int soul;

  void attack();
}

// specialty calss --> Fly
class Fly {
  void flies() {}
}

// specialty class --> Jump
class Jump {
  void jumps() {}
}

// create heroes --> SpiderMan extends Hero and implements(interface) Jump
class SpiderMan extends Hero implements Jump {
  @override
  void attack() {
    print("\nO'rgimchak Odam Hujum qildi");
  }

  @override
  void jumps() {
    print("O'rgimchak Odam Sakradi\n");
  }
}

// create heroes --> IronMan extends Hero and implements(interface) Fly
class IronMan extends Hero implements Fly {
  @override
  void attack() {
    print("\nTemir odam hujum qildi");
  }

  @override
  void flies() {
    print("Temir Odam Uchdi\n");
  }
}

// create heroes --> CapitanAmerica extends Hero and implements(interface) Fly
class CapitanAmerica extends Hero implements Fly {
  @override
  void attack() {
    print("\nKapitan Amerika Hujum qildi");
  }

  @override
  void flies() {
    print("Kapitan Amerika Uchdi\n");
  }
}
