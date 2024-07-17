import 'dart:ui';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              "assets/background/bg_mainscreen.png",
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: 75,
            left: 20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Choose Your Favorite\nSnack",
                  style: TextStyle(
                    fontSize: 21.5,
                    color: Colors.white,
                    fontWeight: FontWeight.w900,
                  ),
                  textAlign: TextAlign.start,
                ),
                const SizedBox(height: 12),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      _buildCategoryButton("All categories"),
                      const SizedBox(width: 8),
                      _buildCategoryButton("Salty"),
                      const SizedBox(width: 8),
                      _buildCategoryButton("Sweet"),
                      const SizedBox(width: 8),
                      _buildCategoryButton("Dry Fruits"),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCategoryButton(String text) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(40),
      child: Container(
        height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          border: Border.all(
            color: const Color.fromARGB(255, 223, 186, 214),
            width: 0.8,
          ),
        ),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 18.0, sigmaY: 18.0),
          child: Material(
            color: Colors.transparent,
            child: GestureDetector(
              onTap: () {},
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    text,
                    style: const TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
