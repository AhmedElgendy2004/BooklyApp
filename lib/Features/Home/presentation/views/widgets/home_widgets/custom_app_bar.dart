import 'package:bookly_app/Core/utils/app_assets.dart';
import 'package:bookly_app/Core/utils/app_router.dart';
import 'package:bookly_app/Core/utils/widgets/custom_search_field.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(AppAssets.logo, height: 20),
          searchIcon(context),
        ],
      ),
    );
  }

  Widget searchIcon(BuildContext context) {
    return CustomSearchField(
      width: MediaQuery.of(context).size.width * 0.5,
      readOnly: true,
      onTap: () {
        context.push(AppRouter.kSearchView);
      },
    );
  }
}
