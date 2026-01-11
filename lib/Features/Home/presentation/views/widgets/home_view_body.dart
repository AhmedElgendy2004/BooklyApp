import 'package:bookly_app/Core/utils/style.dart';
import 'package:bookly_app/Features/Home/presentation/views/widgets/best_seller_list_view.dart';
import 'package:bookly_app/Features/Home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly_app/Features/Home/presentation/views/widgets/featured_slider.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(left: 24.0, right: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CustomAppBar(),
                  const FeaturedSlider(),
                  const SizedBox(height: 30),
                  Text("Best Sellers ", style: Styles.text18),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
          const SliverToBoxAdapter(child: BestSellerListView()),
        ],
      ),
    );
  }
}
