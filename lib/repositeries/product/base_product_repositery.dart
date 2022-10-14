import 'package:deal_easy/models/models.dart';

abstract class BaseProductRepository {
  Stream<List<Product>> getAllProducts();
}
