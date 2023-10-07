import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({super.key});

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  // Функция для открытия ссылок
  Future<void> _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Не удалось открыть ссылку: $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Остальной код...
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
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
            ),
          ),
        ],
        title: Center(
            child: Text(
              'О компании',
              style: TextStyle(color: Colors.black),
            )),
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          SizedBox(height: 20),
          // Текст по середине сверху
          Container(
            alignment: Alignment.center,
            child: Text(
              'SAJDA GROUP',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          // Разделительный виджет (например, SizedBox) для создания отступа
          SizedBox(height: 24),
          // Несколько текстов в столбике снизу слева
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
              crossAxisAlignment:
              CrossAxisAlignment.start, // Начинать тексты с верхнего края
              children: [
                Column(
                  crossAxisAlignment:
                  CrossAxisAlignment.start, // Начинать тексты с левого края
                  children: [
                    Text('Контакты', style: TextStyle(fontSize: 24),),
                    SizedBox(height: 20),
                    Text('ЧУЙ ПРОСПЕКТ 97'),
                    SizedBox(height: 30),
                    // Телефон (ссылка)
                    GestureDetector(
                      onTap: () => _launchURL('+996 559 050 996'),
                      child: Text(
                        '+996 559 050 996',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.teal, // Синий цвет для ссылки
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                    SizedBox(height: 30),
                    // Почта (ссылка)
                    GestureDetector(
                      onTap: () => _launchURL('officialsajda@gmail.com'),
                      child: Text(
                        'officialsajda@gmail.com',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.teal, // Синий цвет для ссылки
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                    SizedBox(height: 30),
                    Text('Описание', style: TextStyle(fontSize: 24)),
                    SizedBox(height: 40),
                    Text('Ссылки', style: TextStyle(fontSize: 24)),
                    SizedBox(height: 20),
                    // Ссылка на Instagram
                    GestureDetector(
                      onTap: () => _launchURL('https://www.instagram.com/sajdaofficial/'),
                      child: Text(
                        'INSTAGRAM',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black, // Синий цвет для ссылки
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    // Ссылка на Facebook
                    GestureDetector(
                      onTap: () => _launchURL('https://www.facebook.com/Sajda.kg/?locale=ru_RU'),
                      child: Text(
                        'FACEBOOK',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black, // Синий цвет для ссылки
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    // Ссылка на веб-сайт
                    GestureDetector(
                      onTap: () => _launchURL('https://www.ваш_сайт.com'),
                      child: Text(
                        'САЙТ',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black, // Синий цвет для ссылки
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
