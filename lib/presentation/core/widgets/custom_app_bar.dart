import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final String title;

  CustomAppBar({required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Builder(
        builder: (BuildContext context) {
          return IconButton(
            icon: const Icon(
              Icons.person_outline_outlined,
              color: Colors.black,
              size: 32,
            ),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          );
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
        )
      ],
      elevation: 0,
      title: Column(
        children: [
          Center(
            child: Text(
              title, // Используйте параметр title здесь
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
      backgroundColor: Colors.transparent,
    );
  }
}
