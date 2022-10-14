import 'package:deal_easy/models/product_model.dart';
import 'package:equatable/equatable.dart';

abstract class ProductEvent extends Equatable {
  const ProductEvent();

  @override
  List<Object> get props => [];
}

class LoadProducts extends ProductEvent {}

class UpdateProducts extends ProductEvent {
  final List<Product> products;

  const UpdateProducts(this.products);

  @override
  List<Object> get props => [products];
}
