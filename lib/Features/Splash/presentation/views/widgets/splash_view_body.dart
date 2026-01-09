import 'package:bookly_app/Core/Theme/constants.dart';
import 'package:bookly_app/Features/Home/presentation/views/home_view.dart';
import 'package:bookly_app/Features/Splash/presentation/views/widgets/sliding_component.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';

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
    initSlidingAnimation(); // >> start the animation
    navigateToHomeView();
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

  //------------------------------------------------------------------
  void initSlidingAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1500),
    );

    sliderAnimation = Tween<Offset>(
      begin: const Offset(0, 17),
      end: Offset.zero,
    ).animate(animationController);

    animationController.forward(); // >> to start the animation
  }

  //------------------------------------------------------------------
  Future<Null> navigateToHomeView() {
    return Future.delayed(const Duration(seconds: 3), () {
      Get.offAll(
        const HomeView(),
        transition: Transition.rightToLeftWithFade,
        duration: KTransitionDurationSplash,
      );
    });
  }
}
