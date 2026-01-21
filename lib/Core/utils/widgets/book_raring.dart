import 'package:bookly_app/Core/utils/style.dart';
import 'package:flutter/material.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.star, color: Colors.yellow[400], size: 22),
        const SizedBox(width: 4),
        Text("4.8", style: Styles.text16),
        const SizedBox(width: 5),
        Text("(2347)", style: Styles.text14gray),
      ],
    );
  }
}
