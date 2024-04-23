import 'dart:async';
import 'dart:io';

void main(List<String> args) {
  String file1Path = 'file1.txt';
  String file2Path = 'file2.txt';

  // file1 write in numbers
  File file = File(file1Path);
  file.writeAsStringSync("10");

  // file2 write in numbers
  File file2 = File(file2Path);
  file2.writeAsString("50");

  // Fayls information objects
  Future<String> readContent1 = readFile(file1Path);
  Future<String> readContent2 = readFile(file2Path);

  // Future.wait tracking elephants at the same time
  Future.wait([readContent1, readContent2]).then((List<String> results) {
    // Fayls in information
    String content1 = results[0];
    String content2 = results[1];

    // Nubers type String to int
    int sum = int.parse(content1) + int.parse(content2);

    // Result print
    print('Fayllardan olingan raqamlar: $content1 va $content2');
    print('Yig\'indisi: $sum');
  }).catchError((error) {
    print('Xatolik: $error');
  });
}

// Read file information
Future<String> readFile(String filePath) {
  File file = File(filePath);
  return file.readAsString();
}
