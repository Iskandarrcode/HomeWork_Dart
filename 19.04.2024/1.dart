void main(List<String> args) {
    // Stream print numbers in 2 seconds
  Stream<String> numbers = Stream.periodic(
    Duration(seconds: 2),
    (index) {
        return "${index}";
    }).take(8);
    print(numbers);

    // 1 - method
//   numbers.listen((event) {
//     print(event);
//   });

    // 2 - method
//   numbers.listen((event) {
//     if (int.parse(event) % 2 == 0) {
//       print("Son: $event");
//     }
//   });
}
