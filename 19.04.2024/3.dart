import 'dart:async';
void main(List<String> args) {
    // Stream listen
  namesStream().listen((event) {
    print(event);
  });
}

// Create Stream 
Stream<String> namesStream() async* {
    List<String> names = ["Iskandar", "Musoxon", "Asadbek", "Isroil", "Fazliddin"];
    for (var i in names) {
        await Future.delayed(Duration(seconds: 1));
        yield i;
    }
}