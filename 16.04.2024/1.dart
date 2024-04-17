void main(List<String> args) {
  var participant = Runner("John", 30, "Male");
  var challenge = RunningChallenge("Marathon", "Run 42km", DateTime.now(),
      DateTime.now().add(Duration(days: 30)));

  participant.joinChallenge(challenge);
  print("\n");
  participant.trackActivity();
  print("\n");
  participant.displayProgress();
  Achievement.award("100 km Running Club");
}

// abstract class Participant
abstract class Participant {
  late String name;
  late int age;
  late String gender;

  Participant(this.name, this.age, this.gender);

  void joinChallenge(Challenge challenge);
}

// interface class Challenge
abstract class Challenge {
  late String name;
  late String description;
  late DateTime startDate;
  late DateTime endDate;

  Challenge(this.name, this.description, this.startDate, this.endDate);

  void displayDetails();
}

// Mixin Trackable
mixin Trackable {
  Map<String, dynamic> activities = {
    "Yugurish": "10 km",
    "Kurash": "2 soat",
    "Dars qilish": "5 soat",
    "Kino ko'rish": "1 soat"
  };

  // method trackActivity
  void trackActivity() {
    activities.forEach((key, value) {print("Mashg'ulot: $key\nVqti: $value");});
  }

  // method displayProgress
  void displayProgress() {
    print('Activity Progress:');
    activities.forEach((activity, result) {
      print('$activity: $result');
    });
  }
}

// Extension Achievement
extension Achievement on String {
  static void award(String achievement) {
    print('$achievement achieved!');
  }
}

// class RunningChallenge implements Challenge
class RunningChallenge implements Challenge {
  late String name;
  late String description;
  late DateTime startDate;
  late DateTime endDate;

  RunningChallenge(this.name, this.description, this.startDate, this.endDate);

  @override
  void displayDetails() {
    print('Challenge: $name');
    print('Description: $description');
    print('Start Date: $startDate');
    print('End Date: $endDate');
  }
}

// class Runner extends Paricipant mixin Trackable
class Runner extends Participant with Trackable {
  Runner(String name, int age, String gender) : super(name, age, gender);

  @override
  void joinChallenge(Challenge challenge) {
    print('$name joins the ${challenge.name} challenge!');
  }

  // mixin trackActivity
  @override
  void trackActivity() {
    super.trackActivity();
  }

  // mixin displayProgress
  @override
  void displayProgress() {
    super.displayProgress();
  }
}
