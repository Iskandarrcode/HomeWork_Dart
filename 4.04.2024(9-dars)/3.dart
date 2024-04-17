import 'dart:io';
void main(List<String> args) {
  while (true) {
    List stringNames = [];
  // input String
  stdout.write("String kiriting_(name1,name2): ");
  String? stringText = stdin.readLineSync()!;
  if(stringText[stringText.length-1] == ":") {
    print("Noto'g'ri belgi kiritildi !!!\n");
    return;
  }
  stringNames = stringText.split(",");
//   print length if not null else print 0

    for (var i = 0; i < stringNames.length; i++) {
      if(stringNames[i].length > 1) {
        print("${stringNames[i]} --> len: ${stringNames[i].length}\n");
      }
      else {
        print("${stringNames[i]} Noto'g'ri kiritilgan !!!");
        break;
      }
    }
  }
}