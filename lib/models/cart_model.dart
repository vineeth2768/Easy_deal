// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

import 'product_model.dart';

class Cart extends Equatable {
  Cart();

  double get subtotal =>
      products.fold(0, (total, current) => total + current.price);

  double deliveryFee(subtotal) {
    if (subtotal >= 30.0) {
      return 0.0;
    } else {
      return 10.0;
    }
  }

  double total(subtotal, deliveryFee) {
    return subtotal + deliveryFee(subtotal);
  }

  String freeDelivery(subtotal) {
    if (subtotal >= 30.0) {
      return 'You Have Free Delivery';
    } else {
      double missing = 30.0 - subtotal;
      return 'Add ${missing.toStringAsFixed(2)} For Free Delivery';
    }
  }

  String get subtotalString => subtotal.toStringAsFixed(2);
  String get deliveryFeeString => deliveryFee(subtotal).toStringAsFixed(2);

  String get totalString => total(subtotal, deliveryFee).toStringAsFixed(2);
  String get freedeliveryFeeString => freeDelivery(subtotal);

  List<Product> products = [
    const Product(
      name: "Soft Drink #1",
      category: 'Soft Drinks',
      imageUrl:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRerI-6Zcyi4y7PdU2T5q41rMQW09lfQYyuZw&usqp=CAU",
      price: 10,
      isRecommended: true,
      isPopular: false,
      isTopRated: false,
    ),
    const Product(
      name: "Soft Drink #2",
      category: 'Soft Drinks',
      imageUrl:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTaoLa3slZujq4oSLJJMBrb8eLTG76N08Xp4Q&usqp=CAU",
      price: 20,
      isRecommended: false,
      isPopular: true,
      isTopRated: false,
    ),
    const Product(
      name: "Soft Drink #3",
      category: 'Soft Drinks',
      imageUrl:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRT5Nytxb73-fZNdoMZNZp4aTGgnQA1q6xZJw&usqp=CAU",
      price: 15,
      isRecommended: true,
      isPopular: true,
      isTopRated: true,
    ),
    const Product(
        name: "Biriyani #1",
        category: 'Biriyani',
        imageUrl:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSwDdzrCv-nlon684B0jnKN_g_YMEI_vbL7pA&usqp=CAU",
        price: 25,
        isRecommended: true,
        isPopular: false,
        isTopRated: true),
    const Product(
      name: "Biriyani #2",
      category: 'Biriyani',
      imageUrl:
          "https://res.cloudinary.com/swiggy/image/upload/fl_lossy,f_auto,q_auto/lggwsihmy6kytcrbympi",
      price: 30,
      isRecommended: false,
      isPopular: true,
      isTopRated: false,
    ),
    const Product(
      name: "KFC #1",
      category: 'KFC',
      imageUrl:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQiUZhSexsppoaA6VR5TvQ7r5rfUSeZpcGklg&usqp=CAU",
      price: 50,
      isRecommended: false,
      isPopular: true,
      isTopRated: true,
    ),
  ];

  @override
  List<Object?> get props => [];
}
