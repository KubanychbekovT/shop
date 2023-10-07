import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  String name = '';
  String address = '';
  String phoneNumber = '';
  String password = '';
  String birthDate = '';
  String gender = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      leading: IconButton(
        icon: Icon(Icons.arrow_back, color: Colors.black, size: 32,),
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
      title: Center(child: Text('Мои детали', style: TextStyle(color: Colors.black),)),
      backgroundColor: Colors.white,
    ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 25.0,
                  backgroundColor: Colors.grey.shade200,
                  child: const Icon(Icons.person_outline_outlined, color: Colors.grey,),
                ),
                const SizedBox(width: 20.0),
                const Text(
                  'Ваши баллы: 100.0',
                  style: TextStyle(fontSize: 16.0),
                ),
              ],
            ),

            const SizedBox(height: 20.0),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Имя', style: TextStyle(fontSize: 16.0)),
                const SizedBox(height: 15),
                TextField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                  onChanged: (value) {
                    name = value;
                  },
                ),
              ],
            ),

            const SizedBox(height: 20),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Эл. адрес', style: TextStyle(fontSize: 16.0)),
                const SizedBox(height: 15),
                TextField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                  onChanged: (value) {
                    address = value;
                  },
                ),
              ],
            ),

            const SizedBox(height: 20),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Номер телефона', style: TextStyle(fontSize: 16.0)),
                const SizedBox(height: 15),
                TextField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                  onChanged: (value) {
                    phoneNumber = value;
                  },
                ),
              ],
            ),

            const SizedBox(height: 20),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Пароль', style: TextStyle(fontSize: 16.0)),
                const SizedBox(height: 15),
                TextField(
                  decoration: const InputDecoration(
                    labelText: 'Напишите новый пароль',
                    border: OutlineInputBorder(),
                  ),
                  onChanged: (value) {
                    password = value;
                  },
                ),
              ],
            ),

            const SizedBox(height: 20),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('День рождения', style: TextStyle(fontSize: 16.0)),
                const SizedBox(height: 15),
                TextField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                  onChanged: (value) {
                    birthDate = value;
                  },
                ),
              ],
            ),

            const SizedBox(height: 20),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Пол', style: TextStyle(fontSize: 16.0)),
                const SizedBox(height: 15),
                Row(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          gender = 'Мужской';
                        });
                      },
                      child: Container(
                        height: 40,
                        width: 140,
                        child: Center(
                          child: Text(
                            'Мужской',
                            style: TextStyle(
                              color: gender == 'Мужской' ? Colors.black : Colors.grey,
                            ),
                          ),
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        side: BorderSide(
                          color: gender == 'Мужской' ? Colors.black : Colors.grey,
                          width: 2,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          gender = 'Женский';
                        });
                      },
                      child: Container(
                        height: 40,
                        width: 140,
                        child: Center(
                          child: Text(
                            'Женский',
                            style: TextStyle(
                              color: gender == 'Женский' ? Colors.black : Colors.grey,
                            ),
                          ),
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        side: BorderSide(
                          color: gender == 'Женский' ? Colors.black : Colors.grey,
                          width: 2,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),

            const SizedBox(height: 20.0),

            ElevatedButton(
              onPressed: () {
                // Выполните сохранение данных в базе данных или на сервере
                // Используйте переменные (name, address, и так далее) для отправки данных
                // После успешного сохранения, вы можете показать сообщение об успешном обновлении данных
              },
              child: Container(
                height: 50,
                width: double.infinity,
                child: const Center(child: Text('Сохранить')),
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.purple,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}