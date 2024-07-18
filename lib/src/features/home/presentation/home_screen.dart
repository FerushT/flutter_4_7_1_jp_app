import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_4_7_1_jp_app/src/features/home/presentation/widget/category_buttons.dart';
import 'package:flutter_4_7_1_jp_app/src/features/home/presentation/widget/my_gradiant_elevated_button.dart';
import 'package:flutter_sficon/flutter_sficon.dart';
import 'package:flutter_svg/svg.dart';

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
                                color: Colors.white.withOpacity(0.8),
                              ),
                              Text(" All categories ",
                                  style: TextStyle(
                                      color: Colors.white.withOpacity(0.8),
                                      letterSpacing: -0.5,
                                      fontSize: 12)),
                              SFIcon(
                                SFIcons.sf_chevron_down,
                                fontSize: 11,
                                fontWeight: FontWeight.bold,
                                color: Colors.white.withOpacity(0.8),
                              ),
                            ],
                          ),
                          140),
                      buildCategoryButtonSelected(const Text(
                        "Salty",
                        style: TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0),
                            letterSpacing: -0.5,
                            fontSize: 12),
                      )),
                      buildCategoryButton(
                          Text(
                            "Sweet",
                            style: TextStyle(
                                color: Colors.white.withOpacity(0.8),
                                letterSpacing: -0.5,
                                fontSize: 12),
                          ),
                          90),
                      buildCategoryButton(
                          Text(
                            "Dry Fruits",
                            style: TextStyle(
                                color: Colors.white.withOpacity(0.8),
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
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(40),
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 35.0, sigmaY: 35.0),
                        child: Container(
                          height: 240,
                          width: 360,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                                image:
                                    AssetImage("assets/details/Top Card.png"),
                                opacity: 0.1),
                          ),
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 25.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const SizedBox(height: 7),
                                    const Text("Angi's Yummy Burger",
                                        style: TextStyle(
                                            height: 0,
                                            fontSize: 15,
                                            fontFamily: "Inter",
                                            color: Colors.white,
                                            letterSpacing: -0.5,
                                            fontWeight: FontWeight.w900)),
                                    Text(
                                        "Delish vegan burger\nthats tastes like heaven",
                                        style: TextStyle(
                                            fontSize: 11,
                                            fontFamily: "Inter",
                                            color:
                                                Colors.white.withOpacity(0.8),
                                            letterSpacing: -0.5,
                                            height: 0,
                                            fontWeight: FontWeight.w500)),
                                    Row(
                                      children: [
                                        SvgPicture.asset(
                                          "assets/Coin-ada-big.svg",
                                          height: 17,
                                          color: Colors.white,
                                        ),
                                        const Text(
                                          "13.99",
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontFamily: "Inter",
                                              color: Colors.white,
                                              letterSpacing: -0.5,
                                              fontWeight: FontWeight.w700),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 30),
                                    MyGradientElevatedButton(
                                        height: 38,
                                        width: 92,
                                        onPressed: () {},
                                        colorBegin: const Color.fromARGB(
                                            255, 220, 143, 219),
                                        colorEnd: const Color.fromARGB(
                                            255, 147, 140, 237),
                                        borderRadius: 9,
                                        text: "Add to order",
                                        textSize: 11),
                                    const SizedBox(height: 15),
                                  ],
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    const SizedBox(height: 20),
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        SizedBox(
                                          height: 14,
                                          child: Image.asset(
                                            "assets/grafiken/star.png",
                                          ),
                                        ),
                                        Text(" 4.8",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontSize: 11,
                                                fontFamily: "Inter",
                                                color: Colors.white
                                                    .withOpacity(0.8),
                                                letterSpacing: -0.5,
                                                fontWeight: FontWeight.w400)),
                                      ],
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      right: 5,
                      bottom: -20,
                      child: SizedBox(
                        height: 200,
                        child: Image.asset(
                          "assets/grafiken/Burger_3D.png",
                          fit: BoxFit.contain,
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 55),
                const Text("We Recommend",
                    style: TextStyle(
                        height: 0,
                        fontSize: 15,
                        fontFamily: "Inter",
                        color: Colors.white,
                        letterSpacing: -0.5,
                        fontWeight: FontWeight.w900)),
                const SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Placeholder(),
                      Placeholder(),
                      Placeholder(),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
