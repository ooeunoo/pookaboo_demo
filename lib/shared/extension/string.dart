import 'package:flutter/material.dart';
import 'package:oktoast/oktoast.dart';
import 'package:pookaboo/shared/styles/theme.dart';
import 'package:pookaboo/shared/utils/logging/log.dart';
import 'package:pookaboo/shared/widgets/app_toast.dart';

extension StringExtension on String {
  bool isValidEmail() {
    return RegExp(
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$',
    ).hasMatch(this);
  }

  void toToastError(BuildContext context) {
    try {
      final message = isEmpty ? "error" : this;

      //dismiss before show toast
      dismissAllToast(showAnim: true);

      showToastWidget(
        AppToast(
          bgColor: Theme.of(context).extension<PookabooColors>()!.red,
          icon: Icons.error,
          message: message,
          textColor: Colors.white,
        ),
        dismissOtherToast: true,
        position: ToastPosition.top,
        duration: const Duration(seconds: 3),
      );
    } catch (e, stackTrace) {
      // FirebaseCrashLogger().nonFatalError(error: e, stackTrace: stackTrace);
      log.e("error $e");
    }
  }

  void toToastSuccess(BuildContext context) {
    try {
      final message = isEmpty ? "success" : this;

      //dismiss before show toast
      dismissAllToast(showAnim: true);

      // showToast(msg)
      showToastWidget(
        AppToast(
          bgColor: Theme.of(context).extension<PookabooColors>()!.green,
          icon: Icons.check_circle,
          message: message,
          textColor: Colors.white,
        ),
        dismissOtherToast: true,
        position: ToastPosition.top,
        duration: const Duration(seconds: 3),
      );
    } catch (e, stackTrace) {
      // FirebaseCrashLogger().nonFatalError(error: e, stackTrace: stackTrace);
      log.e("$e");
    }
  }

  void toToastLoading(BuildContext context) {
    try {
      final message = isEmpty ? "loading" : this;
      //dismiss before show toast
      dismissAllToast(showAnim: true);

      showToastWidget(
        AppToast(
          bgColor: Theme.of(context).extension<PookabooColors>()!.pink,
          icon: Icons.info,
          message: message,
          textColor: Colors.white,
        ),
        dismissOtherToast: true,
        position: ToastPosition.top,
        duration: const Duration(seconds: 3),
      );
    } catch (e, stackTrace) {
      // FirebaseCrashLogger().nonFatalError(error: e, stackTrace: stackTrace);
      log.e("$e");
    }
  }
}
