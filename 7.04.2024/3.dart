void main(List<String> args) {
  // names String list
  List<String> names = ["Iskandar", "Fikirat", "Bobur", "Iftihor", "Navro'z"];

  // Skip names up to the letter "B".
  var res = names.skipWhile((value) => value[0] != "B");
  print(res.toList());

  // Skip until numbers less than 5 are encountered

  List nums = [6, 7, 8, 9, 1, 2, 3, 4, 5];
  var res2 = nums.skipWhile((value) => value > 5);
  print(res2.toList());
}
