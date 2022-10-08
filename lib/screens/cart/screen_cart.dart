import 'package:deal_easy/widgets/custom_appbar.dart';
import 'package:deal_easy/widgets/custom_navigationbar.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBarWidget(title: "Cart"),
      bottomNavigationBar: CustomNavigationBar(),
    );
  }
}
