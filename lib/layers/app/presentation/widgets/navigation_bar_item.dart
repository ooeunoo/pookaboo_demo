import 'package:flutter/cupertino.dart';

class NavigationBarItem extends BottomNavigationBarItem {
  final String initialLocation;

  NavigationBarItem(
      {required this.initialLocation, required super.icon, super.label});
}
