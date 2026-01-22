import 'package:bookly_app/Core/Theme/constants.dart';
import 'package:bookly_app/Core/utils/tap_effect.dart';
import 'package:bookly_app/Core/utils/widgets/book_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class FeaturedSliderBookItem extends StatelessWidget {
  final Function(int) onPageChanged;

  const FeaturedSliderBookItem({super.key, required this.onPageChanged});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: 10,
      itemBuilder: (context, index, realIndex) {
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 8),
          child: TapEffect(
            onClick: () {
              context.push('/book_details');
            },
            child: BookImage(),
          ),
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