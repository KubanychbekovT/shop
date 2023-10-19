import 'package:flutter_bloc/flutter_bloc.dart';

class CartCubit extends Cubit<CartState> {
  int deliveryOption = 0; // 0 - Доставка, 1 - Самовывоз

  CartCubit() : super(CartState([], 0.0));

  void addToCart(Map<String, dynamic> product) {
    final updatedItems = [...state.items, product];
    emit(CartState(updatedItems, state.totalPrice + (product["price"] as double? ?? 0)));
  }

  void removeFromCart(Map<String, dynamic> product) {
    final updatedItems = [...state.items];
    updatedItems.remove(product);
    emit(CartState(updatedItems, state.totalPrice - (product["price"] as double? ?? 0)));
  }

  void setDeliveryOption(int option) {
    deliveryOption = option;
    emit(state);
  }

  void incrementItem(Map<String, dynamic> product) {
    final updatedItems = [...state.items];
    final index = updatedItems.indexOf(product);
    if (index != -1) {
      final updatedProduct = {...product};
      updatedProduct["quantity"] = (updatedProduct["quantity"] ?? 0) + 1;
      updatedItems[index] = updatedProduct;
      emit(CartState(updatedItems, state.totalPrice + (updatedProduct["price"] as double? ?? 0)));
    }
  }

  void decrementItem(Map<String, dynamic> product) {
    final updatedItems = [...state.items];
    final index = updatedItems.indexOf(product);
    if (index != -1) {
      final updatedProduct = {...product};
      final quantity = updatedProduct["quantity"] ?? 0;
      if (quantity > 1) {
        updatedProduct["quantity"] = quantity - 1;
        updatedItems[index] = updatedProduct;
        emit(CartState(updatedItems, state.totalPrice - (updatedProduct["price"] as double? ?? 0)));
      } else {
        updatedItems.removeAt(index);
        emit(CartState(updatedItems, state.totalPrice - (updatedProduct["price"] as double? ?? 0)));
      }
    }
  }

  double get totalPrice {
    return state.totalPrice;
  }
}

class CartState {
  final List<Map<String, dynamic>> items;
  final double totalPrice;

  CartState(this.items, this.totalPrice);
}