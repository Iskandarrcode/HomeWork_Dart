void main(List<String> args) {
  // OBJECTS SECTION
  var avtomabil1 = Avtomabil("Nexia", 2015, 8000);
  var avtomabil2 = Avtomabil("Cobalt", 2020, 12000);
  var avtomabil3 = Avtomabil("Maluba", 2023, 30000);
  var avtomabil4 = Avtomabil("BMW", 2024, 80000);

  avtomabil1.avtoInfo();
  avtomabil2.avtoInfo();
  avtomabil3.avtoInfo();
  avtomabil4.avtoInfo();
}

class Avtomabil {
  String model;
  int year;
  int price;

  Avtomabil(this.model, this.year, this.price);
  // AVTO INFORMATION
  void avtoInfo() {
    print("\nModeli: $model\nYili: $year\nNarxi: $price\n");
  }
}
