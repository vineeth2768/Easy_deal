import 'package:deal_easy/models/product_model.dart';
import 'package:flutter/material.dart';

class ProductCardWidget extends StatelessWidget {
  const ProductCardWidget({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width / 2.5,
          height: MediaQuery.of(context).size.height / 5,
          child: Image.network(
            product.imageUrl,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          top: 60,
          child: Container(
              // width: MediaQuery.of(context).size.width / 2.5 - 10,
              // height: 60,
              // decoration: BoxDecoration(color: Colors.black.withAlpha(50)),
              ),
        ),
        Positioned(
          top: 110,
          left: 5,
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
                  Expanded(
                    child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.add_circle,
                          color: Colors.white,
                        )),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
