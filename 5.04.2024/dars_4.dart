import 'dart:io';

void main(List<String> args) {
    // input to which number?
  stdout.write("Son kiriting; ");
  int n = int.parse(stdin.readLineSync()!);
  generateSquares(n);

}

// mthod generateSquares
void generateSquares(int n) {
    // for sikl in quares
    for (var i = 0; i < n; i++) {
      print("Son ${i+1} ning Kvadrati --> ${(i+1) * (i+1)}");
    }
}