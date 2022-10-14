import 'dart:async';

import 'package:deal_easy/blocs/product/product_event.dart';
import 'package:deal_easy/blocs/product/product_state.dart';

import 'package:deal_easy/repositeries/product/product_repositery.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  final ProductRepository _productRepository;
  StreamSubscription? _productSubscription;

  ProductBloc({required ProductRepository productRepository})
      : _productRepository = productRepository,
        super(ProductLoading());

  @override
  Stream<ProductState> mapEventToState(
    ProductEvent event,
  ) async* {
    if (event is LoadProducts) {
      yield* _mapLoadProductsToState();
    }
    if (event is UpdateProducts) {
      yield* _mapUpdateProductsToState(event);
    }
  }

  Stream<ProductState> _mapLoadProductsToState() async* {
    _productSubscription?.cancel();
    _productSubscription = _productRepository.getAllProducts().listen(
          (products) => add(
            UpdateProducts(products),
          ),
        );
  }

  Stream<ProductState> _mapUpdateProductsToState(UpdateProducts event) async* {
    yield ProductLoaded(
      products: event.products,
    );
  }
}
