import 'dart:io';
void main(List<String> args) {
    // Input number
    stdout.write("N ga qiymat kiriting: ");
    int n = int.parse(stdin.readLineSync()!);

    for (int i = 0; i < n; i++) {
        // replace these with *s and spaces
        for (int j = 0; j < n; j++) {
            if ((i == j) || ((i + j) == (n - 1))) {
                // Write the => *
                stdout.write("*");
            }
            else {
                // Write the spaces
                stdout.write(" ");
            }
        }
        // This is bring down
        print("");
    }
}