void main(List<String> args) {
  // List fruits
  List fruits = ["Nok", "Bexi", "Anor", "Olma", "Shaftoli", "O'rik"];

  // print those up to the apple
  var result = fruits.takeWhile((fruit) => fruit != "Olma");
  print(result);

  // age < 18 people --> print
  List unders = [];
  Map nameAge = {
    "Anvar": 12,
    "Navro'z": 13,
    "Baxrom": 17,
    "Baxodir": 20,
    "Ali": 23
  };
  nameAge.entries.takeWhile((users) => users.value < 18).forEach((users) {
    unders.add(users.key);
  });

  print(unders);
}
