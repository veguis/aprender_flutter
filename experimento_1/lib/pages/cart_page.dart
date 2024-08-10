import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../components/coffee_tile.dart';
import '../models/coffee.dart';
import '../models/coffee_shop.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {

  // Remove coffee from cart
  void removeFromCart(Coffee coffee) {
    Provider.of<CoffeeShop>(context, listen: false).removeCoffeeFromCart(coffee);

    showDialog(
      context: context,
      builder: (context) => const AlertDialog(
        title: Center(child: Text("Removed from cart")),
      ),
    );
  }

  // Pay now
  void payNow() {
    Provider.of<CoffeeShop>(context, listen: false).userCart.clear();

    showDialog(
      context: context,
      builder: (context) => const AlertDialog(
        title: Center(child: Text("Payment successful")),
      ),
    );

  }

  @override
  Widget build(BuildContext context) {
    return Consumer<CoffeeShop>(
      builder: (context, value, child) => SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [

              // Header text
              const Text(
                'Your cart',
                style: TextStyle(fontSize: 20),
              ),

              const SizedBox(height: 25),

              // Cart list
              Expanded(
                child: ListView.builder(
                  itemCount: value.userCart.length,
                  itemBuilder: (context, index) {
                  // Get individual coffee
                  Coffee eachCoffee = value.userCart[index];

                  // return the tile for the coffee
                  return CoffeeTile(
                    coffee: eachCoffee,
                    icon: const Icon(Icons.delete),
                    onPressed: () => removeFromCart(eachCoffee),
                  );
                }),
              ),

              // Pay button
              GestureDetector(
                onTap: payNow,
                child: Container(
                  padding: const EdgeInsets. all(25),
                  width:double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.brown,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Center(
                    child: Text(
                      'Pay now',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                )
              )

            ],
          ),
        ),
      )
    );
  }
}