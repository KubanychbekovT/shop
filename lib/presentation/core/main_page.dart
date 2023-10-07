import 'package:flutter/material.dart';
import 'package:sajda_shop/presentation/basket/basket_page.dart';
import 'package:sajda_shop/presentation/chat/chat_page.dart';
import 'package:sajda_shop/presentation/home/home_page.dart';
import 'package:sajda_shop/presentation/more/more_page.dart';
import 'package:sajda_shop/presentation/qr/qr_code_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  final List<Widget> pages = [
    HomePage(),
    ChatPage(),
    QrPage(),
    CartPage(),
    MorePage(),
  ];


  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_selectedIndex],
      bottomNavigationBar: Container(
        //height: 70,
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(color: Colors.black, width: 0.5), // Верхняя граница
          ),
        ),
        child: BottomNavigationBar(
          showUnselectedLabels: false,
          showSelectedLabels: false,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.black.withOpacity(.60),
          selectedFontSize: 14,
          unselectedFontSize: 14,
          onTap: _onItemTapped,
          currentIndex: _selectedIndex,
          items: [
            BottomNavigationBarItem(
              label: 'Weather',
              icon: Icon(Icons.home_outlined),
            ),
            BottomNavigationBarItem(
              label: 'Chat',
              icon: Icon(Icons.chat_bubble_outline_outlined),
            ),
            BottomNavigationBarItem(
              label: 'Scan',
              icon: Icon(Icons.document_scanner_outlined),
            ),
            BottomNavigationBarItem(
              label: 'Basket',
              icon: Icon(Icons.shopping_bag_outlined),
            ),
            BottomNavigationBarItem(
              label: 'More',
              icon: Icon(Icons.more_horiz_outlined),
            ),
          ],
        ),
      ),
    );
  }
}
