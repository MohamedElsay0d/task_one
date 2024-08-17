import 'package:task_one/Task2/Product.dart';

class Cart {
  List<Product> products = [];

  void addProduct(Product product) {
    var productIsExsist = products.firstWhere(
        (element) => element.name.toLowerCase() == product.name.toLowerCase(),
        orElse: () => Product("", 0, 0));
    if (productIsExsist.name.isNotEmpty) {
      productIsExsist.quantity += product.quantity;
    } else {
      products.add(product);
    }
    print('${product.quantity} of "${product.name}" is added to the cart.');
  }

  void removeProduct(String productName) {
    products.removeWhere(
        (product) => product.name.toLowerCase() == productName.toLowerCase());
    print('Removed "$productName" from the cart.');
  }

  void displayCart() {
    print('Cart:');
    for (var product in products) {
      print('${product.quantity} of "${product.name}"');
    }
  }

  double totalPrice() {
    double total = 0.0;
    for (var product in products) {
      total += (product.price * product.quantity);
    }
    return total;
  }
}
