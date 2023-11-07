import 'package:flutter/material.dart';

class NavigationItem{
  final String? text;
  final String? svgIconName;
  final Widget? destinationPage;

  const NavigationItem({this.text, this.svgIconName, this.destinationPage});
}