import 'dart:convert';
import 'dart:io';

void main(List<String> args) {
  while (true) {
    // try catch in json
    try {
      // input json information
      print("JSON Farmatda ma'lumot kiriting_(Map ko'rinishida):  ");
      String inputjson = stdin.readLineSync()!;
      // json to dart
      dynamic jsonData = jsonDecode(inputjson);
      stdout.write('\x1B[2J\x1B[0;0H');
      print(jsonData);
      return;
    } catch (e) {
      // error catch
      stdout.write('\x1B[2J\x1B[0;0H');
      print("JSON FARMATDA KIRITING !!!\n\n");
    }
  }
}
