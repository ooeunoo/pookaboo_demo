import 'package:flutter/material.dart';

class MenuItem {
  int section;
  String title;
  Color? titleColor;
  void Function() onTap;

  MenuItem(
      {required this.section,
      required this.title,
      required this.onTap,
      this.titleColor});
}
