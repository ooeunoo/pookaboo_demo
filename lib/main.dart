import 'dart:async';

// import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pookaboo/injection.dart';
import 'package:pookaboo/pookaboo_app.dart';
import 'package:pookaboo/shared/constant/env.dart';
import 'package:sentry_flutter/sentry_flutter.dart';

void main() {
  runZonedGuarded(
    () async {
      WidgetsFlutterBinding.ensureInitialized();

      /// Register Service locator
      await configureDependencies();

      return SystemChrome.setPreferredOrientations(
        [
          DeviceOrientation.portraitUp,
          DeviceOrientation.portraitDown,
        ],
      ).then((_) async => await SentryFlutter.init((options) {
            options.dsn = Env.get.sentryDsn;
          }, appRunner: () => runApp(const PookabooApp())));
    },
    (error, stackTrace) async {
      print(error);
      // FirebaseCrashlytics.instance.recordError(error, stackTrace);
    },
  );
}
