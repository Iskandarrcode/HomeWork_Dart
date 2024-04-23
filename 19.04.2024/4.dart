import 'dart:async';

void main(List<String> args) {
    // Creat Stream controller
    var numbers = StreamController();
    numbers.add(1);
    numbers.add(2);
    numbers.add(3);
    
    // listen method
    numbers.stream.listen((event) {
        print("Son: $event");
    });
}