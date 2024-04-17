import 'dart:io';

void main(List<String> args) {
  Map infoWords = {};
  List wordList = [];
  int count = 0;
  print("So'zlarni kiriting_(hello, world):\n");
  String? words = stdin.readLineSync()!;

  // info to list
  wordList = words.split(", ");

    // check word in words count
  for (var word in words.split(", ")) {
    for (var i = 0; i < wordList.length; i++) {
      if (wordList[i] == word) {
        count++;
      }
    }

    // words in Map
    infoWords[word] = count;
    count = 0;
  }

  print(infoWords);
}
