void main(List<String> args) {
    // Stream onError
    Stream<String> numbers = Stream.periodic(
        Duration(seconds: 1),
        (index) {
            if (index >= 5) {
              throw "Exception";
            }
            return "Natija: ${index + 1}";
        }
    );

    numbers.listen((event) {
    print(event);
  },onError: (error) {
    print(error);
    
  }, cancelOnError: true);
}
