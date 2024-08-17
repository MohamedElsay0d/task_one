import 'Book.dart';

class Library {
  List<Book> books;

  Library(this.books);

  Book? searchByTitle(String title) {
    for (var element in books) {
      if (element.title.toLowerCase() == title.toLowerCase()) {
        return element;
      }
    }
    return null;
  }

  List<Book> searchByAuthor(String author) {
    return books
        .where((book) => book.author.toLowerCase() == author.toLowerCase())
        .toList();
  }
}
