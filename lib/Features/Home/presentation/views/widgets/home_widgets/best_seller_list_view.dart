import 'package:bookly_app/Features/Home/presentation/views/widgets/home_widgets/book_list_view_item.dart';
import 'package:flutter/material.dart';

class BestSellerSliverList extends StatelessWidget {
  const BestSellerSliverList({super.key});

  @override
  Widget build(BuildContext context) {
    // استخدم SliverList بدلاً من ListView
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: BookListViewItem(),
          );
        },
        childCount: 10, // عدد العناصر
      ),
    );
  }
}
