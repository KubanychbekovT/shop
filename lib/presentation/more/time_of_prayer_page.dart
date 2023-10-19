import 'package:flutter/material.dart';
import 'package:pray_times/pray_times.dart';

class TimeOfPrayerPage extends StatefulWidget {
  const TimeOfPrayerPage({Key? key}) : super(key: key);

  @override
  State<TimeOfPrayerPage> createState() => _TimeOfPrayerPageState();
}

class _TimeOfPrayerPageState extends State<TimeOfPrayerPage> {
  double latitude = 42.8746;
  double longitude = 74.5698;
  double timezone = 6.0;
  List<String> prayerTimes = [];
  List<String> prayerNames = [];

  String nextPrayerName = '';
  Duration timeRemaining = Duration();

  @override
  void initState() {
    super.initState();
    calculatePrayerTimes();
    updateNextPrayerTimer();
  }

  void calculatePrayerTimes() {
    PrayerTimes prayers = PrayerTimes();
    prayers.setTimeFormat(prayers.Time24);
    prayers.setCalcMethod(prayers.MWL);
    prayers.setAsrJuristic(prayers.Hanafi);
    prayers.setAdjustHighLats(prayers.AngleBased);
    var offsets = [0, 0, 0, 0, 0, 0, 0];
    prayers.tune(offsets);

    final date = DateTime.now();
    prayerTimes = prayers.getPrayerTimes(date, latitude, longitude, timezone);
    prayerNames = prayers.getTimeNames();
  }

  DateTime getNextPrayerTime() {
    final now = DateTime.now();
    for (int i = 0; i < prayerTimes.length; i++) {
      final prayerTime = DateTime(
        now.year,
        now.month,
        now.day,
        int.parse(prayerTimes[i].split(':')[0]),
        int.parse(prayerTimes[i].split(':')[1]),
      );
      if (prayerTime.isAfter(now)) {
        nextPrayerName = prayerNames[i];
        return prayerTime;
      }
    }
    nextPrayerName = prayerNames[0];
    return DateTime(
      now.year,
      now.month,
      now.day + 1,
      int.parse(prayerTimes[0].split(':')[0]),
      int.parse(prayerTimes[0].split(':')[1]),
    );
  }

  void updateNextPrayerTimer() {
    final nextPrayerTime = getNextPrayerTime();
    timeRemaining = nextPrayerTime.difference(DateTime.now());

    if (timeRemaining.isNegative) {
      // All prayers for today have already passed; calculate for tomorrow's Fajr.
      final tomorrowFajr = getNextPrayerTime();
      final durationUntilTomorrowFajr = tomorrowFajr.difference(DateTime.now());
      // Schedule to update the timer when the next day's Fajr time arrives.
      Future.delayed(durationUntilTomorrowFajr, () {
        setState(() {
          updateNextPrayerTimer();
        });
      });
    } else {
      // Schedule to update the timer every second.
      Future.delayed(const Duration(seconds: 1), () {
        setState(() {
          updateNextPrayerTimer();
        });
      });
    }
  }

  String formatDuration(Duration duration) {
    final minutes = (duration.inMinutes % 60);
    final seconds = (duration.inSeconds % 60);
    return '$minutes:${seconds.toString().padLeft(2, '0')}';
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
          Image.asset(
            'assets/images/kaaba1.jpg',
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
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
                        SizedBox(height: 5),
                      ],
                    ],
                  ),
                ),
                Center(
                  child: Column(
                    children: [
                      Text(
                        'Next Prayer: $nextPrayerName',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 16),
                      Text(
                        'Time Remaining: ${formatDuration(timeRemaining)}',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ]));
  }
}
