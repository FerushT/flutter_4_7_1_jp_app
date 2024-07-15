import 'package:flutter/material.dart';
import 'package:flutter_4_7_1_jp_app/src/features/home/presentation/home_screen.dart';

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
            left: -20,
            child: SizedBox(
              height: 530,
              width: 530,
              child: Image.asset(
                "assets/grafiken/chick cupcakes_3D.png",
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
