import 'dart:io';
void main(List<String> args) {
    stdout.write("N ga qiymat kiriting: ");
    int n = int.parse(stdin.readLineSync()!);

    for (var i = 0; i < n; i++) {
        // This is cycle write the *
        for (var j = 0; j < i + 1; j++) {
            stdout.write("*");
        }
        // This is cycle write the pace ( )
        for (var k = 0; k < n - i; k++) {
            stdout.write(" ");
        }
        // This is print one row down
        print("\n");
    }
}