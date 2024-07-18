import 'package:flutter/material.dart';

class DetailCard extends StatelessWidget {
  const DetailCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        elevation: 0,
        color: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(35),
          side: BorderSide(
            color: Colors.white.withOpacity(0.20),
            width: 1,
          ),
        ),
        child: SizedBox(
          height: 320,
          width: 320,
        ),
      ),
    );
  }
}
