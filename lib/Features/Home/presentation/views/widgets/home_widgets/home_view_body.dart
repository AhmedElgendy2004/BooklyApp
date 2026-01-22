import 'package:bookly_app/Core/utils/style.dart';
import 'package:bookly_app/Features/Home/presentation/views/widgets/home_widgets/best_seller_list_view.dart';
import 'package:bookly_app/Features/Home/presentation/views/widgets/home_widgets/custom_app_bar.dart';
import 'package:bookly_app/Features/Home/presentation/views/widgets/home_widgets/featured_slider_books.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: width * 0.05),
        child: Column(
          children: [
            const CustomAppBar(),
            Expanded(
              child: CustomScrollView(
                slivers: [
                  SliverToBoxAdapter(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const FeaturedSlider(),
                        const SizedBox(height: 30),
                        Text("Best Sellers ", style: Styles.text18gray),
                        const SizedBox(height: 20),
                      ],
                    ),
                  ),
                  const BestSellerSliverList(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
