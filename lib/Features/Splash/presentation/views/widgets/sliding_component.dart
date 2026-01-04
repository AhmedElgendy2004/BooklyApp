import 'package:bookly_app/Core/utils/app_assets.dart';
import 'package:flutter/material.dart';

class SlidingComponent extends StatelessWidget {
  const SlidingComponent({super.key, required this.sliderAnimation});

  final Animation<Offset> sliderAnimation;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SlideTransition(
          position: sliderAnimation,
          child: Image.asset(AppAssets.logo),
        ),

        const SizedBox(height: 25),

        SlideTransition(
          //  >> Widget to animate the text sliding
          position: sliderAnimation,
          child: const Text(
            "Open a Book, Open Your Mind",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
  
}