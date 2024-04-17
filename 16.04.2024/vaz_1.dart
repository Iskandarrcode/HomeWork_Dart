void main(List<String> args) {
    var truck = Truck(500);
    truck.move();
    truck.dump();
}

// abstract class Transport
abstract class Transport {
  void move();
}

// Interface class Carrier
class Carrier {
  double maxLoad;
  Carrier(this.maxLoad);
  void dump() {}
}

// Truck class
class Truck extends Transport implements Carrier {
  @override
  double maxLoad;
  Truck(this.maxLoad);

  @override
  void move() {
    print("Truck class in move() methodi");
  }

  @override
  void dump() {
    print("Truck $maxLoad Miqdorda yuk tashladi\n");
  }
}
