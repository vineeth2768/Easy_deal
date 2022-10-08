import 'package:equatable/equatable.dart';

class Category extends Equatable {
  final String name;
  final String imageUrl;

  const Category({
    required this.name,
    required this.imageUrl,
  });

  @override
  List<Object?> get props => [name, imageUrl];

  static List<Category> categories = [
    const Category(
      name: "Soft Driks",
      imageUrl:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS4X9BfGI02pQ0h16Tv1mw17y7DHtWQ_OYtWw&usqp=CAU",
    ),
    const Category(
        name: "Biriyani",
        imageUrl:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSSHMMFlhtTcf3vnkiprySYPyzGt_OpBcoroQ&usqp=CAU"),
    const Category(
      name: "KFC",
      imageUrl:
          "https://dil-rjcorp.com/wp-content/uploads/2021/05/banner55.png",
    ),
  ];
}
