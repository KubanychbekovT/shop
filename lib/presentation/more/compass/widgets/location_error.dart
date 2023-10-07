import 'package:flutter/material.dart';

class LocationErrorWidget extends StatelessWidget {
  final String? error;
  final Function? callback;

  const LocationErrorWidget({Key? key, this.error, this.callback})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    const errorColor = Color(0xffb00020);

    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Icon(
            Icons.location_off,
            size: 150,
            color: errorColor,
          ),
          const SizedBox(height: 16), // Увеличение расстояния между элементами
          Text(
            error!,
            style: TextStyle(
              color: errorColor,
              fontWeight: FontWeight.bold,
              fontSize: 18, // Увеличение размера шрифта
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.red, // Изменение цвета кнопки
            ),
            child: const Text("Повторить"),
            onPressed: () {
              if (callback != null) callback!();
            },
          )
        ],
      ),
    );
  }
}
