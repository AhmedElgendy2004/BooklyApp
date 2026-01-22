import 'package:bookly_app/Core/Theme/constants.dart';
import 'package:flutter/material.dart';

class CustomSearchField extends StatelessWidget {
  final double height;
  final double width;
  final bool readOnly;
  final bool autofocus;
  final void Function()? onTap;
  final void Function(String)? onChanged;

  const CustomSearchField({
    super.key,
    this.height = 40, // القيمة الافتراضية
    required this.width,
    this.readOnly = false,
    this.autofocus = false,
    this.onTap,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'search_bar',
      child: Material(
        color: Colors.transparent,
        child: Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
            color: KPrimaryColor,
            borderRadius: BorderRadius.circular(30),
            border: Border.all(color: KGrayColor, width: 1),
          ),
          child: TextField(
            readOnly: readOnly,
            autofocus: autofocus,
            onTap: onTap,
            onChanged: onChanged,
            cursorHeight: height * 0.45,
            textAlignVertical: TextAlignVertical.center,
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.symmetric(horizontal: 15),
              suffixIcon: Padding(
                padding: EdgeInsets.all(height * 0.15),
                child: Icon(Icons.search, size: height * 0.70),
              ),
              border: InputBorder.none,
              focusedBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
            ),
          ),
        ),
      ),
    );
  }
}
