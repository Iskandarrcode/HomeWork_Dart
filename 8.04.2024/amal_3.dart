import 'dart:math';

void main(List<String> args) {
  String str = "nima144";
  print(checkNums(str));
}

// Create generic function
T checkNums<T>(String str) {
  String nums = "";

  // check list in the is not empty
  if (str.isNotEmpty) {
    // List elemtns in only number (sign delete in List)
    for (var i = 0; i < str.length; i++) {
      // this condition only includes an if true it is a number
      if (str[i].contains(RegExp(r'[0-9]'))) {
        nums += str[i];
      }
    }

    double sqrts = sqrt(double.parse(nums));

    return sqrts as T;
  }

  throw ArgumentError("List bo'sh");
}
