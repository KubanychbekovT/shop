import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sajda_shop/domain/cart/cart_cubit.dart';
import 'order_page.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  String comment = '';
  String address = '';
  String option = '';
  @override
  Widget build(BuildContext context) {
    final cartCubit = context.read<CartCubit>();
    final cartState = context.watch<CartCubit>().state;
    final cartItems = cartState.items;
    final deliveryOption = context.watch<CartCubit>().deliveryOption;
    String selectedOption = 'Доставка';

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
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    cartCubit.setDeliveryOption(0);
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 8, horizontal: 40), // Увеличьте горизонтальное поле
                    decoration: BoxDecoration(
                      color: selectedOption == "Доставка" ? Colors.black : Colors.transparent,
                      borderRadius: BorderRadius.circular(20.0), // Округлите углы
                      border: Border.all(
                        color: Colors.black,
                        width: 2.0,
                      ),
                    ),
                    child: Text(
                      "Доставка",
                      style: TextStyle(
                        color: selectedOption == "Доставка" ? Colors.white : Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 16),
                InkWell(
                  onTap: () {
                    cartCubit.setDeliveryOption(1);
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 8, horizontal: 40), // Увеличьте горизонтальное поле
                    decoration: BoxDecoration(
                      color: selectedOption == "Самовызов" ? Colors.black : Colors.transparent,
                      borderRadius: BorderRadius.circular(20.0), // Округлите углы
                      border: Border.all(
                        color: Colors.black,
                        width: 2.0,
                      ),
                    ),
                    child: Text(
                      "Самовызов",
                      style: TextStyle(
                        color: selectedOption == "Самовызов" ? Colors.white : Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Доставка', style: TextStyle(fontSize: 16),),
                SizedBox(height: 10),

                TextField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(24)),
                    ),
                  ),
                  onChanged: (value) {
                    option = value;
                  },
                ),
                SizedBox(height: 20),
                TextField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(24))
                    ),
                    hintText: 'Адрес',
                  ),
                  onChanged: (value) {
                    address = value;
                  },
                ),
                SizedBox(height: 20),
                TextField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(24))
                    ),
                    hintText: 'Комментарий',
                  ),
                  onChanged: (value) {
                    comment = value;
                  },
                ),

              ],
            ),
          ),


          Expanded(
            child: ListView.builder(
              itemCount: cartItems.length,
              itemBuilder: (context, index) {
                final cartItem = cartItems[index];
                return ListTile(
                  title: Text(cartItem["name"] ?? ""),
                  subtitle: Text('${cartItem["price"]} KGS'),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        icon: Icon(Icons.remove),
                        onPressed: () {
                          cartCubit.decrementItem(cartItem);
                        },
                      ),
                      Text('${cartItem["quantity"] ?? 1}'),
                      IconButton(
                        icon: Icon(Icons.add),
                        onPressed: () {
                          cartCubit.incrementItem(cartItem);
                        },
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => OrderPage(),
                ),
              );
            },
            child: Text('Подтвердите заказ'),
          ),
        ],
      ),
    );
  }
}
