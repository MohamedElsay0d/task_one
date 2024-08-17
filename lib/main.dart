import 'package:task_one/Task1/Library.dart';

import 'Task1/Book.dart';
import 'Task2/Cart.dart';
import 'Task2/Product.dart';
import 'Task3/Student.dart';

void main(List<String> args) {
// Task One
  Book book1 = Book(
      title: 'The Great Gatsby',
      author: 'Ahmed Sobhy',
      isbn: '7896423510',
      availability: 20);
  Book book2 = Book(
      title: 'A Song of Ice and Fire ',
      author: 'Mohamed ElSayed',
      isbn: '7896423510',
      availability: 20);

  Library library = Library([book1, book2]);

  dynamic checkExsist = library.searchByTitle('The Great Gatsby');
  if (checkExsist != null) {
    print("Book found");
    checkExsist.borrow();
  } else {
    print("Book not found");
  }

  List list = library.searchByAuthor('Ahmed Sobhy');
  if (list.isNotEmpty) {
    print("Books found");
    print("#ofBooks: ${list.length}");
  } else {
    print("no books found");
  }

// ---------------------------------------------------------

// Task Two

  Cart cart = Cart();
  cart.addProduct(Product('Apple', 10, 1));
  cart.addProduct(Product('Banana', 5, 2));
  cart.addProduct(Product('Orange', 7, 3));

  cart.displayCart();
  print('Cart total: \$${cart.totalPrice()}');

  cart.removeProduct('apple');
  cart.displayCart();

// ---------------------------------------------------------

// Task Three
  var student1 = Student(name: "Mohamed", id: 10);
  student1.addGrade(85);
  student1.addGrade(70);
  student1.addGrade(95);

  student1.displayGrades();
  double average = student1.calcAverage();
  print('Average grade for ${student1.name}: $average');

  student1.determinePassFail();
}
