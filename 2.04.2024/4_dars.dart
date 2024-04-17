void main(List<String> args) {
    try {
        // var user1 = UserProfile("Iskandar", "Iskandar@gmail.com");
        var user2 = UserProfile("User2", "user2gmail.com");
        // print(user1);
        print(user2);
    } catch (e) {
        print(e);
    }
}

class UserProfile {
  final String name;
  String email;

  UserProfile(
    this.name,
    this.email,
  ) {
    if (!email.contains("@")) {
        print("Noto'g'ri Email kiritilgan !!!");
    }
  }
  @override
  String toString() {
    return "User name: $name, Email: $email";
  }
}
