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

  Future<void> show() => showDialog(
        context: this,
        barrierDismissible: false,
        builder: (c) {
          ctx = c;

          return WillPopScope(
            onWillPop: () async => false,
            child: Material(
              color: Colors.transparent,
              child: Center(
                child: Container(
                  decoration: BoxDecoration(
                    color:
                        Theme.of(this).extension<PookabooColors>()?.background,
                    borderRadius: BorderRadius.circular(Dimens.space16),
                  ),
                  margin: EdgeInsets.symmetric(horizontal: Dimens.space30),
                  padding: EdgeInsets.all(Dimens.space24),
                  child: const AppLoading(),
                ),
              ),
            ),
          );
        },
      );

  void back() {
    Navigator.of(this).pop();
  }

  void dismiss() {
    try {
      Navigator.pop(ctx);
    } catch (_) {}
  }
}
