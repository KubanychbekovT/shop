import 'package:flutter/material.dart';
import 'package:sajda_shop/presentation/home/my_details_page.dart';
import 'package:sajda_shop/presentation/home/promo_page.dart';
import 'about_company_page.dart';

class DrawerPage extends StatefulWidget {
  @override
  _DrawerPageState createState() => _DrawerPageState();
}

class _DrawerPageState extends State<DrawerPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        padding: EdgeInsets.symmetric(vertical: 24),
        children: [
          ListTile(
            leading: Icon(Icons.shopping_bag_outlined, color: Colors.black,),
            title: const Text('Заказы', style: TextStyle(color: Colors.black),),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.file_present_outlined, color: Colors.black,),
            title: const Text('Мои детали', style: TextStyle(color: Colors.black)),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => ProfilePage(),));
            },
          ),
          ListTile(
            leading: Icon(Icons.star_border_outlined, color: Colors.black,),
            title: const Text('Мои статусы', style: TextStyle(color: Colors.black)),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.discount_outlined, color: Colors.black,),
            title: const Text('Промокоды', style: TextStyle(color: Colors.black)),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => PromoPage(),));
            },
          ),
          ListTile(
            leading: Icon(Icons.warning_amber_outlined, color: Colors.black,),
            title: const Text('О компании', style: TextStyle(color: Colors.black)),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => AboutPage(),));
            },
          ),
          ListTile(
            leading: Icon(Icons.logout, color: Colors.black,),
            title: const Text('Выйти', style: TextStyle(color: Colors.black)),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
