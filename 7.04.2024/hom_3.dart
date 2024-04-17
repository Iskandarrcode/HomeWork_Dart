void main(List<String> args) {
    Map result = {};
    Map originalMap = {"A": 1, "B": 2, "C": 1, "D": 6};
    
    // create new Map
    originalMap.forEach((key, value) {
        // check containsKey  result Map the key in originalMap the value ?
        if (result.containsKey(value)) {
          result[value].add(key);
        } else {
          result[value] = [key];
        }
    });
    
    // print results
    print(result);

}