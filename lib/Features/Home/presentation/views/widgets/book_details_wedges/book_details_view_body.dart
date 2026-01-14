import 'package:bookly_app/Features/Home/presentation/views/widgets/book_details_wedges/custom_book_details_app_bar.dart';
import 'package:bookly_app/Features/Home/presentation/views/widgets/custom_book_Image.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CustomBookDetailsAppBar(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.18),
              child: const CustomBookImage(),
            ),
          ],
        ),
      ),
    );
  }
}
