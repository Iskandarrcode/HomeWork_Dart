void main(List<String> args) {
  List? nums = ["Iskandar", "Musoxon", "Fazliddin", "Asadbek"];
  List nums2 = ["Name1", "Name2", "Name3", "Name4", "Name5"];
  nums = null;

// ------------------------------------------  1 - Style  -------------------------------------------
//   print(nums?[0] ?? "Ro'yhat bo'sh");
//   print(nums?[nums.length - 1] ?? "Ro'yhat bo'sh");

// ------------------------------------------  2 - Style  -------------------------------------------

// this is nums == null nums = nums2 --> print(nums2 and nums[nums.length - 1])
  print(nums ??= nums2);
  print(nums[nums.length - 1]);

//   print(nums2 ??= nums);
  print(nums2[nums2.length - 1]);
}
