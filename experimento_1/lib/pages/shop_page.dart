import 'package:experimento_1/components/coffee_tile.dart';
import 'package:experimento_1/models/coffee_shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/coffee.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {

  // Add coffe to cart
  void addToCart(Coffee coffee) {
    Provider.of<CoffeeShop>(context, listen: false).addCoffeeToCart(coffee);

    showDialog(
      context: context,
      builder: (context) => const AlertDialog(
        title: Center(child: Text("Added to cart")),
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
                'Choose your coffee',
                style: TextStyle(fontSize: 20),
              ),

              const SizedBox(height: 25),

              // Coffee list
              Expanded(
                child: ListView.builder(
                  itemCount: value.coffeeShop.length,
                  itemBuilder: (context, index) {
                  // Get individual coffee
                  Coffee eachCoffee = value.coffeeShop[index];

                  // return the tile for the coffee
                  return CoffeeTile(
                    coffee: eachCoffee,
                    icon: const Icon(Icons.add),
                    onPressed: () => addToCart(eachCoffee),
                  );
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}