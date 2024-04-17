void main(List<String> args) {
  List nums = [1, 2, 3, 4, 5];
  immutableListModify(nums);
}

// immutableListModify method
void immutableListModify(List nums) {
    List nums2 = [];
    for (var i = 0; i < nums.length; i++) {
        // if nums in elements couple
      if (nums[i] % 2 == 0) {
        nums2.add(nums[i] + 1);
      }
      else {
        nums2.add(nums[i] - 1);
      }
    }
    print(nums2);
}