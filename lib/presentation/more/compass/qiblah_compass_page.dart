import 'dart:math';
import 'package:adhan_dart/adhan_dart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_compass/flutter_compass.dart';


class CompassPage extends StatefulWidget {
  CompassPage({Key? key}) : super(key: key);

  @override
  _CompassPageState createState() => _CompassPageState();
}

class _CompassPageState extends State<CompassPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: HSLColor.fromAHSL(1, 0, 0, 0.05).toColor(),
        body: Builder(builder: (context) {
          return Column(
            children: <Widget>[
              Expanded(child: _buildCompass()),
            ],
          );
        }),
      ),
    );
  }

  Widget _buildCompass() {
    Coordinates coordinates = Coordinates(23.8479, 90.2576);
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    // might need to accound for padding on iphones
    //var padding = MediaQuery.of(context).padding;
    return StreamBuilder<CompassEvent>(
      stream: FlutterCompass.events,
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return Text('Error reading heading: ${snapshot.error}');
        }

        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }

        double? direction = snapshot.data?.heading;

        // if direction is null, then device does not support this sensor
        // show error message
        if (direction == null)
          return Center(
            child: Text("Device does not have sensors !"),
          );

        int ang = (direction.round());
        return Stack(
          children: [
            Container(
              padding: EdgeInsets.all(5.0),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xFFEBEBEB),
              ),
              child: Transform.rotate(
                angle: ((direction ?? 0) * (pi / 180) * -1),
                child: Image.asset('assets/compass/compass.png'),
              ),
            ),
            Transform.rotate(
              angle: ((direction ?? 0) * Qibla.qibla(coordinates)),
              // child: SvgPicture.asset(
              //     'assets/4.svg'),
            ),
            Center(
              child: Text(
                "$ang",
                style: TextStyle(
                  color: Color(0xFFEBEBEB),
                  fontSize: 56,
                ),
              ),
            ),
            Positioned(
              // center of the screen - half the width of the rectangle
              left: (width / 2) - ((width / 80) / 2),
              // height - width is the non compass vertical space, half of that
              top: (height - width) / 2,
              child: SizedBox(
                width: width / 80,
                height: width / 10,
                child: Container(
                  //color: HSLColor.fromAHSL(0.85, 0, 0, 0.05).toColor(),
                  color: Color(0xBBEBEBEB),
                ),
              ),
            ),
          ],
        );
      },
    );
  }

}