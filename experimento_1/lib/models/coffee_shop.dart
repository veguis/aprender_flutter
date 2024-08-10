import 'package:flutter/material.dart';
import 'coffee.dart';

class CoffeeShop extends ChangeNotifier {

  // coffee for sale list
  final List<Coffee> _shop = [
    Coffee(
      name: 'American Coffee',
      price: '4.99',
      imgPath: 'lib/img/american.png',
    ),
    Coffee(
      name: 'Coffee pitcher',
      price: '7.99',
      imgPath: 'lib/img/big.png',
    ),
    Coffee(
      name: 'Black Coffee',
      price: '3.99',
      imgPath: 'lib/img/black.png',
    ),
    Coffee(
      name: 'Espresso Coffee',
      price: '2.99',
      imgPath: 'lib/img/espresso.png',
    ),
    Coffee(
      name: 'Latte',
      price: '3.99',
      imgPath: 'lib/img/latte.png',
    ),
    Coffee(
      name: 'Fresh Coffee',
      price: '4.99',
      imgPath: 'lib/img/natural.png',
    ),
  ];

  // user cart
  List<Coffee> _userCart = [];

  // get coffee list
  List<Coffee> get coffeeShop => _shop;

  // get user cart
  List<Coffee> get userCart => _userCart;

  //add  item to cart
  void addCoffeeToCart(Coffee coffee) {
    _userCart.add(coffee);
    notifyListeners();
  }

  // remove item from cart
  void removeCoffeeFromCart(Coffee coffee) {
    _userCart.remove(coffee);
    notifyListeners();
  }

  // clear cart
  void clearCart() {
    _userCart.clear();
    notifyListeners();
  }

}