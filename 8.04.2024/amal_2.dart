import 'dart:math';

void main(List<String> args) {
  List<String> list = ["124da", "144", "256z", "512", "81", "1v24"];
  print(checkSqrt(list));
}

// Create generic function
T checkSqrt<T>(List<String> list) {
  List<double> myList = [];

  // check that it is not empty
  if (list.isNotEmpty) {
    for (var element in list) {
      try {
        // element in works replaceAll
        String onlyNumber = element.replaceAll(RegExp(r'[^0-9]'), '');

        // String to double
        double num = double.parse(onlyNumber);

        // number to sqrt
        double sqrts = sqrt(num);

        // add list in sqrt
        myList.add(sqrts);
      } catch (e) {}
    }

    // return List
    return myList as T;
  }

  throw ArgumentError("Listni ichi bo'sh");
}
