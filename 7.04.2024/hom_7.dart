void main(List<String> args) {
  List scores = [85, 70, 95, 60, 90];

    // reverse sort 
  scores.sort((a, b) => b.compareTo(a));

//   3 element the take 
  var result = scores.take(3);
  print(result);
}