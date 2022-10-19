import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:deal_easy/models/models.dart';

import 'package:deal_easy/repositeries/checkout/base_checkout_repository.dart';

class CheckoutRepository extends BaseCheckoutRepositery {
  final FirebaseFirestore _firebaseFirestore;

  CheckoutRepository({
    FirebaseFirestore? firebaseFirestore,
  }) : _firebaseFirestore = firebaseFirestore ?? FirebaseFirestore.instance;
  @override
  Future<void> addCheckout(Checkout checkout) {
    return _firebaseFirestore.collection('checkout').add(checkout.toDocument());
  }
}
