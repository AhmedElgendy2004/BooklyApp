import 'package:bookly_app/Core/utils/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.push('/book_details');
      },
      child: SizedBox(
        child: AspectRatio(
          aspectRatio: 2.5 / 4,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              image: const DecorationImage(
                image: AssetImage(AppAssets.testImage),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
