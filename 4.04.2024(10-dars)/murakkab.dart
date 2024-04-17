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

    var user = User(name, age, email);
    user.checks();
  } catch (e) {
    print("ERROR... !!!");
  }
}

class User {
  String name;
  int age;
  String email;

  User(this.name, this.age, this.email);

  void checks() {
    // check name section
    int count = 0;
    for (var i = 0; i < name.length; i++) {
      if (name[i] != " ") {
        count++;
      }
    }

    if (name.isEmpty || count < 3) {
      print("\nIsm Noto'g'ri kiritildi !!!\n");
      print("Kamida 3 ta belgidan iborat !!!");
    }

    // check email section
    List emailList = email.split("");

    for (var i = 0; i < email.length; i++) {
      if (emailList[i] == "@") {
        if (i < 1) {
          print("\nEmail kiritilish tartibi Noto'g'ri !!!\n");
          print("Kiritish Tartibi_(name@gmail.com): \n");
          return;
        }
      }
    }
    RegExp exp = RegExp(r"@gmail.");
    if (!exp.hasMatch(email)) {
      print("\nXato Email kiritildi !!!\n");
    }

    // check age

    if (age < 0) {
      print("Yosh noto'g'ri kiritildi !!!\n");
      return;
    } else {
      print("USER QBUL QILINDI... ");
    }
  }
}
