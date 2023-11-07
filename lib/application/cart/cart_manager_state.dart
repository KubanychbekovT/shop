part of 'cart_manager_cubit.dart';

@freezed
class CartManagerState with _$CartManagerState {
   factory CartManagerState.initial() =>  const CartManagerState([],null);
  const factory CartManagerState(List<CartItem> cartItemList,PromoCode? promoCode) = _CartManagerState;
}
