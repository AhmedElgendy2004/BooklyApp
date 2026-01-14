import 'package:bookly_app/Core/utils/style.dart';
import 'package:bookly_app/Core/utils/tap_effect.dart';
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
                top: width * 0.05,
              ),
              child: BookImage(),
            ),
            Text("The Jungle Book ", style: Styles.text30, maxLines: 2),
            SizedBox(height: width * 0.03),
            Text("by Rudyard Kipling", style: Styles.text18gray, maxLines: 2),
            SizedBox(height: width * 0.03),
            const BookRating(),
            SizedBox(height: width * 0.1),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: width * 0.4,
                  height: 55,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(18),
                      bottomLeft: Radius.circular(18),
                    ),
                  ),
                ),
                TapEffect(
                  onClick: () {},
                  child: Container(
                    width: width * 0.4,
                    height: 55,
                    decoration: BoxDecoration(
                      color: Colors.redAccent,
                      borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(18),
                        bottomRight: Radius.circular(18),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            
          ],
        ),
      ),
    );
  }
}
