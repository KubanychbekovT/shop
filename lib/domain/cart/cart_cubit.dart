import 'package:flutter_bloc/flutter_bloc.dart';

class CartCubit extends Cubit<CartState> {
  CartCubit() : super(CartState([]));

  void addToCart(Map<String, dynamic> product) {
    final updatedItems = [...state.items, product];
    emit(CartState(updatedItems));
  }

  void removeFromCart(Map<String, dynamic> product) {
    final updatedItems = [...state.items];
    updatedItems.remove(product);
    emit(CartState(updatedItems));
  }

  void incrementItem(Map<String, dynamic> product) {
    final updatedItems = [...state.items];
    final index = updatedItems.indexOf(product);
    if (index != -1) {
      final updatedProduct = {...product};
      updatedProduct["quantity"] = (updatedProduct["quantity"] ?? 0) + 1;
      updatedItems[index] = updatedProduct;
      emit(CartState(updatedItems));
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
      } else {
        updatedItems.removeAt(index);
      }
      emit(CartState(updatedItems));
    }
  }

  double get totalPrice {
    double total = 0;
    for (final item in state.items) {
      final quantity = item["quantity"] ?? 1;
      final price = item["price"] as double ?? 0;
      total += quantity * price;
    }
    return total;
  }
}
class CartState {
  final List<Map<String, dynamic>> items;

  CartState(this.items);
}