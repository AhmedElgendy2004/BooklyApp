import 'package:bookly_app/Core/utils/style.dart';
import 'package:bookly_app/Core/utils/tap_effect.dart';
import 'package:bookly_app/Features/Home/presentation/views/widgets/book_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SimilarBooksListViewSection extends StatelessWidget {
  const SimilarBooksListViewSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [
        Text("You Can Also Like ", style: Styles.text14),
        SizedBox(height: 10),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.160,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(right: 10.0, bottom: 10),
                child: TapEffect(
                  onClick: () {
                    context.push('/book_details');
                  },
                  child: BookImage(),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
