import 'package:bookly_app/Features/Home/presentation/views/widgets/book_details_widgets/book_details_bottom_section.dart';
import 'package:bookly_app/Features/Home/presentation/views/widgets/book_details_widgets/book_details_info_section.dart';
import 'package:bookly_app/Features/Home/presentation/views/widgets/book_details_widgets/custom_book_details_app_bar_section.dart';
import 'package:bookly_app/Features/Home/presentation/views/widgets/book_details_widgets/similar_books_list_view_section.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CustomBookDetailsAppBarSection(),
            Expanded(flex: 1, child: SizedBox(height: height * 0.05)),
            BookDetailsInfoSection(height: height, width: width),
            Expanded(flex: 2, child: SizedBox(height: height * 0.05)),
            const BooKDetailsBottomSection(),
            Expanded(flex: 3, child: SizedBox(height: height * 0.055)),
            const SimilarBooksListViewSection(),
          ],
        ),
      ),
    );
  }
}
