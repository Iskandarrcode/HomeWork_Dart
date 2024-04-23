import 'dart:io';
import 'dart:async';

void main(List<String> args) {
  String fileName = 'iskandar.jpg';
  String filePath = '/home/iskandar/Pictures/Foto/$fileName';
// 
  Future<void> result = Future.sync(() {
    // 1. search file from disc
    File file = File(filePath);
    if (!file.existsSync()) {
      print('\nFayl topilmadi: $filePath\n');
    } else {
      print("\nFayl topildi $filePath\n");
    }
  });

  // Asinkron amalni kuzatish
  result.then((_) {
    print('Asinkron amal yakunlandi\n');
  }).catchError((error) {
    print('Xatolik: $error\n');
  });
}
