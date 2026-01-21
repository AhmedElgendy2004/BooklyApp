import 'package:bookly_app/Core/utils/style.dart';
import 'package:bookly_app/Features/Home/presentation/views/widgets/book_image.dart';
import 'package:bookly_app/Features/Home/presentation/views/widgets/book_raring.dart';
import 'package:flutter/material.dart';

class BookDetailsInfoSection extends StatelessWidget {
  const BookDetailsInfoSection({
    super.key,
    required this.height,
    required this.width,
  });
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
            right: width * 0.2,
            left: width * 0.2,
            bottom: width * 0.05,
            top: 0,
          ),
          child: BookImage(),
        ),
        const Text("The Jungle Book ", style: Styles.text30, maxLines: 2),
        SizedBox(height: height * 0.01),
        const Text("by Rudyard Kipling", style: Styles.text18gray, maxLines: 2),
        SizedBox(height: height * 0.02),
        const BookRating(),
      ],
    );
  }
}
