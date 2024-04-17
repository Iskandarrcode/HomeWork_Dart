import 'dart:io';

void main(List<String> args) {
  List<User> users = [User("Iskandar", 202013)];
  List<Book> borrowedBooks = [
    Book("Atomic Hebbits", "Jems Cemrn", "12345", true)
  ];

  List<Book> books = [
    Book("Atomic Hebbits", "Jems Cemrn", "12345", true),
    Book("O'tgan Kunlar", "Abdulla Qodriy", "54321", true),
    Book("Shum Bola", "G'ofur G'ulom", "67890", true),
    Book("Mehrobdan Chayon", "Abdulla Oripov", "1234567", true),
    Book("Temur Tuzuklari", "Amir Temur", "54321589", true),
    Book("Qonli Yo'rgaklar", "Author", "678790", true)
  ];
  // Input part
  print("BO'LIMNI TANLANG !!!\n");
  print("1.AZOLAR...\n2.KITOBLAR...\n");
  String? parts = stdin.readLineSync()!;

  switch (parts) {
    // Users section
    case "1":
      stdout.write('\x1B[2J\x1B[0;0H');
      print("\nUSERLAR RO'YHATI !!!\n");

      // printer users
      for (int i = 0; i < users.length; i++) {
        print("Ismi: ${users[i].name}\nUser id: ${users[i].userId}\n");
      }
      // Select one of the users
      print("User Id ni kiriting: ");
      int inputUser = int.parse(stdin.readLineSync()!);
      stdout.write('\x1B[2J\x1B[0;0H');

      for (int i = 0; i < users.length; i++) {
        if (users[i].userId == inputUser) {
          while (true) {
            // USERS SECTION !!!
            print(
                "1.QARZ KITOB MAVJUDLIKINI TEKSHIRISH\n2.QARZ KITOBLARGA QO'SHISH\n3.QARZ KITOBLAR ORASIDAN O'CHIRISH\n0.EXIT\n");
            String? userPart = stdin.readLineSync()!;

            switch (userPart) {
              // check borrowed
              case "1":
                stdout.write('\x1B[2J\x1B[0;0H');
                users[0].checkBorrowed(borrowedBooks);
                break;

              // add borrowed
              case "2":
                stdout.write('\x1B[2J\x1B[0;0H');
                users[0].addBorrowed(books, borrowedBooks);
                break;

              // Delete borrowed
              case "3":
                stdout.write('\x1B[2J\x1B[0;0H');
                users[0].removeBorrowed(books, borrowedBooks);
                break;
              // exit ....
              case "0":
                exit(0);
              default:
            }
          }
        }
      }
      break;
    // Books show ...
    case "2":
      stdout.write('\x1B[2J\x1B[0;0H');
      for (var i = 0; i < books.length; i++) {
        print(
            "\nNOMI: ${books[i].title}\nMUALLIFI: ${books[i].author}\nISBN: ${books[i].isbn}\nMAVJUDMI: ${books[i].there}\n");
      }
      break;
    default:
  }
}

class Book {
  String title;
  String author;
  String isbn;
  bool there;

  Book(this.title, this.author, this.isbn, this.there);
}

class User {
  String name;
  int userId;

  User(this.name, this.userId);

  //method check borrowed books
  void checkBorrowed(List borrowedBooks) {
    // show borrowed books
    for (var i = 0; i < borrowedBooks.length; i++) {
      print(
          "NOMI: ${borrowedBooks[i].title}\nMUALLIFI: ${borrowedBooks[i].author}\nISBN: ${borrowedBooks[i].isbn}\nMAVJUDLIGI: ${borrowedBooks[i].there}\n");
    }
  }

  // method borrowed books
  void addBorrowed(List books, List borrowedBooks) {
    for (var i = 0; i < books.length; i++) {
      print(
          "\nNOMI: ${books[i].title}\nMUALLIFI: ${books[i].author}\nISBN: ${books[i].isbn}\nMAVJUDMI: ${books[i].there}\n");
    }
    // input borrowed isbn
    stdout.write("\nQarzga olmoqchi kitobni ISBN ni kiriting: ");
    String? borrowed = stdin.readLineSync()!;
    stdout.write('\x1B[2J\x1B[0;0H');

    for (var i = 0; i < books.length; i++) {
      if (books[i].isbn == borrowed && !borrowedBooks.contains(books[i])) {
        borrowedBooks.add(books[i]);
        print("\nQARZGA OLINGANLAR QATORIGA QO'SHILDI !!!\n");
      } else {
        print("Bunday kitob mavjud emas !!!");
      }
    }
  }

  // delete in borrowed books
  void removeBorrowed(List books, List borrowedBooks) {
    for (var i = 0; i < borrowedBooks.length; i++) {
      print(
          "NOMI: ${borrowedBooks[i].title}\nMUALLIFI: ${borrowedBooks[i].author}\nISBN: ${borrowedBooks[i].isbn}\nMAVJUDLIGI: ${borrowedBooks[i].there}\n");
    }
    // input borrowed isbn
    stdout.write("\nQarzdorlikdan chiqarmoqchi kitobni ISBN ni kiriting: ");
    String? borrowed = stdin.readLineSync()!;
    stdout.write('\x1B[2J\x1B[0;0H');

    for (var i = 0; i < books.length; i++) {
      if (books[i].isbn == borrowed) {
        borrowedBooks.remove(books[i]);
        print("\nQARZGA OLINGANLAR QATORIDAN O'CHIRILDI !!!\n");
      }
    }
  }
}
