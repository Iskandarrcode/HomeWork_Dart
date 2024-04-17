void main(List<String> args) {

  String isUpperCase = "ture";

    // List Strings
  List strings = ["Hello", "world", "DART", "flutter"];

  dynamicFilter(isUpperCase, strings);
}

// dynamicFilter method
void dynamicFilter(String isUpperCase, List strings) {

    // variable
    String checksUpperCase = "";
    String checksLowerCase = "";
    List checkUpper = [];
    List checkLower = [];

    // if uppercase
    if (isUpperCase == "true") {
      for (var i = 0; i < strings.length; i++) {
        checksUpperCase = strings[i];
        if(strings[i] == checksUpperCase.toLowerCase()) {
            checkUpper.add(strings[i]);
        }
      }
    //   print check upper
      print(checkUpper);
    }
    else {
        for (var i = 0; i < strings.length; i++) {
        checksLowerCase = strings[i];
        if(strings[i] == checksLowerCase.toUpperCase()) {
            checkLower.add(strings[i]);
        }
      }
    }
    // prin chek Lower
    print(checkLower);
}