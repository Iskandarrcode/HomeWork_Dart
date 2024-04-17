import 'dart:io';

void main(List<String> args) {
    // list and map varebles
  List listNums = [];
  Set setNums = {};

    // input Numbers
  stdout.write("\nSonlarni kriting: ");
  String? inputNums = stdin.readLineSync()!;
  listNums = inputNums.split(",");

    // length to List
  int len = listNums.length;

  for (var i = len - 1; i >= len / 2; i--) {
    setNums.add(listNums[i]);
  }

  print(setNums);
}
