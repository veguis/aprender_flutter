import 'package:experimento_1/components/bottom_nav_bar.dart';
import 'package:experimento_1/const.dart';
import 'package:flutter/material.dart';

import 'cart_page.dart';
import 'shop_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  // Navigate to the selected tab
  int _selectedINdex = 0;

  void navigateBottomBar(int index) {
    setState(() {
      _selectedINdex = index;
    });
  }

  // Pages
  final List<Widget> _pages = [
    // Shop page
    const ShopPage(),
    // Cart page
    const CartPage(),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      body: _pages[_selectedINdex],
    );
  }
}