import 'package:carousel_slider/carousel_slider.dart';

import 'package:deal_easy/models/models.dart';
import 'package:deal_easy/widgets/custom_appbar.dart';
import 'package:deal_easy/widgets/custom_navigationbar.dart';
import 'package:deal_easy/widgets/hero_carousel_card.dart';

import 'package:deal_easy/widgets/product_carousel.dart';
import 'package:deal_easy/widgets/selection_title.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const String routeName = '/home';

  static Route route() {
    return MaterialPageRoute(
        settings: const RouteSettings(name: routeName),
        builder: (_) => const HomeScreen());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBarWidget(title: "Deal Easy"),
      bottomNavigationBar: const CustomNavigationBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              child: CarouselSlider(
                options: CarouselOptions(
                  aspectRatio: 2.0,
                  viewportFraction: 0.9,
                  enlargeCenterPage: true,
                  enlargeStrategy: CenterPageEnlargeStrategy.height,
                  enableInfiniteScroll: false,
                  initialPage: 2,
                  autoPlay: true,
                ),
                items: Category.categories
                    .map((category) => HeroCarouselCard(category: category))
                    .toList(),
              ),
            ),
            const SelectionTitle(
              title: "RECOMMENDED",
            ),
            ProductCarousel(
              products: Product.products
                  .where((product) => product.isRecommended)
                  .toList(),
            ),
            const SelectionTitle(
              title: "MOST POPULAR",
            ),
            ProductCarousel(
              products: Product.products
                  .where((product) => product.isPopular)
                  .toList(),
            ),
            const SelectionTitle(
              title: "TOP RATED",
            ),
            ProductCarousel(
              products: Product.products
                  .where((product) => product.isTopRated)
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }
}
