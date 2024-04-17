void main(List<String> args) {
  List numbers = [1, 5, 3, 7, 9, 4, 6, 8];

    // takeWhile() runs until the given condition and stops if the condition is false
  var result = numbers.takeWhile((value) => value % 2 != 0);
  print(result.toList());
}