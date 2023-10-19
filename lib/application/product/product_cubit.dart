import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sajda_shop/domain/user/product.dart';
import 'package:sajda_shop/repository/product/product_repository.dart';

abstract class ProductState {}
class ProductInitial extends ProductState {}
class ProductLoading extends ProductState {}
class ProductLoaded extends ProductState {
  final List<Product> productList;

  ProductLoaded(this.productList);
}

class ProductError extends ProductState {
  final String error;

  ProductError(this.error);
}

class ProductCubit extends Cubit<ProductState> {
  final ProductRepository productRepository;

  ProductCubit(this.productRepository) : super(ProductInitial());

  void loadProducts() {
    emit(ProductLoading());

    productRepository.getProductList().then((productList) {
      emit(ProductLoaded(productList));
    }).catchError((error) {
      emit(ProductError('Failed to load products: $error'));
    });
  }
}
