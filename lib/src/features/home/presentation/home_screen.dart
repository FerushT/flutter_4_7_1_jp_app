import 'package:flutter/material.dart';
import 'package:flutter_4_7_1_jp_app/src/features/home/presentation/widget/item_card_big.dart';
import 'package:flutter_4_7_1_jp_app/src/features/home/presentation/widget/item_card_small.dart';
import 'package:flutter_4_7_1_jp_app/src/features/home/presentation/widget/category_buttons.dart';
import 'package:flutter_sficon/flutter_sficon.dart';

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
                      buildCategoryButton(
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SFIcon(
                                SFIcons.sf_takeoutbag_and_cup_and_straw,
                                fontSize: 11,
                                fontWeight: FontWeight.bold,
                                color: Colors.white.withOpacity(0.5),
                              ),
                              Text(
                                " All categories ",
                                style: TextStyle(
                                    color: Colors.white.withOpacity(0.5),
                                    letterSpacing: -0.5,
                                    fontSize: 11,
                                    fontWeight: FontWeight.bold),
                              ),
                              SFIcon(
                                SFIcons.sf_chevron_down,
                                fontSize: 11,
                                fontWeight: FontWeight.bold,
                                color: Colors.white.withOpacity(0.5),
                              ),
                            ],
                          ),
                          140),
                      buildCategoryButtonSelected(const Text(
                        "Salty",
                        style: TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0),
                            letterSpacing: -0.5,
                            fontSize: 11,
                            fontWeight: FontWeight.w800),
                      )),
                      buildCategoryButton(
                          Text(
                            "Sweet",
                            style: TextStyle(
                                color: Colors.white.withOpacity(0.5),
                                letterSpacing: -0.5,
                                fontSize: 12),
                          ),
                          90),
                      buildCategoryButton(
                          Text(
                            "Dry Fruits",
                            style: TextStyle(
                                color: Colors.white.withOpacity(0.5),
                                letterSpacing: -0.5,
                                fontSize: 12),
                          ),
                          90),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 42,
                ),
                const ItemCardBig(),
                const SizedBox(height: 55),
                const Text(
                  " We Recommend",
                  style: TextStyle(
                      height: 0,
                      fontSize: 15,
                      fontFamily: "Inter",
                      color: Colors.white,
                      letterSpacing: -0.2,
                      fontWeight: FontWeight.w900),
                ),
                const SizedBox(
                  height: 10,
                ),
                const SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      ItemCardSmall(
                          imagePath: "assets/grafiken/cat_cupcakes_3D.png",
                          imageTitle: "Mogli's Cup",
                          imageDescription: "Strawberry ice cream",
                          imageLikes: "200"),
                      ItemCardSmall(
                          imagePath: "assets/grafiken/Ice_cream.png",
                          imageTitle: "Balu's Cup",
                          imageDescription: "Pistachio ice cream",
                          imageLikes: "100"),
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
