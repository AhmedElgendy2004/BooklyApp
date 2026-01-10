import 'package:bookly_app/Features/Home/presentation/views/widgets/featured_list_view_item.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeSlider extends StatefulWidget {
  const HomeSlider({super.key});

  @override
  State<HomeSlider> createState() => _HomeSliderState();
}

class _HomeSliderState extends State<HomeSlider> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.sizeOf(context).width;

    return SizedBox(
      height: 220,
      child: Stack(
        children: [
          CarouselSlider.builder(
            itemCount: 10,
            itemBuilder: (context, index, realIndex) {
              return FeaturedListViewItem();
            },
            options: CarouselOptions(
              height: 220,
              autoPlay: true,
              autoPlayInterval: const Duration(seconds: 4),
              autoPlayAnimationDuration:
                  const Duration(milliseconds: 1200),

              /// 👇 عرض أكتر من عنصر
              viewportFraction: screenWidth < 400 ? 0.75 : 0.6,

              /// 👇 تكبير العنصر اللي في النص
              enlargeCenterPage: true,
              enlargeStrategy: CenterPageEnlargeStrategy.scale,
              enlargeFactor: 0.25,

              onPageChanged: (index, reason) {
                setState(() => currentIndex = index);
              },
            ),
          ),

          /// Indicator
          Positioned(
            bottom: 8,
            left: 0,
            right: 0,
            child: AnimatedSmoothIndicator(
              activeIndex: currentIndex,
              count: 10,
              effect: const WormEffect(
                dotHeight: 10,
                dotWidth: 10,
                spacing: 6,
                dotColor: Colors.white,
                activeDotColor: Color(0xff004182),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
