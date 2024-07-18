import 'package:flutter/material.dart';
import 'package:flutter_4_7_1_jp_app/src/features/home/presentation/widget/detail_card.dart';

class ItemCardSmall extends StatelessWidget {
  final String imagePath;
  final String imageTitle;
  final String imageDescription;
  const ItemCardSmall(
      {super.key,
      required this.imagePath,
      required this.imageTitle,
      required this.imageDescription});
  @override
  Widget build(BuildContext context) {
    const double borderRadius = 27;
    return SizedBox(
      height: 270,
      width: 220,
      child: Padding(
        padding: const EdgeInsets.only(right: 8),
        child: GestureDetector(
          onTap: () {
            showModalBottomSheet(
              isScrollControlled: true,
              elevation: 1,
              shape: LinearBorder.end(),
              useSafeArea: false,
              context: context,
              builder: (BuildContext context) {
                return const FractionallySizedBox(
                    heightFactor: 0.885, child: DetailCard());
              },
            );
          },
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius),
            ),
            color: Colors.transparent, // Transparent color for the Card
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(borderRadius),
                gradient: const LinearGradient(
                  colors: [
                    Color.fromARGB(255, 103, 103, 106),
                    Color.fromARGB(255, 108, 101, 185),
                    Color.fromARGB(255, 108, 75, 181),
                  ], // Change colors as needed
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              padding: const EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                      width: 160, height: 160, child: Image.asset(imagePath)),
                  const SizedBox(height: 8),
                  Text(
                    imageTitle,
                    textAlign: TextAlign.left,
                    style: const TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    imageDescription,
                    textAlign: TextAlign.left,
                  ),
                  const SizedBox(height: 8),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "₳ 8.99",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.favorite_border_outlined,
                            color: Color.fromARGB(255, 172, 170, 170),
                            size: 14,
                          ),
                          Text(
                            ' 200',
                            style: TextStyle(
                                color: Color.fromARGB(255, 172, 170, 170)),
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
