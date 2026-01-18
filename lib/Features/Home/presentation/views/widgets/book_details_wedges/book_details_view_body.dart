import 'package:bookly_app/Core/utils/style.dart';
import 'package:bookly_app/Features/Home/presentation/views/widgets/book_details_wedges/book_details_bottom.dart';
import 'package:bookly_app/Features/Home/presentation/views/widgets/book_details_wedges/custom_book_details_app_bar.dart';
import 'package:bookly_app/Features/Home/presentation/views/widgets/book_image.dart';
import 'package:bookly_app/Features/Home/presentation/views/widgets/book_raring.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CustomBookDetailsAppBar(),
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
            SizedBox(height: width * 0.03),
            const Text(
              "by Rudyard Kipling",
              style: Styles.text18gray,
              maxLines: 2,
            ),
            SizedBox(height: width * 0.02),
            const BookRating(),
            SizedBox(height: width * 0.08),
            const BooKDetailsBottom(),
            SizedBox(height: width * 0.08),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text("You Can Also Like ", style: Styles.text14),
            ),
          ],
        ),
      ),
    );
  }
}
