import 'package:bookly_app/Core/utils/widgets/custom_action_icons.dart';
import 'package:bookly_app/Core/utils/widgets/custom_search_field.dart';
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
          children: [
            CustomSearchAppBar(),
            SizedBox(height: height * 0.04),
            CustomSearchTextField(),
            SizedBox(height: height * 0.04),
          ],
        ),
      ),
    );
  }
}

// ListView.builder(
//   // السطر السحري
//   keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,