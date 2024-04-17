void main(List<String> args) {
  List nums = [3, 5, 2, 8, 10];

  int n = 18;
    // Search for pairs equal to "n".
  for (var i = 0; i < nums.length; i++) {
    for (var j = i+1; j < nums.length; j++) {
      if (nums[i] + nums[j] == n) {
        print(("\n${nums[i]} va ${nums[j]} juftlik\n${nums[i]} + ${nums[j]} = $n"));
      }
    }
  }
}