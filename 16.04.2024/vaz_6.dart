void main(List<String> args) {
  var phone = Phone();
  var laptop = Laptop();
  var tesla = Tesla();

  phone.charge();
  laptop.charge();
  tesla.charge();

}

// mixin ReCharger
mixin ReCharger {
    void charge() {}
}

// Phone class mixin ReCharger
class Phone with ReCharger {
    @override
  void charge() {
    print("\nTelefon Zaryadlandi\n");
  }
}

// Laptop class mixin ReCharger
class Laptop with ReCharger {
    @override
  void charge() {
    print("Noutbuk Zaryadlandi\n");
  }
}

// class Tesla mixin ReCharge
class Tesla with ReCharger {
    @override
  void charge() {
    print("Elektro Mabil Zarydlandi\n");    
  }
}