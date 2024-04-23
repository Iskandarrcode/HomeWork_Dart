import 'dart:async';

void main(List<String> args) {
  // Create Stream broadcast
  StreamController<int> controller = StreamController<int>.broadcast();

  // Stream object1
  StreamSubscription<int> subscription = controller.stream.listen((event) {
    print("Listener1: $event");
  });

  // Stream object2
  StreamSubscription<int> subscription2 = controller.stream.listen((event) {
    print("Listener2: $event");
  });

  // controller add numbers
  controller.add(10);
  controller.add(20);

  // Stream cancel and controller close
  Future.delayed(Duration(seconds: 1), () {
    subscription.cancel();
    subscription2.cancel();
    controller.close();
  });
}
