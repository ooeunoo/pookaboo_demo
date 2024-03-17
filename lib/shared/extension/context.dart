import 'package:flutter/material.dart';
import 'package:pookaboo/shared/styles/dimens.dart';
import 'package:pookaboo/shared/styles/theme.dart';
import 'package:pookaboo/shared/widgets/common/app_loading.dart';

extension ContextExtensions on BuildContext {
  bool isMobile() {
    final shortestSide = MediaQuery.of(this).size.shortestSide;

    return shortestSide < 600;
  }

  double widthInPercent(double percent) {
    final toDouble = percent / 100;

    return MediaQuery.of(this).size.width * toDouble;
  }

  double heightInPercent(double percent) {
    final toDouble = percent / 100;
    return MediaQuery.of(this).size.height * toDouble;
  }

  static late BuildContext ctx;

  void dismiss() {
    try {
      Navigator.pop(ctx);
    } catch (_) {}
  }
}
