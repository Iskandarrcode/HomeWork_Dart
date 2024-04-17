void main(List<String> args) {
  // Return numbers from 0 to each element
  var nums = [1, 2, 3];
  var digits =
      nums.expand((element) => List.generate(element, (index) => index));
  print(digits.toList());

  // two task
  var data = {
    'Toshkent': ['Yashnobod', 'Chilonzor', 'Mirobod'],
    'Samarqand': ['Olmazor', 'Bulungur', 'Kattakurgan'],
    'Buxoro': ["G'ijduvon", "Qorako'l", 'Peshku']
  };

  var resalt = data.values.expand((element) => element.toList());
  print(resalt);
}
