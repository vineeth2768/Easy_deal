import 'dart:developer';

import 'package:deal_easy/screens/cart/screen_cart.dart';
import 'package:deal_easy/screens/category/screen_category.dart';
import 'package:deal_easy/screens/home/screen_home.dart';
import 'package:deal_easy/screens/user/screen_user.dart';
import 'package:deal_easy/screens/wishlist/screen_wishlist.dart';

import 'package:flutter/material.dart';

class AppRouter {
  static Route onGenerateRoute(RouteSettings settings) {
    log('route name :${settings.name}');

    switch (settings.name) {
      case '/':
        return HomeScreen.route();
      case HomeScreen.routeName:
        return HomeScreen.route();
      case CartScreen.routeName:
        return CartScreen.route();
      case UserScreen.routeName:
        return UserScreen.route();
      case WishListScreen.routeName:
        return WishListScreen.route();
      case CategoryScreen.routeName:
        return CategoryScreen.route();

      default:
        return _errorRoute();
    }
  }

  static Route _errorRoute() {
    return MaterialPageRoute(
        settings: const RouteSettings(name: '/error'),
        builder: (_) => const Scaffold(
              body: Center(
                child: Text("Error!"),
              ),
            ));
  }
}
