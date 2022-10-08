import 'package:deal_easy/widgets/custom_appbar.dart';
import 'package:deal_easy/widgets/custom_navigationbar.dart';
import 'package:flutter/material.dart';

class WishListScreen extends StatelessWidget {
  const WishListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBarWidget(title: "Wishlist"),
      bottomNavigationBar: CustomNavigationBar(),
    );
  }
}
