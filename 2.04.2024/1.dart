import 'dart:io';

void main(List<String> args) {
  List all_books = [
    Books("O'tgan Kunlar", "Abdulla Qodiriy"),
    Books("Temur Tuziklari", "Amir Temur"),
    Books("Atomic Hebbits", "Jems Kemrn"),
    Books("Qonli Yo'rgaklar", "Sergey Aliksandr")
  ];

  List shelf_books = [
    Books("O'tgan Kunlar", "Abdulla Qodiriy"),
    Books("Temur Tuziklari", "Amir Temur")
  ];

  stdout.write('\x1B[2J\x1B[0;0H');
  while (true) {
    print("""\n1.KITOBLAR JAVONi...\n2.KITOBLAR OMBORI...\n3.EXIT...\n""");
    String? part = stdin.readLineSync()!;

    switch (part) {
      // books shelf section !!!
      case "1":
        stdout.write('\x1B[2J\x1B[0;0H');
        print(
            "\n                               --> KITOBLAR JAVONIGA HUSH KELIBSIZ !!! <--\n");
        print(
            "\n1.JAVONDAGI KITOBLARINI KO'RISH...\n2.JAVONGA KITOB QO'SHISH...\n3.JAVONDAN KITOB O'CHIRISH\n");

        String? part_shelf = stdin.readLineSync()!;
        switch (part_shelf) {
          case "1":
            stdout.write('\x1B[2J\x1B[0;0H');
            // printer shelf books
            BookShelf.showBooksShelf(shelf_books);
            break;
          case "2":
            stdout.write('\x1B[2J\x1B[0;0H');
            // addToShelf();
            BookShelf.addToShelf(all_books, shelf_books);
            break;
          case "3":
            stdout.write('\x1B[2J\x1B[0;0H');
            // removeShelf();
            BookShelf.removeShelf(all_books, shelf_books);
            break;
          default:
        }
        break;
      case "2":
        // books data !!!
        stdout.write('\x1B[2J\x1B[0;0H');
        print(
            "\n                               --> KITOBLAR OMBORIGA HUSH KELIBSIZ !!! <--\n");
        print(
            "\n1.OMBORDAGI KITOBLARINI KO'RISH...\n2.OMBORGA KITOB QO'SHISH...\n3.OMBORDAN KITOB O'CHIRISH\n");
        String? case_books = stdin.readLineSync()!;

        switch (case_books) {
          case "1":
            // show books
            stdout.write('\x1B[2J\x1B[0;0H');
            Books.showBooksAll(all_books);
            break;
          case "2":
            // addNewBooks();
            stdout.write('\x1B[2J\x1B[0;0H');
            BookShelf.addNewBooks(all_books, shelf_books);
            break;
          case "3":
            stdout.write('\x1B[2J\x1B[0;0H');
            BookShelf.deleteBooks(all_books, shelf_books);
            // deleteBooks();
            break;
        }
        break;
      case "3":
        stdout.write('\x1B[2J\x1B[0;0H');
        print("\nTASHRIFINGIZ UCHUN TASHAKKUR !!!\n");
        exit(3);

      default:
    }
  }
}

class Books {
  String name;
  String author;

  Books(this.name, this.author);

    // show all books in consol !!!
    static void showBooksAll(List all_books) {
        // show books all
        print("\nOMBORDAGI BARCHA KITOBLAR !!!\n");
        for (var i = 0; i < all_books.length; i++) {
            print(
                "KITOB NOMI: ${all_books[i].name} YOZUVCHI: ${all_books[i].author}");
        }
    }
}

class BookShelf {
  String name;
  String author;

  BookShelf(this.name, this.author);

    // ADD TO SHELF THE BOOKS !!!
    static addToShelf(List all_books, List shelf_books) {
        // add a books to the shelf
        print("\nQAYSI KITIOBNI JAVONGA QO'SHMOQCHISIZ?...\n");
        for (var i = 0; i < all_books.length; i++) {
            print(
                "${i + 1}.NOMI: ${all_books[i].name} MUALLIFI: ${all_books[i].author}");
        }
        int addId = int.parse(stdin.readLineSync()!);
        shelf_books.add(all_books[addId - 1]);

        // show add shelf books !!!
        stdout.write('\x1B[2J\x1B[0;0H');
        print("QO'SHILGAN KITOBLAR RO'YHATI...\n");
        for (var i = 0; i < shelf_books.length; i++) {
            print(
                "${i + 1}.NOMI: ${shelf_books[i].name} MUALLIFI: ${shelf_books[i].author}");
        }
    }

    static removeShelf(List all_books, List shelf_books) {
        // remove boooks shelf
        print("\nQAYSI KITIOBNI JAVONDAN O'CHIRMOQCHISIZ?...\n");
        for (var i = 0; i < shelf_books.length; i++) {
            print(
                "${i + 1}.NOMI: ${shelf_books[i].name} MUALLIFI: ${shelf_books[i].author}");
        }

        // remove books id
        int remId = int.parse(stdin.readLineSync()!);
        // remove
        shelf_books.remove(shelf_books[remId - 1]);
    }

    // SHOW BOOKS SHELF
    static showBooksShelf(List shelf_books) {
        // shelf_books list in this books?
        if (shelf_books.isEmpty) {
            print("\nJAVONDA KITOBLAR MAVJUD EMAS !!!\n");
        } else {
            print("\nJAVONDAGI MAVJUD KITOBLAR !!!\n");
            // show books shelf
            for (var i = 0; i < shelf_books.length; i++) {
            print(
                "KITOB NOMI: ${shelf_books[i].name} YOZUVCHI: ${shelf_books[i].author}");
            }
        }
    }

    static addNewBooks(List all_books, List shelf_books) {

        // add New books
        stdout.write("\nOMBORGA NECHTA KITOB QO'SHMOQCHISIZ?...");
        int addNumber = int.parse(stdin.readLineSync()!);

        // INPUT BOOKS NAME AND AUTHOR_NAME
        for (var i = 0; i < addNumber; i++) {
            stdout.write("${i+1} - KITOBNI NOMINI KIRITING... ");
            String? name = stdin.readLineSync()!;
            stdout.write("${i+1} - KITOBNI MUALLIFINI KIRITING... ");
            String? author = stdin.readLineSync()!;

            all_books.add(BookShelf(name, author));
        }
    }

    static deleteBooks(List all_books, List shelf_books) {
        // Delete to books
        print("\nQAYSI KITIOBNI O'CHIRMOQCHISIZ?...\n");
        for (var i = 0; i < all_books.length; i++) {
            print(
                "${i + 1}.NOMI: ${all_books[i].name} MUALLIFI: ${all_books[i].author}");
        }

        // Delete books id
        int deleteId = int.parse(stdin.readLineSync()!);
        // Delete
        all_books.remove(all_books[deleteId - 1]);
        print("\nKITOB MUVAFAQIYYATLI O'CHIRILDI !!!\n");
    }
}
