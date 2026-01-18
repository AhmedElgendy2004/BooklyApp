import 'package:bookly_app/Core/utils/tap_effect.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomBookDetailsAppBar extends StatelessWidget {
  const CustomBookDetailsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TapEffect(
            onClick: () {
              context.pop();
            },
            child: const Icon(Icons.close, size: 32),
          ),
          TapEffect(
            onClick: () {},
            child: const Icon(Icons.shopping_cart_outlined, size: 32),
          ),
        ],
      ),
    );
  }
}
