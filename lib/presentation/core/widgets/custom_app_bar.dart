import 'package:flutter/material.dart';
import 'package:sajda_shop/presentation/profile/profile_page.dart';

class CustomAppBar extends StatelessWidget {
  final String title;

  CustomAppBar({required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
            icon: const Icon(
              Icons.person_outline_outlined,
              color: Colors.black,
              size: 32,
            ),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const ProfilePage()));
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
              style: const TextStyle(
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
