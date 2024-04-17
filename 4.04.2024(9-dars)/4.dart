import 'dart:io';

void main(List<String> args) {
  try {
    // input name
    stdout.write("Ism kiriting: ");
    String? name = stdin.readLineSync()!;

    // input email
    stdout.write("Email kiriting: ");
    String? email = stdin.readLineSync()!;

    // input age
    stdout.write("Yosh kiriting: ");
    int? age = int.parse(stdin.readLineSync()!);

    var user = EmailCheck(email, name, age);
    user.checks();
  } catch (e) {
    print("Noto'ri kiritish !!!");
  }
}

class EmailCheck {
  String email;
  String name;
  int? age;

  EmailCheck(this.email, this.name, this.age);

    //   check email method
  void checks() {
    List emailList = email.split("");

    for (var i = 0; i < email.length; i++) {
      if (emailList[i] == "@") {
        if (i <  1) {
          print("Xato Email kiritildi !!!\n");
          return;
        }
      }
    }
    // check email
    RegExp exp = RegExp(r"@gmail.");
    if (!exp.hasMatch(email)) {
      print("Xato Email kiritildi !!!\n");
      return;
    }

    // if null name and email
    if (name.isEmpty) {
      print("Ism kiritilmadi !!!");
    } else {
      print("Profil to'g'ri !");
    }
  }
}
