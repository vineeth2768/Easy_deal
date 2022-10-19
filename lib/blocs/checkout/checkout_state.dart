part of 'checkout_bloc.dart';

abstract class CheckoutState extends Equatable {
  const CheckoutState();

  @override
  List<Object?> get props => [];
}

class CheckoutLoading extends CheckoutState {}

class CheckoutLoaded extends CheckoutState {
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
  final Checkout checkout;

  CheckoutLoaded({
    this.fullName,
    this.email,
    this.adderss,
    this.city,
    this.country,
    this.zipCode,
    this.product,
    this.subtotal,
    this.deliveryFee,
    this.total,
  }) : checkout = Checkout(
          fullName: fullName,
          email: email,
          adderss: adderss,
          city: city,
          country: country,
          zipCode: zipCode,
          product: product,
          subtotal: subtotal,
          deliveryFee: deliveryFee,
          total: total,
        );

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
}
