import 'package:flutter/material.dart';

class MyIngredientsWidget extends StatelessWidget {
  const MyIngredientsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      height: 45,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Ingredients",
            textAlign: TextAlign.start,
            style: TextStyle(fontSize: 11.5),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                "assets/gluten_icon.png",
                height: 20,
              ),
              Image.asset(
                "assets/sugar_icon.png",
                height: 20,
              ),
              Image.asset(
                "assets/lowfat_icon.png",
                height: 20,
              ),
              Image.asset(
                "assets/kcal_icon.png",
                height: 20,
              ),
            ],
          )
        ],
      ),
    );
  }
}