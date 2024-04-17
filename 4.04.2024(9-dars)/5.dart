import 'dart:io';

void main(List<String> args) {
  // input name
  stdout.write("Isim kiriting: ");
  String? name = stdin.readLineSync();

  // input age
  stdout.write("Yosh kiriting: ");
  String? age = stdin.readLineSync();

  // fovared color
  stdout.write("Yoqtirgan rang kiriting: ");
  String? fovarColor = stdin.readLineSync();

  // if nam and age and fovarColar null or not null?
  if ((name == null || name.isEmpty) ||
      (age == null || age.isEmpty) ||
      (fovarColor == null || fovarColor.isEmpty)) {
    // this is null
    String name = "Nomalum";
    String age = "Nomalum";
    String fovarColor = "Nomalum";
    var user1 = UserInfo(name, age, fovarColor);
    user1.infoUsers();
  } else {
    var user1 = UserInfo(name, age, fovarColor);
    user1.infoUsers();
  }
}

class UserInfo {
  String? name;
  String? age;
  String? fovarColor;

  UserInfo(this.name, this.age, this.fovarColor);

  // information users
  void infoUsers() {
    print("Name: $name\nAge: $age\nFovarid Color: $fovarColor");
  }
}
