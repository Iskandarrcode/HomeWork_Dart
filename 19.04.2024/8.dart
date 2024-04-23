import 'dart:async';
void main(List<String> args) {
    // filterNumbers Stream listen
  filterNumbers().listen((event) {
    print(event);
  });
}

// Create filterNumbers Stream
Stream<int> filterNumbers() async* {
  for (var i = 0; i < 20; i++) {
    if (i > 10) {
      yield i;
    }
  }
}
