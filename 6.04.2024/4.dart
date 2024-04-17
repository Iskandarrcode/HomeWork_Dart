import 'dart:io';

void main(List<String> args) {
//   foydalanuvchi 2 ta Set yaratadi va ularni kesishmasi va birlashmasini chop etuvchi dastur
    Set nums1 = {};
    Set nums2 = {};
    print("Set 1 ga elementlar kititing(1,2,3): ");
    String? set1 = stdin.readLineSync()!;

    print("Set 2 ga elementlar kititing(1,2,3): ");
    String? set2 = stdin.readLineSync()!;


    for (var i in set1.split(",")) {
        nums1.add(i);
    }

    for (var i in set2.split(",")) {
        nums2.add(i);
    }

    print("Set1 va Set2 ning Kesishmasi: =>  ${nums1.intersection(nums2)}\n");
    print("Set1 va Set2 ning Birlashmasi: =>  ${nums1.union(nums2)}");

}