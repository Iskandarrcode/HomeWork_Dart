import 'dart:io';
void main(List<String> args) {
    atm();
}

void atm() {
    // input user balance
    stdout.write("Kartangizda qancha pul bor?: ");
    int my_balance = int.parse(stdin.readLineSync()!);

    while (true) {
        // Section selection
        print("1_Kartadan pul yechish...");
        print("2_Chiqish...\n");
        
        int cases = int.parse(stdin.readLineSync()!);
        // Withdraw money
        if (cases == 1) {
            stdout.write("Qancha pul yechmoqchisiz?...");
            int balance_sheet = int.parse(stdin.readLineSync()!);
            // if more amount is entered than on the card
            if (balance_sheet > my_balance) {
                print("\nBalansingizda Mablag' yetarli emas !!!\n");
                print("Balansingiz: $my_balance so'm !!!\n");
            }
            else {
                // Debit user card
                print("\n\n$balance_sheet so'm yechildi !!!");
                my_balance -= balance_sheet;
                print("Balansingizda:__$my_balance so'm qoldi:\n");
            }
        }
        else {
            // Exit section
            print("\nBizning ATM dan foydalanganingiz uchun tashakkur !!!");
            break;
        }

    }
}