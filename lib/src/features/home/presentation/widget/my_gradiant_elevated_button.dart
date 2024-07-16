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
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent, shadowColor: Colors.transparent),
      onPressed: onPressed,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [colorBegin, colorEnd],
          ),
          borderRadius: BorderRadius.circular(borderRadius),
        ),
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
