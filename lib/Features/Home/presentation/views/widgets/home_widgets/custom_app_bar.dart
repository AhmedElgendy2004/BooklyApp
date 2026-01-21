import 'package:bookly_app/Core/Theme/constants.dart';
import 'package:bookly_app/Core/utils/app_assets.dart';
import 'package:bookly_app/Core/utils/tap_effect.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final double searchWidth = (MediaQuery.sizeOf(context).width - 100) * 0.8;

    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(AppAssets.logo, height: 20),
          searchIcon(searchWidth, context),
        ],
      ),
    );
  }

  Widget searchIcon(double searchWidth, BuildContext context) {
    return TapEffect(
      onClick: () {
        context.push('/search');
      },
      child: Container(
        alignment: Alignment.bottomRight,
        height: 40,
        width: searchWidth,
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
