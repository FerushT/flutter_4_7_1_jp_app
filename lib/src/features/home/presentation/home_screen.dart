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
                  scrollDirection: Axis.vertical,
                  child: Row(
                    children: [
                      ClipRRect(
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
                            filter:
                                ImageFilter.blur(sigmaX: 18.0, sigmaY: 18.0),
                            child: Material(
                              color: Colors.transparent,
                              child: GestureDetector(
                                onTap: () {},
                                child: const Center(
                                  child: Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 16.0),
                                    child: Text(
                                      "All categories",
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 8), // Add spacing between buttons
                      ClipRRect(
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
                            filter:
                                ImageFilter.blur(sigmaX: 18.0, sigmaY: 18.0),
                            child: Material(
                              color: Colors.transparent,
                              child: GestureDetector(
                                onTap: () {},
                                child: const Center(
                                  child: Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 16.0),
                                    child: Text(
                                      "Salty",
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 8),
                      ClipRRect(
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
                            filter:
                                ImageFilter.blur(sigmaX: 18.0, sigmaY: 18.0),
                            child: Material(
                              color: Colors.transparent,
                              child: GestureDetector(
                                onTap: () {},
                                child: const Center(
                                  child: Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 16.0),
                                    child: Text(
                                      "Sweet",
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 8),
                      ClipRRect(
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
                            filter:
                                ImageFilter.blur(sigmaX: 18.0, sigmaY: 18.0),
                            child: Material(
                              color: Colors.transparent,
                              child: GestureDetector(
                                onTap: () {},
                                child: const Center(
                                  child: Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 16.0),
                                    child: Text(
                                      "Dry Fruits",
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
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
}
