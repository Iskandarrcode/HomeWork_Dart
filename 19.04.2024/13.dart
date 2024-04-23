import 'dart:async';

void main() {
  // Stream Create
  Stream<int> stream = Stream.periodic(Duration(microseconds: 500), (value) => value).take(5);

  // add timeout
  Stream<int> timeoutStream = stream.timeout(Duration(seconds: 3), onTimeout: (event) {
    throw TimeoutException('Stream chegarasi oshdi');
  });

  // Stream information
  timeoutStream.listen(
    (data) {
      print('Malumot: ${data + 1}');
    },
    onError: (error) {
      print('Xatolik: $error');
    },
    onDone: () {
      print('Tugadi');
    }, cancelOnError: true
  );
}
