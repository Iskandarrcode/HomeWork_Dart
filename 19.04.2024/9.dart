void main(List<String> args) {
    // Steram listen
    asinxronStream().listen((event) {
        print(event);
    });
}

// Asinxron Stream
Stream<String> asinxronStream() async* {
    List words = ["Salom", "Hammaga", "Nima", "Gaplar"];
    for (var element in words) {
      yield element;
    }
}