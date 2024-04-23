import 'dart:async';
import 'package:news/news.dart';

void main(List<String> arguments) async {
  // Object in MyFutureMethods class
  var futureMethods = MyFutureMethods();

  // recall in Methods to getJokes and getUser
  futureMethods.getJokes();
  futureMethods.getUser();

  // Listen to the jokeStream
  futureMethods.jokeStream.listen((joke) {
    print('\n\nRECEIVED JOKE:\n\n$joke');
  });

  // Listen to the userStream
  futureMethods.userStream.listen((user) {
    print('\n\nRECEIVED USER DATA:\n\n$user');
  });

  // Future delayed 5 seconds close in StreamController objects.
  Future.delayed(Duration(seconds: 5), () {
    futureMethods.closes();
  });

}