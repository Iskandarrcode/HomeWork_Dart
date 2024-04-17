void main(List<String> args) {
  // 9 - (6+7+8+4+2) = -18
  List<int> nums = [9, 6, 7, 8, 4, 2];
  // 1 is the sum of the numbers except the element
  var total = nums.fold(-nums[0], (jami, raqam) => jami + raqam);

  // nums[0] - total
  print(nums[0] - total);

  // Strings sum
  List<String> strings = ["Alisher", "Vali", "Dilnoza"];
  // fold function
  var total2 = strings.fold(
      "", (previousValue, element) => previousValue + ", " + element);

  print(total2);
}
