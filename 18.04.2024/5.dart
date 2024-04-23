import 'dart:async';
import 'dart:io';

void main() {
  List names = [
    "Iskandar",
    "Saidakbar",
    "Muhammadjon",
    "Musoxon",
    "Fazliddin",
    "Asadbek",
    "Isroil"
  ];

  String fileName = "names.txt";
  File file = File(fileName);

  // Future.doWhile method
  int count = 0;
  Future.doWhile(() async {
    // names write in file
    for (int i = 0; i < names.length; i++) {
      await file.writeAsString(names[i] + "\n", mode: FileMode.append);
      count++;
    }
    // break doWhile
    return count > names.length;
  }).then((_) {
    print("Isimlar File ga Muvofaqiyatli qo'shildi");
  }).catchError((error) {
    print("Error: $error");
  });
}
