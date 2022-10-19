part of 'checkout_bloc.dart';

abstract class CheckoutEvent extends Equatable {
  const CheckoutEvent();

  @override
  List<Object?> get props => [];
}

class UpdateCheckout extends CheckoutEvent {
  final String? fullName;
  final String? email;
  final String? adderss;
  final String? city;
  final String? country;
  final String? zipCode;
  final Cart? cart;

  const UpdateCheckout({
    this.fullName,
    this.email,
    this.adderss,
    this.city,
    this.country,
    this.zipCode,
    this.cart,
  });

  @override
  List<Object?> get props => [
        fullName,
        email,
        adderss,
        city,
        country,
        zipCode,
        cart,
      ];
}

class ConformCheckout extends CheckoutEvent {
  final Checkout checkout;
  const ConformCheckout({required this.checkout});

  @override
  List<Object?> get props => [checkout];
}
