/*Foydalanuvchidan raqam so'rang. Raqamning juft yoki toq bo'lishiga
qarab, foydalanuvchiga tegishli xabarni chop eting. */

import 'dart:io';
void main(List<String> args) {
    // input number
  print("Numbers input: ");
  int num_input = int.parse(stdin.readLineSync()!);
  bool res = num_input.isEven;
//   number check for even or odd 
  if (res == true) {
    print("$num_input Juft son:");
  }
  else {
    print("$num_input Toq son:");
  }
}