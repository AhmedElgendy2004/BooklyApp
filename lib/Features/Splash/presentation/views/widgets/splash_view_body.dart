import 'package:bookly_app/Core/utils/app_assets.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Text("Welcome in", textAlign: TextAlign.center),
        const SizedBox(height: 20),
        Image.asset(AppAssets.logo),
        const SizedBox(height: 25),
        const Text("Open a Book, Open Your Mind", textAlign: TextAlign.center),
      ],
    );
  }
}
