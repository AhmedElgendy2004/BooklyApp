import 'package:bookly_app/Core/utils/app_assets.dart';
import 'package:bookly_app/Core/utils/style.dart';
import 'package:bookly_app/Features/Home/presentation/views/widgets/book_details_wedges/custom_book_details_app_bar.dart';
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
              child: AspectRatio(
                aspectRatio: 2.5 / 4,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    image: const DecorationImage(
                      image: AssetImage(AppAssets.testImage),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
            ),
            Text("The Jungle Book ", style: Styles.text30, maxLines: 2),
            SizedBox(height: width * 0.02),
            Text("by Rudyard Kipling", style: Styles.text18gray, maxLines: 2),
            SizedBox(height: width * 0.02),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.star, color: Colors.yellow[400], size: 20),
                const SizedBox(width: 4),
                Text("4.8", style: Styles.text16),
                const SizedBox(width: 5),
                Text("(2347)", style: Styles.text14gray),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
