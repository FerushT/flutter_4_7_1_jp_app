import 'dart:ui';

import 'package:flutter/material.dart';

Widget buildCategoryButton(Widget child, double width) {
  return Container(
    margin: const EdgeInsets.only(right: 8),
    height: 37,
    width: width,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(40),
      border: Border.all(
        color: const Color.fromARGB(255, 255, 255, 255),
        width: 0.4,
      ),
    ),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(40),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 18.0, sigmaY: 18.0),
        child: ElevatedButton(
          onPressed: () {},
          style: ButtonStyle(
            padding: const WidgetStatePropertyAll(EdgeInsets.zero),
            shadowColor: WidgetStateProperty.all(Colors.transparent),
            backgroundColor: WidgetStateProperty.all(
              const Color.fromARGB(40, 255, 255, 255),
            ),
          ),
          child: child,
        ),
      ),
    ),
  );
}

Widget buildCategoryButtonSelected(Widget child) {
  return Container(
    margin: const EdgeInsets.only(right: 8),
    height: 37,
    width: 90,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(40),
    ),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(40),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 18.0, sigmaY: 18.0),
        child: ElevatedButton(
          onPressed: () {},
          style: ButtonStyle(
            padding: const WidgetStatePropertyAll(EdgeInsets.zero),
            shadowColor: WidgetStateProperty.all(Colors.transparent),
            backgroundColor: WidgetStateProperty.all(
              const Color.fromARGB(187, 255, 255, 255),
            ),
          ),
          child: child,
        ),
      ),
    ),
  );
}
