import 'package:flutter/material.dart';
import 'package:modern_shop/model/products.dart';

class Shop extends ChangeNotifier {
  final List<Product> shopItem = [
    // products
    Product(
      name: "Product 1",
      price: 98.98,
      description:
          "Item Description.. more description to describe the products more info here",
      imageUrl: 'assets/images/glass.png',
    ),
    Product(
      name: "Product 2",
      price: 98.98,
      description:
          "Item Description.. more description to describe the products more info here",
      imageUrl: 'assets/images/leather.png',
    ),
    Product(
      name: "Product 3",
      price: 98.98,
      description:
          "Item Description.. more description to describe the products more info here",
      imageUrl: 'assets/images/watch.png',
    ),
    Product(
      name: "Product 4",
      price: 98.98,
      description:
          "Item Description.. more description to describe the products more info here",
      imageUrl: 'assets/images/t-shirt.png',
    ),
  ];

  // user cart
  List<Product> cartItem = [];

  // get product list
  List<Product> get shop => shopItem;
  // get user cart
  List<Product> get cart => cartItem;

  // add item to cart

  void addToCart(Product product) {
    cartItem.add(product);
    notifyListeners();
  }

  // remove item from cart
  void removeFromCart(Product product) {
    cartItem.remove(product);
    notifyListeners();
  }
}
