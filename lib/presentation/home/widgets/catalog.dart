import 'package:flutter/material.dart';

Widget catalog(double w) {
  return Container(
    width: w,
    //margin: const EdgeInsets.only(left: 10),
    child: SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ...List.generate(
            [].length,
                (index) {
              if (index == 0) {
                return Container(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 5,
                    vertical: 5,
                  ),
                );
              } else {
                return Container(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 5,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25), // Установите радиус для создания овала
                    color: Colors.white,
                    border: Border.all(color: Colors.black54, width: 2),
                  ),
                  width: 170, // Ширина контейнера
                  height: 40, // Высота контейнера
                  child: Center(
                    child: Text(
                      [][index]["lable"],
                      style: const TextStyle(fontSize: 14, color: Colors.black),
                    ),
                  ),
                );
              }
            },
          )
        ],
      ),
    ),
  );
}
