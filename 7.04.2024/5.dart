import 'dart:math';

void main(List<String> args) {
  // Task 1 alphabet
  var alphabet = List.generate(
      10, (int index) => String.fromCharCode("A".codeUnitAt(0) + index));
  print(alphabet);

  // Task 2 random
  var randoms = List.generate(20, (index) => Random().nextInt(100) + 1);
  print(randoms);

  // Task 3 numbers
  var numbers = List.generate(7, (val) => 3 * (val + 2));
  print(numbers);
}
