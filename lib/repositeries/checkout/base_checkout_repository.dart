import 'package:deal_easy/models/checkout_model.dart';

abstract class BaseCheckoutRepositery {
  Future<void> addCheckout(Checkout checkout);
}
