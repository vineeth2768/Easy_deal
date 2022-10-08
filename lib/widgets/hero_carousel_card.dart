import 'package:deal_easy/models/category_model.dart';
import 'package:flutter/material.dart';

class HeroCarouselCard extends StatelessWidget {
  const HeroCarouselCard({super.key, required this.category});
  final Category category;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (() {
        Navigator.pushNamed(context, '/categories', arguments: category);
      }),
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 25, horizontal: 5.0),
        child: ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(5.0)),
            child: Stack(
              children: <Widget>[
                Image.network(category.imageUrl,
                    fit: BoxFit.fill, width: 1000.0),
                Positioned(
                  bottom: 0.0,
                  left: 0.0,
                  right: 0.0,
                  child: Container(
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color.fromARGB(200, 0, 0, 0),
                          Color.fromARGB(0, 0, 0, 0)
                        ],
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                      ),
                    ),
                    padding: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 20.0),
                    child: Text(category.name,
                        style: Theme.of(context)
                            .textTheme
                            .headline3!
                            .copyWith(color: Colors.white)),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
