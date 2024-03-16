import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:geolocator/geolocator.dart';
import 'package:geolocator_apple/geolocator_apple.dart';
import 'package:geolocator_android/geolocator_android.dart';
import 'package:pookaboo/shared/utils/logging/log.dart';

///[gradle.properties]
/******************************** 
android.useAndroidX=true
android.enableJetifier=true
********************************/

///[android/app/build.gradle]
/******************************* 
android {
  compileSdkVersion 33

  ...
}
*******************************/

///[AndroidManifest.xml]
/******************************* 
<uses-permission android:name="android.permission.ACCESS_FINE_LOCATION" />
<uses-permission android:name="android.permission.ACCESS_COARSE_LOCATION" />
<uses-permission android:name="android.permission.ACCESS_BACKGROUND_LOCATION" />
*******************************/

///[Info.plist]
/******************************* 
<key>NSLocationWhenInUseUsageDescription</key>
<string>This app needs access to location when open.</string>

<key>NSLocationTemporaryUsageDescriptionDictionary</key>
<dict>
  <key>YourPurposeKey</key>
  <string>The example App requires temporary access to the device&apos;s precise location.</string>
</dict>
*******************************/

class GeolocatorService {
  final distanceFilter = 100;
  final intervalDuration = 10;
  late LocationSettings locationSettings;
  late StreamSubscription<Position> positionStream;

  // GeolocatorService() {
  //   init().then((_) {
  //     positionStream =
  //         Geolocator.getPositionStream(locationSettings: locationSettings)
  //             .listen((Position? position) {
  //       print(position == null
  //           ? 'Unknown'
  //           : '${position.latitude.toString()}, ${position.longitude.toString()}');
  //     });
  //   });
  // }

  // Future<void> init() async {
  //   if (defaultTargetPlatform == TargetPlatform.android) {
  //     locationSettings = AndroidSettings(
  //         accuracy: LocationAccuracy.high,
  //         distanceFilter: distanceFilter,
  //         forceLocationManager: true,
  //         intervalDuration: Duration(seconds: intervalDuration),
  //         //(Optional) Set foreground notification config to keep the app alive
  //         //when going to the background
  //         foregroundNotificationConfig: const ForegroundNotificationConfig(
  //           notificationText:
  //               "Example app will continue to receive your location even when you aren't using it",
  //           notificationTitle: "Running in Background",
  //           enableWakeLock: true,
  //         ));
  //   } else if (defaultTargetPlatform == TargetPlatform.iOS ||
  //       defaultTargetPlatform == TargetPlatform.macOS) {
  //     locationSettings = AppleSettings(
  //       accuracy: LocationAccuracy.high,
  //       activityType: ActivityType.fitness,
  //       distanceFilter: distanceFilter,
  //       pauseLocationUpdatesAutomatically: true,
  //       // Only set to true if our app will be started up in the background.
  //       showBackgroundLocationIndicator: false,
  //     );
  //   } else {
  //     locationSettings = LocationSettings(
  //       accuracy: LocationAccuracy.high,
  //       distanceFilter: distanceFilter,
  //     );
  //   }
  // }

  /// Determine the current position of the device.
  ///
  /// When the location services are not enabled or permissions
  /// are denied the `Future` will return an error.
  Future<Position> getPosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    // Test if location services are enabled.
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      // Location services are not enabled don't continue
      // accessing the position and request users of the
      // App to enable the location services.
      return Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();

    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        // Permissions are denied, next time you could try
        // requesting permissions again (this is also where
        // Android's shouldShowRequestPermissionRationale
        // returned true. According to Android guidelines
        // your App should show an explanatory UI now.
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      // Permissions are denied forever, handle appropriately.
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }

    // When we reach here, permissions are granted and we can
    // continue accessing the position of the device.
    return await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
  }

  Future<void> askPermission() async {
    await Geolocator.openAppSettings();
    await Geolocator.openLocationSettings();
  }
}
