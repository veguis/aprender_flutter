import 'package:flutter/material.dart';
import 'package:mi_proyecto_1/pages/cart_page.dart';
import 'package:mi_proyecto_1/pages/drinks_page.dart';
import 'package:mi_proyecto_1/pages/food_page.dart';

import '../components/my_bottom_nav_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    const FoodPage(),
    const DrinksPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (context) {
            return const CartPage();
          }),
        ),
        backgroundColor: Colors.grey[700],
        child: const Icon(
          Icons.shopping_cart,
          color: Colors.white,
        ),
      ),
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      body: _pages[_selectedIndex],
    );
  }
}
