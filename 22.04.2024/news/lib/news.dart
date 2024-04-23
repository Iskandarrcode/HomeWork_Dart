import 'dart:async';
import 'package:http/http.dart' as http;

class MyFutureMethods {
  late StreamController<String> _jokesController;
  late StreamController<String> _userController;

  MyFutureMethods() {
    _jokesController = StreamController<String>.broadcast();
    _userController = StreamController<String>.broadcast();
  }

  // Method to getJokes and steramController object _jokesController add info
  Future<void> getJokes() async {
    var url = Uri.parse("https://official-joke-api.appspot.com/random_joke");
    http.get(url).then((response) {
      _jokesController.add(response.body);
    });
  }

  // Method to getUser and steramController object _userController add info
  Future<void> getUser() async {
    var url = Uri.parse("https://randomuser.me/api/");
    http.get(url).then((response) {
      _userController.add(response.body);
    });
  }

  // Getter to jokerStream
  Stream<String> get jokeStream => _jokesController.stream;

  // Getter to userStream
  Stream<String> get userStream => _userController.stream;

  // disposes in StreamCpontroller objects
  void closes() {
    _jokesController.close();
    _userController.close();
  }
}