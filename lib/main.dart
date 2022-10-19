import 'package:deal_easy/blocs/cart/cart_bloc.dart';
import 'package:deal_easy/blocs/category/category_bloc.dart';
import 'package:deal_easy/blocs/checkout/checkout_bloc.dart';
import 'package:deal_easy/blocs/product/product_bloc.dart';
import 'package:deal_easy/blocs/product/product_event.dart';
import 'package:deal_easy/blocs/wishlist/wishlist_bloc.dart';
import 'package:deal_easy/config/routes/app_router.dart';

import 'package:deal_easy/config/theme/theme.dart';
import 'package:deal_easy/repositeries/category/category_repositery.dart';
import 'package:deal_easy/repositeries/checkout/checkout_repository.dart';
import 'package:deal_easy/repositeries/product/product_repositery.dart';
import 'package:deal_easy/screens/home/screen_home.dart';

import 'package:firebase_core/firebase_core.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  //Bloc.observer = SimpleBlocObserver();

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
        BlocProvider(create: (_) => CartBloc()..add(CartStarted())),
        BlocProvider(
            create: (_) => CategoryBloc(
                  categoryRepository: CategoryRepository(),
                )..add(LoadCategories())),
        BlocProvider(
            create: (_) => ProductBloc(
                  productRepository: ProductRepository(),
                )..add(LoadProducts())),
        BlocProvider(
          create: (context) => CheckoutBloc(
            cartBloc: context.read<CartBloc>(),
            checkoutRepository: CheckoutRepository(),
          ),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Deal Easy',
        theme: theme(),
        onGenerateRoute: AppRouter.onGenerateRoute,
        initialRoute: HomeScreen.routeName,
        //initialRoute: CheckoutScreen.routeName,
      ),
    );
  }
}
