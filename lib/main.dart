import 'dart:async';

// import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pookaboo/injection.dart';
import 'package:pookaboo/pookaboo_app.dart';
import 'package:pookaboo/shared/service/kakao/kakao_map_service.dart';
import 'package:pookaboo/shared/service/supabase/supabase_service.dart';
// import 'package:flutter_auth_app/utils/utils.dart';

void main() {
  runZonedGuarded(
    /// Lock device orientation to portrait
    () async {
      WidgetsFlutterBinding.ensureInitialized();

      /// Register Service locator
      await configureDependencies();

      return SystemChrome.setPreferredOrientations(
        [
          DeviceOrientation.portraitUp,
          DeviceOrientation.portraitDown,
        ],
      ).then((_) => runApp(const PookabooApp()));
    },
    (error, stackTrace) async {
      print(error);
      // FirebaseCrashlytics.instance.recordError(error, stackTrace);
    },
  );
}
