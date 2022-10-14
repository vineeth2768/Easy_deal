import 'package:carousel_slider/carousel_slider.dart';
import 'package:deal_easy/blocs/category/category_bloc.dart';
import 'package:deal_easy/blocs/product/product_state.dart';

import 'package:deal_easy/models/models.dart';
import 'package:deal_easy/widgets/custom_appbar.dart';
import 'package:deal_easy/widgets/custom_navigationbar.dart';
import 'package:deal_easy/widgets/hero_carousel_card.dart';

import 'package:deal_easy/widgets/product_carousel.dart';
import 'package:deal_easy/widgets/selection_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../blocs/product/product_bloc.dart';

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
              child: BlocBuilder<CategoryBloc, CategoryState>(
                builder: (context, state) {
                  if (state is CategoryLoading) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                  if (state is CategoryLoaded) {
                    return CarouselSlider(
                      options: CarouselOptions(
                        aspectRatio: 2.0,
                        viewportFraction: 0.9,
                        enlargeCenterPage: true,
                        enlargeStrategy: CenterPageEnlargeStrategy.height,
                        enableInfiniteScroll: false,
                        initialPage: 2,
                        autoPlay: true,
                      ),
                      items: state.categories
                          .map((category) => HeroCarouselCard(
                                category: category,
                              ))
                          .toList(),
                    );
                  } else {
                    return const Text("Something want wrong");
                  }
                },
              ),
            ),
            const SelectionTitle(
              title: "RECOMMENDED",
            ),
            BlocBuilder<ProductBloc, ProductState>(
              builder: (context, state) {
                if (state is ProductLoading) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }
                if (state is ProductLoaded) {
                  return ProductCarousel(
                    products: state.products
                        .where((product) => product.isRecommended)
                        .toList(),
                  );
                } else {
                  return const Text("Something want wrong");
                }
              },
            ),
            const SelectionTitle(
              title: "MOST POPULAR",
            ),
            BlocBuilder<ProductBloc, ProductState>(
              builder: (context, state) {
                if (state is ProductLoading) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }
                if (state is ProductLoaded) {
                  return ProductCarousel(
                    products: state.products
                        .where((product) => product.isPopular)
                        .toList(),
                  );
                } else {
                  return const Text("Something want wrong");
                }
              },
            ),
            const SelectionTitle(
              title: "TOP RATED",
            ),
            BlocBuilder<ProductBloc, ProductState>(
              builder: (context, state) {
                if (state is ProductLoading) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }
                if (state is ProductLoaded) {
                  return ProductCarousel(
                    products: state.products
                        .where((product) => product.isTopRated)
                        .toList(),
                  );
                } else {
                  return const Text("Something want wrong");
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
