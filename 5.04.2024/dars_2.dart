void main(List<String> args) {
    // nums1 and nums2 Lists
  List nums1 = [1, 2, 3];
  List nums2 = [4, 5, 6];

  combineLists(nums1, nums2);
}

// combineLists method
void combineLists(nums1, nums2) {
    // Method one
    print("1 - Usul");
    nums1 = [1, 2, 3, ...nums2];
    print(nums1);
    
    // Method two
    print("2 - Usul");
    nums1 = nums1 + nums2;
    print(nums1);
}