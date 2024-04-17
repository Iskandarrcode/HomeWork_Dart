import 'dart:io';

void main(List<String> args) {
  // Kiritilgan raqamlarni mapga int tipida joylash
  Set numsSet = {};
  stdout.write("Raqamalrni kiriting(1,2,3):  ");
  String? numsString = stdin.readLineSync()!;

  for (var i in numsString.split(",")) {
    numsSet.add(int.parse(i));
  }
  print(numsSet);

    
}
