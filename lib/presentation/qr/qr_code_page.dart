import 'package:flutter/material.dart';

class QrPage extends StatelessWidget {
  const QrPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.person_outline_outlined, color: Colors.black, size: 32,),
          onPressed: () {},
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
        backgroundColor: Colors.white,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center, // Выравнивание по центру
        children: [
          Center(
            child: Text(
              'Персональный',
              style: TextStyle(fontSize: 28, color: Colors.black, fontWeight: FontWeight.w600),
            ),
          ),
          SizedBox(height: 10),
          Text('Покажите этот qr-код на кассе', style: TextStyle(fontSize: 12, color: Colors.black),),
          SizedBox(height: 40),
          Container(
            // Ваш QR-код здесь
            alignment: Alignment.center,
            margin: EdgeInsets.only(bottom: 16), // Расстояние до нижнего края
            child: Image.asset('assets/images/qr.png', width: 200, height: 200),
          ),
          SizedBox(height: 24),
          Text('888891', style: TextStyle(fontSize: 25, color: Colors.black, fontWeight: FontWeight.w600),),
          SizedBox(height: 20),
          Text('История', style: TextStyle(fontSize: 14, color: Colors.black, fontWeight: FontWeight.w600),)
        ],
      ),
    );
  }
}
