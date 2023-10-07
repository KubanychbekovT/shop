import 'package:flutter/material.dart';
import 'package:pray_times/pray_times.dart';

class TimeOfPrayerPage extends StatefulWidget {
  const TimeOfPrayerPage({Key? key}) : super(key: key);

  @override
  State<TimeOfPrayerPage> createState() => _TimeOfPrayerPageState();
}

class _TimeOfPrayerPageState extends State<TimeOfPrayerPage> {
  double latitude = 42.8746; // Latitude for Bishkek
  double longitude = 74.5698; // Longitude for Bishkek
  double timezone = 6.0; // Timezone for Bishkek (Kyrgyzstan Time is UTC+6)

  List<String> prayerTimes = [];
  List<String> prayerNames = [];

  @override
  void initState() {
    super.initState();
    calculatePrayerTimes();
  }

  void calculatePrayerTimes() {
    PrayerTimes prayers = PrayerTimes();
    prayers.setTimeFormat(prayers.Time24);
    prayers.setCalcMethod(prayers.MWL);
    prayers.setAsrJuristic(prayers.Shafii);
    prayers.setAdjustHighLats(prayers.AngleBased);
    var offsets = [0, 0, 0, 0, 0, 0, 0];
    prayers.tune(offsets);

    final date = DateTime.now();
    prayerTimes = prayers.getPrayerTimes(date, latitude, longitude, timezone);
    prayerNames = prayers.getTimeNames();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                size: 32,
              ),
            ),
          ],
          title: Center(
            child: Text(
              'Время намаза',
              style: TextStyle(color: Colors.black),
            ),
          ),
          backgroundColor: Colors.white,
        ),
        body: Stack(children: [
          // Background image
          Image.asset(
            'assets/images/kaaba1.jpg', // Replace with your image asset path
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),

          // Location text at top right
          Container(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Бишкек, Кыргызстан',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 20),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        '${DateTime.now().toString().substring(0, 10)}',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      color: Colors.black,
                      padding: EdgeInsets.all(12),
                      child: Column(
                        children: [
                          for (int i = 0; i < prayerTimes.length; i++) ...[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  prayerNames[i],
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  prayerTimes[i],
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                                height:
                                    5), // Add a small vertical spacing between rows
                          ],
                        ],
                      ),
                    )
                  ]))
        ]));
  }
}
