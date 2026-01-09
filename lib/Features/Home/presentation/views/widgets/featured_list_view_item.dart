import 'package:bookly_app/Core/Theme/constants.dart';
import 'package:bookly_app/Core/utils/app_assets.dart';
import 'package:bookly_app/Features/Home/presentation/views/book_details_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';

class FeaturedListViewItem extends StatelessWidget {
  const FeaturedListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(
          const BookDetailsView(),
          transition: Transition.rightToLeft,
          duration: KTransitionDuration,
        );
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
