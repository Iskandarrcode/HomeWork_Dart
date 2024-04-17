void main(List<String> args) {
// model aware
    Phones? phone = Phones();

    // model not null -->
    phone
      ..model = "Samsung"
      ..year = 2020
      ..phoneInfo();
}

// class phones
class Phones {
    String? model;
    int? year;

    // phoneInfo method
    void phoneInfo() {
        if (model != null && year != null) {
            print("Model: $model\nYear: $year");
        }
        else {
            print("Model va year obektlari mavjud emas !!!");
        }
    }
}
