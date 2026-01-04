import 'package:bookly_app/Core/utils/app_assets.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

// SingleTickerProviderStateMixin =>> handel rate of animation values

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController
  animationController; // >> AnimationController gives value from 0 to 1
  late Animation<Offset> sliderAnimation; //

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 1500),
    );

    sliderAnimation = Tween<Offset>(
      begin: const Offset(0, 17),
      end: Offset.zero,
    ).animate(animationController);

    animationController.forward(); // >> to start the animation
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Text(
          "Welcome in",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),

        const SizedBox(height: 15),

        SlidingComponent(sliderAnimation: sliderAnimation),
      ],
    );
  }
}

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
