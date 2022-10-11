import 'package:deal_easy/blocs/wishlist/wishlist_bloc.dart';
import 'package:deal_easy/config/routes/app_router.dart';

import 'package:deal_easy/config/theme/theme.dart';
import 'package:deal_easy/screens/home/screen_home.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => WishlistBloc()..add(StartWishlist())),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Deal Easy',
        theme: theme(),
        onGenerateRoute: AppRouter.onGenerateRoute,
        initialRoute: HomeScreen.routeName,
      ),
    );
  }
}
