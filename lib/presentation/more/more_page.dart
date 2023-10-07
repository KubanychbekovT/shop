import 'package:flutter/material.dart';
import 'package:sajda_shop/presentation/more/compass/qiblah_compass_page.dart';
import 'package:sajda_shop/presentation/more/search_page.dart';
import 'package:sajda_shop/presentation/more/time_of_prayer_page.dart';

class MorePage extends StatelessWidget {
  const MorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar:
      AppBar(
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
        title: Center(child: Text('Еще', style: TextStyle(color: Colors.black),)),
        backgroundColor: Colors.white,
      ),
      body:  ListView(
          padding: EdgeInsets.zero,
          children: [
            ListTile(
              leading: Icon(Icons.search, color: Colors.black,),
              title: const Text('Поиск', style: TextStyle(color: Colors.black),),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => SearchPage(),));
              },
            ),
            ListTile(
              leading: Icon(Icons.compass_calibration_outlined, color: Colors.black,),
              title: const Text('Компас', style: TextStyle(color: Colors.black)),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => CompassPage(),));
              },
            ),
            ListTile(
              leading: Icon(Icons.access_time, color: Colors.black,),
              title: const Text('Время намаза', style: TextStyle(color: Colors.black)),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => TimeOfPrayerPage()));
              },
            )
          ]
      ),
    );
  }
}
