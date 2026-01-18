import 'package:bookly_app/Core/utils/app_assets.dart';
import 'package:bookly_app/Core/utils/tap_effect.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BookImage extends StatelessWidget {
  const BookImage({super.key});

  @override
  Widget build(BuildContext context) {
    return TapEffect(
      onClick: () {
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
