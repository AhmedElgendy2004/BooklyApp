import 'package:bookly_app/Core/Theme/constants.dart';
import 'package:bookly_app/Core/utils/tap_effect.dart';
import 'package:bookly_app/Features/Home/presentation/views/widgets/book_details_widgets/custom_book_details_app_bar_section.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: width * 0.1),
      child: Column(
        children: [
          SizedBox(height: height * 0.005),
          const CustomBookDetailsAppBarSection(),
          SizedBox(height: height * 0.02),
          CustomSearchTextField(width: width),
        ],
      ),
    );
  }
}

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({super.key, required this.width});

  final double width;
  @override
  Widget build(BuildContext context) {
    return TapEffect(
      onClick: () {},
      child: Container(
        alignment: Alignment.bottomRight,
        height: 40,
        width: width,
        decoration: BoxDecoration(
          color: KPrimaryColor,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: KGrayColor, width: 1),
        ),
        child: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Icon(Icons.search, size: 28),
        ),
      ),
    );
  }
}
