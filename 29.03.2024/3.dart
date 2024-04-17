import 'dart:io';
void main(List<String> args) {
    // input year
    stdout.write("Yilni kiriting: ");
    int year = int.parse(stdin.readLineSync()!);
// year to asr
    int asr = (year + 99) ~/ 100;
    print("$year --> $asr");
}