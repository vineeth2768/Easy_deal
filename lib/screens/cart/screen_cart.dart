import 'package:deal_easy/models/cart_model.dart';
import 'package:deal_easy/models/models.dart';
import 'package:deal_easy/widgets/cart_product_card.dart';
import 'package:deal_easy/widgets/custom_appbar.dart';

import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  static const String routeName = '/cart';

  static Route route() {
    return MaterialPageRoute(
        settings: const RouteSettings(name: routeName),
        builder: (_) => const CartScreen());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBarWidget(title: "Cart"),
      bottomNavigationBar: BottomAppBar(
        color: Colors.black,
        child: SizedBox(
          height: 70,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              MaterialButton(
                onPressed: () {},
                color: Colors.white,
                child: Text(
                  "GO TO CHECKOUT",
                  style: Theme.of(context)
                      .textTheme
                      .headline3!
                      .copyWith(color: Colors.black),
                ),
              )
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      Cart().freedeliveryFeeString,
                      style: Theme.of(context).textTheme.headline5,
                    ),
                    MaterialButton(
                      height: 40,
                      onPressed: () {
                        Navigator.pushNamed(context, '/home');
                      },
                      color: Colors.black,
                      child: Text(
                        "Add more items",
                        style: Theme.of(context)
                            .textTheme
                            .headline5!
                            .copyWith(color: Colors.white),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 10),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 1.8,
                  child: ListView.builder(
                    itemCount: Cart().products.length,
                    itemBuilder: (context, index) {
                      return CartProductCard(product: Cart().products[index]);
                    },
                  ),
                ),
              ],
            ),
            Column(
              children: [
                const Divider(
                  thickness: 2,
                  color: Colors.black,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "SUBTOTAL",
                            style: Theme.of(context)
                                .textTheme
                                .headline3!
                                .copyWith(color: Colors.black),
                          ),
                          Text(
                            "₹${Cart().subtotalString}",
                            style: Theme.of(context)
                                .textTheme
                                .headline3!
                                .copyWith(color: Colors.black),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "DELIVERY FEE",
                            style: Theme.of(context)
                                .textTheme
                                .headline5!
                                .copyWith(color: Colors.black),
                          ),
                          Text(
                            "₹${Cart().deliveryFeeString}",
                            style: Theme.of(context)
                                .textTheme
                                .headline5!
                                .copyWith(color: Colors.black),
                          ),
                        ],
                      ),
                      const SizedBox(height: 30),
                      Container(
                        height: 60,
                        width: MediaQuery.of(context).size.width,
                        color: Colors.black,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "GRAND TOTAL",
                                style: Theme.of(context)
                                    .textTheme
                                    .headline3!
                                    .copyWith(color: Colors.white),
                              ),
                              Text(
                                "₹ ${Cart().totalString}",
                                style: Theme.of(context)
                                    .textTheme
                                    .headline3!
                                    .copyWith(color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
