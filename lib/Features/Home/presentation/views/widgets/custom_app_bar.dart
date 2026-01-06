import 'package:bookly_app/Core/utils/app_assets.dart';
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
          searchIcon(searchWidth),
        ],
      ),
    );
  }

  Widget searchIcon(double searchWidth) {
    return InkResponse(
      onTap: () => {},
      child: Container(
        alignment: Alignment.bottomRight,
        height: 40,
        width: searchWidth,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 42, 42, 66),
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: const Color.fromARGB(255, 72, 72, 92)),
        ),
        child: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Icon(Icons.search, size: 28),
        ),
      ),
    );
  }
}
