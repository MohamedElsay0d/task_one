class Book {
  String title;
  String author;
  String isbn;
  int availability;

  Book(
      {required this.title,
      required this.author,
      required this.isbn,
      this.availability = 1});

  void borrow() {
    if (availability > 0) {
      print("You borrowed $title by $author");
      availability--;
    } else {
      print("sorry, this book is not available");
    }
  }

  void returnBook() {
    availability++;
    print("Book is returned");
  }
}
