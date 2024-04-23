import 'dart:io';

void main(List<String> args) {
    String nameFile = "check.txt";
    readFile(nameFile);
}

// method to read file 
void readFile(String nameFile) {
    File file = File(nameFile);

    // Fileni yozadigan qilib ochish pastdagi kamentni oching -->
    // RandomAccessFile raf = file.openSync(mode: FileMode.write);

    // check file
    try {
        String raf = file.readAsStringSync();
        print('Fayldan o\'qilgan ma\'lumot: $raf');
    } catch (e) {
      print("File topilmadi");
    }
}
