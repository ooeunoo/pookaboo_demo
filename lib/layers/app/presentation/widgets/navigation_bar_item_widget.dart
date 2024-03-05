import 'package:flutter/cupertino.dart';

class NavigationBarItemWidget extends BottomNavigationBarItem {
  final String initialLocation;

  NavigationBarItemWidget(
      {required this.initialLocation, required super.icon, super.label});
}
