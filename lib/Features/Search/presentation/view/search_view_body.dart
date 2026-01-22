import 'package:bookly_app/Core/utils/style.dart';
import 'package:bookly_app/Core/utils/widgets/custom_action_icons.dart';
import 'package:bookly_app/Core/utils/widgets/custom_search_field.dart';
import 'package:bookly_app/Features/Home/presentation/views/widgets/home_widgets/book_list_view_item.dart';
import 'package:bookly_app/Features/Search/presentation/view/widgets/custom_search_app_bar.dart';
import 'package:bookly_app/Features/Search/presentation/view/widgets/custom_search_text_field.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomSearchAppBar(),
            SizedBox(height: height * 0.03),
            const CustomSearchTextField(),
            const SizedBox(height: 20),
            const Text("Search Result", style: Styles.text18gray),
            const SizedBox(height: 5),
            const Expanded(child: SearchResultListView()),
          ],
        ),
      ),
    );
  }
}

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      keyboardDismissBehavior:
          ScrollViewKeyboardDismissBehavior.onDrag, // close keyboard on scroll
          itemCount: 10,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: BookListViewItem(),
        );
      },
    );
  }
}
