import 'package:flutter/cupertino.dart';

class NavigationBarItemWidget extends BottomNavigationBarItem {
  final String path;

  NavigationBarItemWidget(
      {required this.path, required super.icon, super.label});
}
