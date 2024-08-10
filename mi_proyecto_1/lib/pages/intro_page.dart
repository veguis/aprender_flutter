import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          // Logo images
          Padding(
            padding: const EdgeInsets.only(top: 160, left: 24, right: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(
                  'assets/images/black.png',
                  height: 150,
                ),
                
                Image.asset(
                  'assets/images/hotDog.png',
                  height: 150,
                ),
                
              ],
            ),
          ),

          // Slogan
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Text(
              'Enjoy the best breakfast in town',
              textAlign: TextAlign.center,
              style: GoogleFonts.notoSerif(
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Come visit our coffee shop :)'
            ),
          ),

          const Spacer(),

          // Get started button
          GestureDetector(
            onTap: () => Navigator.pushReplacement(context, MaterialPageRoute(
              builder: (context) {
                return HomePage();
              },
            )),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.brown[800],
                borderRadius: BorderRadius.circular(10)
              ),
              padding: const EdgeInsets.all(24),
              child: const Text(
                "Get Started",
                style: TextStyle (color: Colors.white)
              )
            ),
          ),

          const Spacer(),

        ],
      ),
    );
  }
}