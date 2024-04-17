import 'dart:io';

void main(List<String> args) {
  Map check = {};
  int count = 0;
  print("Stringni kiriting: ");
  String? inputString = stdin.readLineSync()!;

  for (int i = 0; i < inputString.length; i++) {
    for (int j = 0; j < inputString.length; j++) {
      if (inputString[i] == inputString[j]) {
        count++;
      }
    }
    check.putIfAbsent(inputString[i], () => count);
    count = 0;
  }

  print(check);
}
