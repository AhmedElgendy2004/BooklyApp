import 'package:bookly_app/Core/Theme/constants.dart';
import 'package:bookly_app/Features/Home/presentation/views/widgets/custom_book_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class FeaturedSlider extends StatefulWidget {
  const FeaturedSlider({super.key});

  @override
  State<FeaturedSlider> createState() => _FeaturedSliderState();
}

class _FeaturedSliderState extends State<FeaturedSlider> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 230,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          SliderBook(
            onPageChanged: (index) {
              setState(() => currentIndex = index);
            },
          ),

          Positioned(
            bottom: -10,
            right: 90,
            left: 90,

            child: Dots(currentIndex: currentIndex, count: 10),
          ),
        ],
      ),
    );
  }
}

class SliderBook extends StatelessWidget {
  final Function(int) onPageChanged;

  const SliderBook({super.key, required this.onPageChanged});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: 10,
      itemBuilder: (context, index, realIndex) {
        return const Padding(
          padding: EdgeInsets.symmetric(horizontal: 8),
          child: CustomBookImage(),
        );
      },
      options: CarouselOptions(
        height: 200,
        viewportFraction: 0.4,
        enlargeCenterPage: true,
        enlargeStrategy: CenterPageEnlargeStrategy.scale,

        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 4),
        autoPlayAnimationDuration: const Duration(milliseconds: 1000),

        pauseAutoPlayOnTouch: true,

        onPageChanged: (index, reason) {
          onPageChanged(index);
        },
      ),
    );
  }
}

class Dots extends StatelessWidget {
  final int currentIndex;
  final int count;

  const Dots({super.key, required this.currentIndex, required this.count});

  @override
  Widget build(BuildContext context) {
    return AnimatedSmoothIndicator(
      activeIndex: currentIndex,
      count: count,
      effect: const ExpandingDotsEffect(
        dotHeight: 8,
        dotWidth: 8,
        activeDotColor: KWhite,
        dotColor: KPrimaryColor,
      ),
    );
  }
}
