import 'package:flutter/material.dart';

class MyGradientElevatedButton extends StatelessWidget {
  const MyGradientElevatedButton({
    super.key,
    required this.height,
    required this.width,
    required this.onPressed,
    required this.colorBegin,
    required this.colorEnd,
    required this.borderRadius,
    required this.text,
    required this.textSize,
  });

  final double height;
  final double width;
  final VoidCallback onPressed;
  final Color colorBegin;
  final Color colorEnd;
  final double borderRadius;
  final String text;
  final double textSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [colorBegin, colorEnd],
          ),
          borderRadius: BorderRadius.circular(borderRadius),
          border: Border.all(
              color: const Color.fromARGB(255, 227, 162, 241).withOpacity(0.5),
              width: 2),
          boxShadow: [
            BoxShadow(
              color: Colors.purple.withOpacity(0.6),
              spreadRadius: 6,
              blurRadius: 17,
              offset: const Offset(0, 12),
            ),
          ]),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.all(0),
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent),
        onPressed: onPressed,
        child: Center(
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: textSize,
                color: Colors.white,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
