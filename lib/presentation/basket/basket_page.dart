import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sajda_shop/domain/cart/cart_cubit.dart';
import 'order_page.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cartCubit = context.read<CartCubit>();
    final cartState = context.watch<CartCubit>().state;
    final cartItems = cartState.items;

    return Scaffold(
      appBar: AppBar(
      elevation: 0,
      leading: IconButton(
        icon: Icon(
          Icons.person,
          color: Colors.black,
          size: 32,
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      actions: [
        IconButton(
          splashRadius: 22,
          onPressed: () {},
          icon: const Icon(
            Icons.notifications_none_outlined,
            color: Colors.black,
            size: 32,
          ),
        ),
      ],
      title: Center(
          child: Text(
            'Корзина',
            style: TextStyle(color: Colors.black),
          )),
      backgroundColor: Colors.white,
    ),
      body: ListView.builder(
        itemCount: cartItems.length,
        itemBuilder: (context, index) {
          final cartItem = cartItems[index];
          return ListTile(
            title: Text(cartItem["name"] ?? ""),
            subtitle: Text('${cartItem["price"]} KGS'),
            trailing: IconButton(
              icon: Icon(Icons.remove_shopping_cart),
              onPressed: () {
                cartCubit.removeFromCart(cartItem);
              },
            ),
          );
        },
      ),
      floatingActionButton: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => OrderPage(),
            ),
          );
        },
        child: Text('Оформить заказ'),
      ),
    );
  }
}
