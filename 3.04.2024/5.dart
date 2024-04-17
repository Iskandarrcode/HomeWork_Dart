void main() {
    // objects in class
  var dasturSozlamalari = DasturSozlamalari();
  dasturSozlamalari.konsolgaChiqarish();

  // object to change
  dasturSozlamalari.sozlamalarniOzgartir(til: "Qozoqcha", mavzu: "G'iybat Avjida :)", harorat: 30);
  dasturSozlamalari.konsolgaChiqarish();
}
class DasturSozlamalari {
  static DasturSozlamalari? _instance;
  String til;
  String mavzu;
  int harorat;

    // Named constructor
  DasturSozlamalari._internal({this.til = "Uzbekcha", this.mavzu = "G'iybat", this.harorat = 25});

    // Singlten
  factory DasturSozlamalari() {
    _instance ??= DasturSozlamalari._internal();
    return _instance!;
  }

  void sozlamalarniOzgartir({String? til, String? mavzu, int? harorat}) {
    if (til != null) {
      this.til = til;
    }
    if (mavzu != null) {
      this.mavzu = mavzu;
    }
    if (harorat != null) {
      this.harorat = harorat;
    }
  }

// print informatin object
  void konsolgaChiqarish() {
    print("\n\nDastur sozlamalari:");
    print("Til: $til");
    print("Mavzu: $mavzu");
    print("Harorat: $harorat daraja");
  }
}

