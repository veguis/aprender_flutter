import 'package:flutter/material.dart';

import '../models/coffee.dart';

class CoffeeTile extends StatelessWidget {

  final Coffee coffee;
  final void Function()? onPressed;
  final Widget icon;

  const CoffeeTile({
    super.key,
    required this.coffee,
    required this.onPressed,
    required this.icon
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(10),
      ),

      margin: EdgeInsets.only(bottom: 10),

      padding: const EdgeInsets.symmetric(
        horizontal: 25,
        vertical: 10
      ),

      child: ListTile(
        title: Text(coffee.name),
        subtitle: Text(coffee.price),
        leading: Image.asset(coffee.imgPath),
        trailing: IconButton(
          icon: icon,
          onPressed: onPressed,
        ),
      ),

    );
  }
}