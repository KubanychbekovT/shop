import 'package:flutter/material.dart';

class PromoPage extends StatefulWidget {
  const PromoPage({super.key});

  @override
  State<PromoPage> createState() => _PromoPageState();
}

class _PromoPageState extends State<PromoPage> {
  String selectedOption = "Делись и зарабатывай"; // Изначально выбран первый вариант

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.person_outline_outlined, color: Colors.black, size: 32,),
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
        title: Center(child: Text('Промокоды', style: TextStyle(color: Colors.black),)),
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  setState(() {
                    selectedOption = "Делись и зарабатывай";
                  });
                },
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                  decoration: BoxDecoration(
                    color: selectedOption == "Делись и зарабатывай" ? Colors.black : Colors.transparent,
                    border: Border.all(
                      color: Colors.black,
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  child: Text(
                    "Делись и зарабатывай",
                    style: TextStyle(
                      color: selectedOption == "Делись и зарабатывай" ? Colors.white : Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(width: 16),
              InkWell(
                onTap: () {
                  setState(() {
                    selectedOption = "Введите промо-код";
                  });
                },
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                  decoration: BoxDecoration(
                    color: selectedOption == "Введите промо-код" ? Colors.black : Colors.transparent,
                    border: Border.all(
                      color: Colors.black,
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  child: Text(
                    "Введите промо-код",
                    style: TextStyle(
                      color: selectedOption == "Введите промо-код" ? Colors.white : Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Image.asset(
            "assets/images/gift.png", // Замените путь к изображению на свой
            height: 100, // Установите желаемую высоту изображения
            width: 100, // Установите желаемую ширину изображения
          ),
          SizedBox(height: 30),
          Text('Поделитесь следующей ссылкой', style: TextStyle(color: Colors.grey, fontSize: 15),)
        ],
      ),
    );
  }
}