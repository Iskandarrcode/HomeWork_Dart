void main(List<String> args) {
  List maxCountWords = [];
  Map sorts = {};
  Map<String, List<String>> preferences = {
    "person1": ["apple", "banana"],
    "person2": ["banana", "oreange"],
    "person3": ["apple", "oreange", "banana"]
  };

// maps value add in maxCountWords List
  preferences.forEach((key, value) {
    for (var i = 0; i < value.length; i++) {
      maxCountWords.add(value[i]);
    }
  });

// count key and value
  maxCountWords.forEach((string) {
    sorts[string] = (sorts[string] ?? 0) + 1;
  });

// the most attended
  int b = 0;
  sorts.forEach((key, value) {
    if (value > b) {
      b = value;
    }
  });

//  the most attended in oranges
  sorts.forEach((key, value) {
    if (value == b) {
      print("\n$key\n");
    }
  });

}
