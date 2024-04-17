void main(List<String> args) {
  List nums = [1, 2, 3, 4, 5, 6, 7, 8, 9];
  print(mutableAndImmutableList(nums));
}

// function mutableAndImmutableLists
List mutableAndImmutableList(List nums) {
  List nums2 = [];
  for (var i in nums) {
    nums2.add(i * 2);
  }
    // return list const
  return List.unmodifiable(nums2);
}
