void main(List<String> args) {
  Stream<String> numbers = Stream.periodic(
    Duration(seconds: 1),
    (index) {
        if (index >= 2) {
          throw "Exception";
        }
        return "Natija: ${index + 1}";
    });

  numbers.listen((event) {
    print(event);
  },onError: (error) {
    print("Error chiqdi");
    
  }, cancelOnError: true);

}