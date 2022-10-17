import 'dart:developer';

import 'package:deal_easy/models/models.dart';

import 'package:deal_easy/screens/screens.dart';

import 'package:flutter/material.dart';

class AppRouter {
  static Route onGenerateRoute(RouteSettings settings) {
    log('route name :${settings.name}');
    //log("argument name :${settings.arguments}");

    switch (settings.name) {
      case '/':
        return HomeScreen.route();
      case SplashScreen.routeName:
        return SplashScreen.route();
      case HomeScreen.routeName:
        return HomeScreen.route();

      case CartScreen.routeName:
        return CartScreen.route();
      case UserScreen.routeName:
        return UserScreen.route();
      case WishListScreen.routeName:
        return WishListScreen.route();
      case CategoryScreen.routeName:
        return CategoryScreen.route(category: settings.arguments as Category);
      case ProductScreen.routeName:
        return ProductScreen.route(product: settings.arguments as Product);
      case CheckoutScreen.routeName:
        return CheckoutScreen.route();

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
