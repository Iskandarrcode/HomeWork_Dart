import 'dart:async';

void main(List<String> args) {
    // Create StreamController
    StreamController<int> controller = StreamController();

    // Create Stream
    Stream<int> stream = controller.stream;

    StreamSubscription<int> subscription = stream.listen((event) {
        print("Data: $event");
    });

    // StreamController add numbers
    controller.add(5);
    controller.add(4);
    controller.add(9);

    // Stream pause
    subscription.pause();

    // Stream resume
    Future.delayed(Duration(seconds: 2), () {
        subscription.resume();
    });

    // Stream controller add numbers
    controller.add(10);
    controller.add(20);
    controller.add(30);

    // Stream cancel and Stream controller close
    subscription.cancel();
    controller.close();

}