import 'dart:io';

void main(List<String> args) {
    // contacts base
    List contactNums = [
    Contacts("Iskandar", "+998 93 758-55-90"),
    Contacts("Fozilbek", "+998 93 058-65-79")
    ];
    while (true) {
        // consol clear
        // stdout.write('\x1B[2J\x1B[0;0H');

        print("\n1.BARCHA CONTACTLAR\n2.CONTACT QO'SHISH\n3.CONTACT O'CHIRISH\n0.EXIT...\n");
        
        String? part = stdin.readLineSync()!;
        
        switch (part) {
            case "1":
                //PRINTER EVRYONE CONTACTS !!! 
                stdout.write('\x1B[2J\x1B[0;0H');
                PhoneBook.printerContact(contactNums);
                break;
            case "2":
                // ADD CONTACTS !!!
                stdout.write('\x1B[2J\x1B[0;0H');
                PhoneBook.addNewContact(contactNums);
                break;
            case "3":
                // DELETE CONTACTS !!!
                stdout.write('\x1B[2J\x1B[0;0H');
                PhoneBook.deleteContact(contactNums);
                break;
            case "0":
                stdout.write('\x1B[2J\x1B[0;0H');
                print("\nBIZNING DASTURDAN FOYDALANGANINGIZ UCHUN TASHAKKUR !!!\n");
                exit(0);
            default:
        }
    }
}

// CLASS Contacts 
class Contacts {
  String contactName;
  String contactNumber;

  Contacts(this.contactName, this.contactNumber);

}

// CLASS PhoneBook
class PhoneBook {

    String contactName;
    String contactNumber;

    PhoneBook(this.contactName, this.contactNumber);

    static void addNewContact(List contactNums) {
        print("\nCONTACT QO'SHISH BO'LIMIGA HUSH KELIBSIZ...\n");
        stdout.write("\nNECHTA CONTACT QO'SHMOQCHISIZ?... ");
        int countContact = int.parse(stdin.readLineSync()!);
        // INPUT OBJECTS --> CONTACTS
        for (var i = 0; i < countContact; i++) {
            stdout.write("${i+1} - CONTACTNI ISMINI KIRITING...");
            String? contactName = stdin.readLineSync()!;

            stdout.write("${i+1} - CONTACTNI NO'MERINI KIRITING_(+998 91 234-56-78)... ");
            String? contactNumber = stdin.readLineSync()!;

            contactNums.add(PhoneBook(contactName, contactNumber));
        }
        stdout.write('\x1B[2J\x1B[0;0H');
        print("\nCONTACT MUVOFAQIYATLI QO'SHILDI !!!\n");
    }

    // CONTACTS PRINTER SECTION
    static void printerContact(List contactNums) {
        print("\n                                --> MAVJUD CONTACTLAR !!! <--\n");
        for (var i = 0; i < contactNums.length; i++) {
            print("ISMI: ${contactNums[i].contactName} RAQAMI: ${contactNums[i].contactNumber}");
        }
    }
    
    // CONTACTS DELETE SECTION
    static void deleteContact(List contactNums) {
        for (var i = 0; i < contactNums.length; i++) {
            print("${i+1}.ISMI: ${contactNums[i].contactName} RAQAMI: ${contactNums[i].contactNumber}");
        }
        stdout.write("\nO'CHIRMOQCHI BO'LGAN CONTACTNI TANLANG... ");
        int deleteContactNum = int.parse(stdin.readLineSync()!);
        contactNums.remove(contactNums[deleteContactNum - 1]);

        stdout.write('\x1B[2J\x1B[0;0H');
        print("\nCONTACT MUVOFAQIYATLI O'CHIRILDI !!!\n");
    }
}
