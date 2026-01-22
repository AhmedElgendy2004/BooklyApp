import 'package:bookly_app/Core/utils/widgets/custom_search_field.dart';
import 'package:flutter/material.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomSearchField(
      height: 55,
      width: double.infinity,
      autofocus: true,
      onChanged: (value) {
        // كود البحث الفعلي
      },
    );
  }
}


