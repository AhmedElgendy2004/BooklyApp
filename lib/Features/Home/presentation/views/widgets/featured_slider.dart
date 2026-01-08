import 'package:bookly_app/Features/Home/presentation/views/widgets/featured_list_view.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeSlider extends StatefulWidget {
  const HomeSlider({super.key});

  @override
  State<HomeSlider> createState() => _HomeSliderState();
}

class _HomeSliderState extends State<HomeSlider> {
  final myItems = const [FeaturedBooksListView()];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Stack(
        children: [
          CarouselSlider(
            options: CarouselOptions(
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 4),
              autoPlayAnimationDuration: Duration(milliseconds: 1600),
              pauseAutoPlayOnTouch: true,
              pauseAutoPlayOnManualNavigate: true,
              pauseAutoPlayInFiniteScroll: false,
              viewportFraction: 1, // عرض العنصر فقط واخفاء الباقي
              enlargeCenterPage: true, // تكبير العنصر المركزي
              height: 200,
              onPageChanged: (index, reason) {
                setState(() {
                  currentIndex = index;
                });
              },
            ),
            items: myItems,
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: AnimatedSmoothIndicator(
                activeIndex: currentIndex,
                count: myItems.length,
                effect: const WormEffect(
                  dotHeight: 12,
                  dotWidth: 12,
                  spacing: 5,
                  dotColor: Colors.white,
                  activeDotColor: Color(0xff004182),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
