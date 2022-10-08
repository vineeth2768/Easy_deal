import 'dart:developer';

import 'package:deal_easy/config/app_router/routes.dart';

import 'package:deal_easy/screens/screens.dart';
import 'package:deal_easy/screens/user/screen_user.dart';
import 'package:deal_easy/screens/wishlist/screen_wishlist.dart';

import 'package:flutter/material.dart';

class RouteGenerator {
  static Route<dynamic> generateRoutes(RouteSettings settings) {
    // final args = settings.arguments;
    log("routeName ==${settings.name}");
    //log("args ==${settings.arguments}");

    switch (settings.name) {
      case routeRoot:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case routeCart:
        return MaterialPageRoute(builder: (_) => const CartScreen());
      case routeUser:
        return MaterialPageRoute(builder: (_) => const UserScreen());
      case routeWishList:
        return MaterialPageRoute(builder: (_) => const WishListScreen());

      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(
        builder: (_) => const Scaffold(
              body: Center(
                child: Text("Error!"),
              ),
            ));
  }
}
