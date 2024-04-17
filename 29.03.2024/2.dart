import 'dart:io';

void main(List<String> args) {
    phone_Numbers();
}

void phone_Numbers() {
    // String variables
    String str;
    String str1 = "";
    String str2 = "";
    String str3 = "";
    String str4 = "";

// Input phone numbers
    stdout.write("Telefon raqamni kiriting_(937586687)__: ");
    String? phoneNum = stdin.readLineSync()!;
    // Phone number sharing
    for (var i = 0; i < phoneNum.length; i++) {
        if (i < 2) {
            str1+= phoneNum[i];
        }
        if (i >= 2 && i < 5) {
            str2 += phoneNum[i];
        }
        if (i >= 5 && i < 7) {
            str3 += phoneNum[i];
        }
        if (i >= 7 && i < 9) {
            str4 += phoneNum[i];
        }
    }
    // add the numbers
    str = "+998 (" + str1 + ") " + str2 + "-" + str3 + "-" + str4;
    print(str);

}