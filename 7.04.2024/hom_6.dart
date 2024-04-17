void main(List<String> args) {

    // sort to length
  final List<String> names = ["Alice", "Bob", "Charlie", "David"];
  names.sort((a, b) => a.length.compareTo(b.length));

  print(names);
}