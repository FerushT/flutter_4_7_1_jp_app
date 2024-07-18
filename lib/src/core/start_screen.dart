import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_4_7_1_jp_app/src/features/home/presentation/home_screen.dart';
import 'package:flutter_4_7_1_jp_app/src/features/home/presentation/widget/my_gradiant_elevated_button.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              "assets/background/bg_startscreen.png",
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: 100,
            left: -27,
            child: SizedBox(
              height: 550,
              width: 550,
              child: Image.asset(
                "assets/grafiken/cat_cupcakes_3D.png",
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            bottom: 100,
            left: 3,
            child: Opacity(
                opacity: 0.3, child: Image.asset("assets/details/T2.png")),
          ),
          Positioned(
            bottom: 85,
            left: 25,
            right: 25,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(35),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 18.0, sigmaY: 18.0),
                child: Container(
                  height: 210,
                  padding: const EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(35),
                    border: Border.all(
                        color: const Color.fromARGB(255, 193, 170, 218),
                        width: 0.2),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Feeling Snackish Today?",
                        style: TextStyle(
                            fontSize: 21, fontWeight: FontWeight.w900),
                      ),
                      const Text(
                        "Explore Angi's most popular snack selection and get instantly happy.",
                        style: TextStyle(fontSize: 12, color: Colors.grey),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      MyGradientElevatedButton(
                          height: 45,
                          width: 185,
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const HomeScreen()));
                          },
                          colorBegin: Color.fromARGB(255, 237, 99, 208),
                          colorEnd: Color.fromARGB(255, 247, 148, 186),
                          borderRadius: 10,
                          text: "Order Now",
                          textSize: 17),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
