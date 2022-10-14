import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:deal_easy/models/product_model.dart';

import 'package:deal_easy/repositeries/product/base_product_repositery.dart';

class ProductRepository extends BaseProductRepository {
  final FirebaseFirestore _firebaseFirestore;

  ProductRepository({FirebaseFirestore? firebaseFirestore})
      : _firebaseFirestore = firebaseFirestore ?? FirebaseFirestore.instance;
  @override
  Stream<List<Product>> getAllProducts() {
    return _firebaseFirestore
        .collection("products")
        .snapshots()
        .map((snapshot) {
      return snapshot.docs.map((doc) => Product.fromSnapshot(doc)).toList();
    });
  }
}
