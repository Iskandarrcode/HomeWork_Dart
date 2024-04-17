void main(List<String> args) {
  // Create two Lists: int list and string list create
  List<int> intList = [1, 2, 3, 4, 5];
  List<double> doubleList = [1.1, 2.2, 3.3, 4.4];
  List<String> stringList = ["Olma", "Anor", "Gilos"];

  // Get the last element from the list
  int lastInt = lastElement(intList);
  double lastdouble = lastElement(doubleList);
  String lastString = lastElement(stringList);

  // Print the last element from the list
  print("\nint: Tipidagi Listning Ohirgi elementi: $lastInt\n");
  print("double: Tipidagi Listning Ohirgi elementi: $lastdouble\n");
  print("string: Tipidagi Listning Ohirgi elementi: $lastString\n");
}

// Create generic function
T lastElement<T>(List<T> list) {
  if (list.isEmpty) {
    throw ArgumentError("Listda Elementlar mavjud emas !!!");
  }
  return list.last;
}
