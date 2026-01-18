import 'package:bookly_app/Core/Theme/constants.dart';
import 'package:bookly_app/Features/Home/presentation/views/widgets/book_image.dart';
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
            right: 0,
            left: 0,

            child: Center(child: Dots(currentIndex: currentIndex, count: 10)),
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
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 8),
          child: BookImage(),
        );
      },
      options: CarouselOptions(
        height: 200,
        viewportFraction: 0.4,
        enlargeCenterPage: true,
        enlargeStrategy: CenterPageEnlargeStrategy.scale,

        autoPlay: true,
        autoPlayInterval: KAutoPlayInterval,
        autoPlayAnimationDuration: KAutoPlayAnimationDuration,

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
      effect: const JumpingDotEffect(
        dotHeight: 8,
        dotWidth: 8,
        jumpScale: 1.5,
        verticalOffset: 10,
        activeDotColor: KWhite,
        dotColor: KPrimaryColor,
      ),
      /*JumpingDotEffect(
    dotHeight: 16,
    dotWidth: 16,
    jumpScale: .7,           // How much the dot scales when jumping
    verticalOffset: 20,      // The height of the jump [Vertical Offset]
    activeDotColor: Colors.deepPurple,
    dotColor: Colors.grey,
  ), */
    );
  }
}
