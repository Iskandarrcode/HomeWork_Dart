import 'dart:async';

void main(List<String> args) {
  StreamController<int> controller = StreamController<int>.broadcast();

  Stream<int> stream = controller.stream;

  StreamSubscription<int> subscription =
      stream.map((int x) => x * x).listen((int event) {
    print("Kvadrat: $event");
  });
  controller.add(2);
  controller.add(3);
  controller.add(5);

  Future.delayed(Duration(seconds: 1), () {
    subscription.cancel();
    controller.close();
  });
}
