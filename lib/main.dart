import 'package:deal_easy/config/app_router/app_router.dart';
import 'package:deal_easy/config/app_router/routes.dart';
import 'package:deal_easy/config/theme/theme.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Deal Easy',
      theme: theme(),
      initialRoute: routeRoot,
      onGenerateRoute: RouteGenerator.generateRoutes,
    );
  }
}
