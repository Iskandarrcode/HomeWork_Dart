import 'dart:async';
void main(List<String> args) {
    Stream<String> numbersStream = Stream.periodic(
        Duration(seconds: 1),
        (index) {
            // break stream
            if (index >= 5) {
              throw "Exception";
            }
            return "Number: ${index + 1}";
        });

    // listen numbersStream
    numbersStream.listen((event) {
        print(event);
    }, onError: (error) {
        print(error);
    }, cancelOnError: true);
}
