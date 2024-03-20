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

  Future<Position> getPosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();

    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }

    return await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
  }

  Future<void> askPermission() async {
    await Geolocator.openAppSettings();
    await Geolocator.openLocationSettings();
  }
}
