import 'package:flutter/material.dart';

class AppTopBar {
  const AppTopBar();

  PreferredSize call() => PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: AppBar(elevation: 0),
      );
}
