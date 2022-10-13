import 'package:deal_easy/blocs/cart/cart_bloc.dart';
import 'package:deal_easy/models/product_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
    required this.product,
    this.widthFactor = 2.5,
    this.isWishList = false,
  }) : super(key: key);

  final Product product;
  final double? widthFactor;

  final bool isWishList;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (() {
        Navigator.pushNamed(
          context,
          '/product',
          arguments: product,
        );
      }),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(16.0)),
            child: SizedBox(
              width: MediaQuery.of(context).size.width / widthFactor!,
              height: MediaQuery.of(context).size.height / 5,
              child: Image.network(
                product.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            top: 110,
            right: 10,
            left: 10,
            // right: rightPostion,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.black,
              ),
              width: MediaQuery.of(context).size.width / 2.6 - 10,
              height: MediaQuery.of(context).size.height / 15,
              child: Container(
                width: MediaQuery.of(context).size.width / 2.5 - 10,
                height: 70,
                decoration: const BoxDecoration(color: Colors.black),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            product.name,
                            style: Theme.of(context)
                                .textTheme
                                .headline3!
                                .copyWith(color: Colors.white),
                          ),
                          Text(
                            "INR ${product.price}",
                            style: Theme.of(context)
                                .textTheme
                                .headline4!
                                .copyWith(color: Colors.white),
                          )
                        ],
                      ),
                      BlocBuilder<CartBloc, CartState>(
                        builder: (context, state) {
                          if (state is CartLoading) {
                            return Expanded(
                              child: IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.add_circle,
                                    color: Colors.white,
                                  )),
                            );
                          }
                          if (state is CartLoaded) {
                            return Expanded(
                              child: IconButton(
                                  onPressed: () {
                                    context
                                        .read<CartBloc>()
                                        .add(CartProductAdded(product));
                                  },
                                  icon: const Icon(
                                    Icons.add_circle,
                                    color: Colors.white,
                                  )),
                            );
                          } else {
                            return const Text("Something want wrong");
                          }
                        },
                      ),
                      isWishList
                          ? Expanded(
                              child: IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.delete,
                                    color: Colors.white,
                                  )),
                            )
                          : const SizedBox(),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
