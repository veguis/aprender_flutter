import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  // list of item on sale
  final List _shopItems = [
    // ["name", "price", "imgPath", color]
    ["Hamburguer", "7.50", "lib/img/hamburger.png", Colors.red],
    ["Pizza", "2.50", "lib/img/pizza.png", Colors.orange],
    ["Hot Dog", "4.50", "lib/img/hotDog.png", Colors.yellow],
    ["Fries", "3.50", "lib/img/fries.png", Colors.green],
    ["Donut", "1.50", "lib/img/doughnut.png", Colors.purple],
  ];

  // list of cart items
  List _cartItems = [];

  get shopItems => _shopItems;
  get cartItems => _cartItems;

  // add item to cart
  void addItemToCart(int index) {
    _cartItems.add(_shopItems[index]);
    notifyListeners();
  }

  // remove item from cart
  void removeItemFromCart(int index) {
    _cartItems.removeAt(index);
    notifyListeners();
  }

  // calculate total price
  String calculateTotal() {
    double totalPrice = 0;
    for(int i = 0; i < _cartItems.length; i++) {
      totalPrice += double.parse(_cartItems[i][1]);
    }
    return totalPrice.toStringAsFixed(2);
  }
}