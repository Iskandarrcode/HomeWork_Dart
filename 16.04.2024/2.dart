void main(List<String> args) {
  var book = Book();
  book.booksAdd();
  book.booksRead();
  book.ratingAdd();
  book.ratingAverage();
  book.aboutBook();
}

// class Book
class Book extends User with Rating{
  late String author;
  late int publicationYear;
  late int titleNumber;

  // override to abstract class
  @override
  void booksAdd() {
    print("\nbooksAdd() --> Kitob qo'shish\n");
  }

  // override to abstract class
  @override
  void booksRead() {
    print("booksRead() --> O'qilgan kitoblar\n");
  }

  // override to mixin
  @override
  void ratingAdd() {
    print("ratingAdd() --> Reting mixin ni raing add methodi\n");
  }

  // override to mixin
  @override
  void ratingAverage() {
    print("ratingAverage() --> Reting mixin ni raring Aveage methodi\n");
  }

  // about the book method
  void aboutBook() {
    print("aboutBook() --> Barcha kitoblar haqida malumotlar\n");
  }
}

// abstract class User
abstract class User {
  late String name;
  late String email;
  late List readBooks;

  // add book method
  void booksAdd();

  // Books read
  void booksRead();

}

// mixin Rating 
mixin Rating {
  // add to reting
  void ratingAdd() {}

  // average rating
  void ratingAverage() {}
}

// Extansion analysis
extension Analysis on int {
  int analysis() {
    return this;
  }
}