import 'dart:developer';

import 'package:deal_easy/models/category_model.dart';
import 'package:deal_easy/models/product_model.dart';
import 'package:deal_easy/widgets/custom_appbar.dart';
import 'package:deal_easy/widgets/custom_navigationbar.dart';
import 'package:deal_easy/widgets/product_card.dart';
import 'package:flutter/material.dart';

class CategoryScreen extends StatelessWidget {
  static const String routeName = '/categories';

  static Route route({required Category category}) {
    return MaterialPageRoute(
        settings: const RouteSettings(name: routeName),
        builder: (_) => CategoryScreen(category: category));
  }

  final Category category;
  const CategoryScreen({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    final List<Product> categoryProduct = Product.products
        .where((product) => product.category == category.name)
        .toList();

    return Scaffold(
        appBar: CustomAppBarWidget(title: category.name),
        bottomNavigationBar: const CustomNavigationBar(),
        body: GridView.builder(
            padding:
                const EdgeInsets.symmetric(vertical: 16.0, horizontal: 8.0),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 1.15,
            ),
            itemCount: categoryProduct.length,
            itemBuilder: (BuildContext context, int index) {
              return Center(
                child: ProductCard(
                  product: categoryProduct[index],
                  widthFactor: 2.5,
                ),
              );
            }));
  }
}
