void main(List<String> args) {
    // Stream listen
  numbersStream().listen((event) {
    print(event);
  });
}

// Stream numbersStream yield*
Stream<int> numbersStream() async* {
    yield* Stream.fromIterable([1, 2, 3, 4, 5]);
}