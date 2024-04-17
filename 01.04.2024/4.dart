import 'dart:io';

void main(List<String> args) {
    List ls = [];
    while (true) {
        print("""\n    1.HISOB VARAQA YARATISH...
    2.BALANSNI TEKSHIRISH...
    3.BALANSNI TO'LDIRISH...
    4.NAQT PUL YECHISH...""");
    String? cases = stdin.readLineSync()!;

    switch (cases) {
        case "1":
            // Create an account
            try {
                // User input objects !!!
                stdout.write('\x1B[2J\x1B[0;0H');
                stdout.write("ACCOUNT NUMBER: ");
                String? accountNumbers = stdin.readLineSync()!;
                for (var i = 0; i < ls.length; i++) {
                    if (ls[i].accountNumbers == accountNumbers) {
                        print("BUNDAY RAQAMLI FOYDALANUVCHI MAVJUD !!!\nILTIMOS BOSHQA RAQAM KRIRITING !!!");
                        return;
                    }
                }
                if (accountNumbers == "") {
                    print("Account raqami bo'sh qoldirildi !!!");
                    continue;
                }
                stdout.write("BALANCE: ");
                double? balance = double.parse(stdin.readLineSync()!);
                stdout.write("OWNER: ");
                String? owner = stdin.readLineSync()!;
                if (accountNumbers == "") {
                    print("Foydalanuvchi ma'lumoti bo'lsh qoldirildi !!!");
                    continue;
                }

                // add objects
                ls.add(Account(accountNumbers, balance, owner));
                stdout.write('\x1B[2J\x1B[0;0H');
                print("HISOB VARAQA YARATILDI !!!\n");
                    
            }catch (e) {
            print("NOTO'G'RI URINISH !!!\n");
            }
            // break;
            break;
        case "2":
            // Balance check !!!
            Account.check(ls);
            break;
        case "3":
            // Balance deposits !!!
            stdout.write('\x1B[2J\x1B[0;0H');
            Account.deposit(ls);
            break;
        case "4":
            // cash slave redemption
            stdout.write('\x1B[2J\x1B[0;0H');
            Account.withdraw(ls);

      default:
    }
    }
}

class Account {
    String accountNumbers;
    double balance;
    String owner;

    Account (this.accountNumbers, this.balance, this.owner);
    
    // DEPOSIT SECTION !!!

    static deposit(List ls) {
        // deposits
        try {
            // Balance deposits
            print("\nBLANSNI TO'LDIRISH !!!\n");
            stdout.write("\nACCOUNT RAQAMINI KIRITING... ");
            String? balanceNum = stdin.readLineSync()!;
            stdout.write('\x1B[2J\x1B[0;0H');
            
            for (int i = 0; i < ls.length; i++) {
                if (ls[i].accountNumbers == balanceNum) {
                    stdout.write("\nKIRITMOQCHI BO'LGAN SUMMANGIZ?...\n");
                    double depositBalance = double.parse(stdin.readLineSync()!);
                    stdout.write('\x1B[2J\x1B[0;0H');
                    ls[i].balance += depositBalance;
                    print("BALANSINGIZ $depositBalance GA ORTDI !!!");
                    print("\n${ls[i].owner} BALANSINGIZ --> ${ls[i].balance} SO'M\n");
                }
            }

        } catch (e) {
            stdout.write('\x1B[2J\x1B[0;0H');
            print("NOTO'G'RI URINISH !!!");
        }
    }

    // WITHDRAW SECTION !!!
    static withdraw(List ls) {
        // Balance withdraw
        print("\nNAQT PUL YECHISH !!!\n");
            stdout.write("\nACCOUNT RAQAMINI KIRITING... ");
            String? balanceNum = stdin.readLineSync()!;
            stdout.write('\x1B[2J\x1B[0;0H');
            
            for (int i = 0; i < ls.length; i++) {
                if (ls[i].accountNumbers == balanceNum) {
                    stdout.write("\nQANCHA PUL YECHMOQCHISIZ?...\n");
                    double depositBalance = double.parse(stdin.readLineSync()!);
                    stdout.write('\x1B[2J\x1B[0;0H');
                    ls[i].balance -= depositBalance;
                    print("BALANSINGIZ $depositBalance GA KAMAYDI !!!");
                    print("\n${ls[i].owner} BALANSINGIZ --> ${ls[i].balance} SO'M\n");
                }
            }

    }

    // CHECK SECTION !!!
    static check(List ls) {
        try {
            // Balance chek
            stdout.write('\x1B[2J\x1B[0;0H');
            print("\nBLANSNI TEKSHIRISH !!!\n");
            stdout.write("\nAccount raqamini kiriting... ");
            String? balanceNum = stdin.readLineSync()!;
            for (int i = 0; i < ls.length; i++) {
                if (ls[i].accountNumbers == balanceNum) {
                    print("\n${ls[i].owner} Balansingiz --> ${ls[i].balance} so'm\n");
                }
            }

        } catch (e) {
            stdout.write('\x1B[2J\x1B[0;0H');
            print("NOTO'G'RI URINISH !!!");
        }
    }
}