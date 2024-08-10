import 'package:flutter/material.dart';

class GroceryItemTile extends StatelessWidget {

  final String name;
  final String price;
  final String imgPath;
  final color;
  final void Function()? onPressed;

  const GroceryItemTile({
    super.key,
    required this.name,
    required this.price,
    required this.imgPath,
    required this.color,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        decoration: BoxDecoration(
          color: color[100],
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // image
            Image.asset(
              imgPath,
              height: 70,
            ),
              
            // name
            Text(name),
      
            // price + button
            MaterialButton(
              onPressed: onPressed,
              color: color[800],
              child: Text(
                '\$$price',
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              )
            ),

          ],
        ),
      ),
    );
  }
}