import 'package:deal_easy/config/routes/routes.dart';

import 'package:flutter/material.dart';

class CustomAppBarWidget extends StatelessWidget with PreferredSizeWidget {
  const CustomAppBarWidget({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: Container(
        color: Colors.black,
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: Text(
          title,
          style: Theme.of(context).textTheme.headline2!.copyWith(
                color: Colors.white,
              ),
        ),
      ),
      iconTheme: const IconThemeData(color: Colors.black),
      actions: [
        IconButton(
            onPressed: () {
              Navigator.pushNamed(context, routeWishList);
            },
            icon: const Icon(Icons.favorite))
      ],
      centerTitle: true,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(50.0);
}
