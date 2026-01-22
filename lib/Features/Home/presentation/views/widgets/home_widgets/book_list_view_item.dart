import 'package:bookly_app/Core/Theme/constants.dart';
import 'package:bookly_app/Core/utils/style.dart';
import 'package:bookly_app/Core/utils/tap_effect.dart';
import 'package:bookly_app/Core/utils/widgets/book_image.dart';
import 'package:bookly_app/Core/utils/widgets/book_raring.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BookListViewItem extends StatelessWidget {
  const BookListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return TapEffect(
      onClick: () {
        context.push('/book_details');
      },
      child: SizedBox(
        height: 150,
        child: Row(
          children: [
            const BookImage(),
            SizedBox(width: MediaQuery.of(context).size.width * 0.08),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "The Jungle Book of Rudyard Kipling",
                    style: Styles.text20.copyWith(
                      fontFamily: KTitleBookFontFamily,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    "by Rudyard Kipling",
                    style: Styles.text14gray,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          const Text("19.99", style: Styles.text20),
                          const Text(" \$", style: Styles.text20),
                        ],
                      ),

                      const BookRating(),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
