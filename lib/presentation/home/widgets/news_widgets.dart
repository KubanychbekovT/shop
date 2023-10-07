import 'package:flutter/material.dart';

class NewsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 230,
      child: ListView.builder(
        scrollDirection: Axis.horizontal, // Устанавливаем горизонтальную прокрутку
        itemCount: 2, // Указываем количество карточек
        itemBuilder: (context, index) {
          return Container(
            width: MediaQuery.of(context).size.width * 0.95,
            height: 230,
            margin: EdgeInsets.only(right: 16), // Добавляем отступ между карточками
            decoration: const BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
            ),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Image.asset(
                  "assets/images/kaaba1.jpg",
                ),
                Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 40,
                  left: 20,
                  child: GestureDetector(
                    onTap: () {
                      // Переход на новую страницу при нажатии
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => DetailPage(), // Замените на нужную страницу
                        ),
                      );
                    },
                    child: Container(
                      width: 200,
                      height: 50,
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(36),
                        ),
                      ),
                      child: const Text(
                        "ПОДРОБНЕЕ",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Детальная страница"), // Замените на нужное название
      ),
      body: Center(
        child: Text("Содержимое детальной страницы"), // Замените на нужное содержимое
      ),
    );
  }
}
