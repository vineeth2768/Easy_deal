import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';

class Product extends Equatable {
  final String name;
  final String category;
  final String imageUrl;
  final num price;
  final bool isRecommended;
  final bool isPopular;
  final bool isTopRated;

  const Product({
    required this.name,
    required this.category,
    required this.imageUrl,
    required this.price,
    required this.isRecommended,
    required this.isPopular,
    required this.isTopRated,
  });

  @override
  List<Object?> get props => [
        name,
        category,
        imageUrl,
        price,
        isPopular,
        isRecommended,
      ];

  static Product fromSnapshot(DocumentSnapshot snap) {
    Product product = Product(
      name: snap["name"],
      category: snap["category"],
      imageUrl: snap["imageUrl"],
      price: snap["price"],
      isRecommended: snap["isRecommended"],
      isPopular: snap["isPopular"],
      isTopRated: snap["isTopRated"],
    );
    return product;
  }

  static List<Product> products = [
    const Product(
      name: "Soft Drink #1",
      category: 'Soft Drinks',
      imageUrl:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRerI-6Zcyi4y7PdU2T5q41rMQW09lfQYyuZw&usqp=CAU",
      price: 90,
      isRecommended: true,
      isPopular: false,
      isTopRated: false,
    ),
    const Product(
      name: "Soft Drink #2",
      category: 'Soft Drinks',
      imageUrl:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTaoLa3slZujq4oSLJJMBrb8eLTG76N08Xp4Q&usqp=CAU",
      price: 86,
      isRecommended: false,
      isPopular: true,
      isTopRated: false,
    ),
    const Product(
      name: "Soft Drink #3",
      category: 'Soft Drinks',
      imageUrl:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRT5Nytxb73-fZNdoMZNZp4aTGgnQA1q6xZJw&usqp=CAU",
      price: 96,
      isRecommended: true,
      isPopular: true,
      isTopRated: true,
    ),
    const Product(
        name: "Biriyani #1",
        category: 'Biriyani',
        imageUrl:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSwDdzrCv-nlon684B0jnKN_g_YMEI_vbL7pA&usqp=CAU",
        price: 160,
        isRecommended: true,
        isPopular: false,
        isTopRated: true),
    const Product(
      name: "Biriyani #2",
      category: 'Biriyani',
      imageUrl:
          "https://res.cloudinary.com/swiggy/image/upload/fl_lossy,f_auto,q_auto/lggwsihmy6kytcrbympi",
      price: 120,
      isRecommended: false,
      isPopular: true,
      isTopRated: false,
    ),
    const Product(
      name: "KFC #1",
      category: 'KFC',
      imageUrl:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQiUZhSexsppoaA6VR5TvQ7r5rfUSeZpcGklg&usqp=CAU",
      price: 199,
      isRecommended: false,
      isPopular: true,
      isTopRated: true,
    )
  ];
}
