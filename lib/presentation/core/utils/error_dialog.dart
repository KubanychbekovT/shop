import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';

class AppDialog {
  static void showInfo(String msg,
      {Duration duration = const Duration(seconds: 2)}) {
    SmartDialog.showToast('',
        displayTime: duration,
        builder: (context) => Padding(
          padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
          child: Container(
            decoration: const BoxDecoration(boxShadow: [
              BoxShadow(
                offset: Offset(0, 4),
                blurRadius: 10,
                spreadRadius: 3,
                color: Color.fromRGBO(26, 42, 97, 0.06),
              ),
            ]),
            child: Card(
              elevation: 0,
              child: ListTile(
                minLeadingWidth: 10,
                leading: const Icon(
                  Icons.info_outline_rounded,
                  color: Colors.black,
                  size: 30,
                ),
                title: Text(msg ),
              ),
            ),
          ),
        ),
        alignment: Alignment.topLeft,
        maskColor: Colors.transparent);
  }
  static void showError(String? msg,
      {Duration duration = const Duration(seconds: 3)}) {
     SmartDialog.showToast('',
        displayTime: duration,
        builder: (context) => Padding(
              padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
              child: Container(
                decoration: const BoxDecoration(boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 4),
                    blurRadius: 10,
                    spreadRadius: 3,
                    color: Color.fromRGBO(26, 42, 97, 0.06),
                  ),
                ]),
                child: Card(
                  elevation: 0,
                  child: ListTile(
                    minLeadingWidth: 10,
                    leading: const Icon(
                      Icons.error_outline,
                      color: Colors.black,
                      size: 30,
                    ),
                    title: Text(msg ?? "Возникла ошибка. Пропробуйте еще раз."),
                  ),
                ),
              ),
            ),
        alignment: Alignment.topLeft,
        maskColor: Colors.transparent);
  }
}
