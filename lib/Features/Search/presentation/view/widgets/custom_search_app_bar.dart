import 'package:bookly_app/Core/utils/widgets/custom_action_icons.dart';
import 'package:flutter/material.dart';

class CustomSearchAppBar extends StatelessWidget {
  const CustomSearchAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [const CloseIconButton(), const CartIconButton()],
      ),
    );
  }
}