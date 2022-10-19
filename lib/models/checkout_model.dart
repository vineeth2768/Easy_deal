import 'package:deal_easy/models/product_model.dart';
import 'package:equatable/equatable.dart';

class Checkout extends Equatable {
  final String? fullName;
  final String? email;
  final String? adderss;
  final String? city;
  final String? country;
  final String? zipCode;
  final List<Product>? product;
  final String? subtotal;
  final String? deliveryFee;
  final String? total;

  const Checkout({
    required this.fullName,
    required this.email,
    required this.adderss,
    required this.city,
    required this.country,
    required this.zipCode,
    required this.product,
    required this.subtotal,
    required this.deliveryFee,
    required this.total,
  });

  @override
  List<Object?> get props => [
        fullName,
        email,
        adderss,
        city,
        country,
        zipCode,
        product,
        subtotal,
        deliveryFee,
        total,
      ];

  Map<String, dynamic> toDocument() {
    Map customerAdderss = Map();
    customerAdderss['adderss'] = adderss;
    customerAdderss['city'] = city;
    customerAdderss['country'] = country;
    customerAdderss['zipCode'] = zipCode;

    return {
      'customerAdderss': customerAdderss,
      'customerName': fullName!,
      'customerEmail': email!,
      'products': product!.map((product) => product.name).toList(),
      'subtotal': subtotal!,
      'deliveryFee': deliveryFee!,
      'total': total!,
    };
  }
}
