import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sajda_shop/domain/cart/cart_item.dart';
import 'package:sajda_shop/domain/cart/promo_code/promo_code.dart';
import 'package:sajda_shop/domain/core/specific_exception.dart';
import 'package:sajda_shop/domain/product/product.dart';
import 'package:sajda_shop/presentation/core/utils/error_dialog.dart';
import 'package:sajda_shop/presentation/home/promo_page.dart';
import 'package:sajda_shop/repository/cart/cart_repository.dart';

part 'cart_manager_cubit.freezed.dart';

part 'cart_manager_state.dart';

class CartManagerCubit extends Cubit<CartManagerState> {
  CartManagerCubit() : super(CartManagerState.initial());
  final cartRepository = CartRepository();


  void initializeCart() {
    emit(state.copyWith(cartItemList: cartRepository.getCartItemList()));
  }
  int get sum=>state.cartItemList.fold(0, (previousValue, cartItem) => previousValue+(cartItem.quantity*cartItem.product.price));
  Future<void> addProduct(Product product) async {
    try {
      final cartItemList = state.cartItemList;
      final cartItemIndex = cartItemList
          .indexWhere((cartItem) => cartItem.product.id == product.id);
      late final List<CartItem> updatedCartItemList;
      if (cartItemIndex == -1) {
        updatedCartItemList = (cartItemList.toList())
          ..add(CartItem(product: product, quantity: 1));
      } else {
        final cartItem = cartItemList[cartItemIndex];
        updatedCartItemList = (cartItemList.toList())
          ..[cartItemIndex] =
              cartItem.copyWith(quantity: cartItem.quantity + 1);
      }
      await cartRepository.saveCartItemList(updatedCartItemList);
      emit(state.copyWith(cartItemList: updatedCartItemList));
    } catch (_) {
      rethrow;
    }
  }

  Future<void> subtractProduct(Product product) async {
    try {
      final cartItemList = state.cartItemList;
      final cartItemIndex = cartItemList
          .indexWhere((cartItem) => cartItem.product.id == product.id);
      final cartItem=cartItemList[cartItemIndex];
      late final List<CartItem> updatedCartItemList;
      if (cartItem.quantity==1) {
        updatedCartItemList = (cartItemList.toList())..removeAt(cartItemIndex);
      } else {
        updatedCartItemList = (cartItemList.toList())
          ..[cartItemIndex] =
          cartItem.copyWith(quantity: cartItem.quantity - 1);
      }
      await cartRepository.saveCartItemList(updatedCartItemList);
      emit(state.copyWith(cartItemList: updatedCartItemList));
    } catch (_) {
      rethrow;
    }
  }
  Future<void> searchPromoCode(String promoCodeQuery)async{
    try {
      final promoCode = await cartRepository.checkForPromoCode(promoCodeQuery, sum);
      if(DateTime.parse(promoCode.endDate).isBefore(DateTime.now())){
        AppDialog.showError("Промокод просрочен");
        return;
      }else if(promoCode.currentNumberOfUses>=promoCode.maxNumberOfUses){
        AppDialog.showError("Кол-во использования этого промокода достиг лимита");
        return;
      }
      emit(state.copyWith(promoCode:promoCode));
    } catch (e) {
      if(e is SpecificException){
        AppDialog.showError(e.message);
      }else{
        AppDialog.showError("Промокод не найден");
      }
    }
  }
}
