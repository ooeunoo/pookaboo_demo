import 'dart:isolate';

import 'package:pookaboo/shared/constant/env.dart';
import 'package:pookaboo/shared/utils/logging/log.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

///
///
/// AndroidManifest.xml
///<intent-filter>
///    <action android:name="android.intent.action.MAIN"/>
///    <category android:name="android.intent.category.LAUNCHER"/>
///</intent-filter>
///<intent-filter>
///    <action android:name="android.intent.action.VIEW" />
///
///    <category android:name="android.intent.category.DEFAULT" />
///    <category android:name="android.intent.category.BROWSABLE" />
///<!-- Accepts URIs that begin with packageID, oauth -->
///<data android:scheme="com.example.supabase" android:host="oauth"/>
///
///</intent-filter>
///
///
///
///
/// Info.plist
///<key>CFBundleURLTypes</key>
///<array>
///	<dict>
///		<key>CFBundleTypeRole</key>
///		<string>Editor</string>
///		<key>CFBundleURLSchemes</key>
///		<array>
///			<string>io.supabase.flutterexample</string>
///		</array>
///	</dict>
///</array>
///
///

class SupabaseService {
  static Future<void> init() async {
    await Supabase.initialize(
      url: Env.get.supaBaseUrl,
      anonKey: Env.get.supaBaseAnonKey,
    );
    // /// Initialize Firebase
    // await Firebase.initializeApp(
    //   options: DefaultFirebaseOptions.currentPlatform,
    // );
    // // Pass all uncaught errors from the framework to Crashlytics.
    // // FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterError;
    // await FirebaseCrashlytics.instance.setCrashlyticsCollectionEnabled(true);

    // /// Catch errors that happen outside of the Flutter context,
    // Isolate.current.addErrorListener(
    //   RawReceivePort((List<dynamic> pair) async {
    //     final List<dynamic> errorAndStacktrace = pair;
    //     await FirebaseCrashlytics.instance.recordError(
    //       errorAndStacktrace.first,
    //       errorAndStacktrace.last as StackTrace,
    //     );
    //   }).sendPort,
    // );
  }

  SupabaseClient _client() {
    return Supabase.instance.client;
  }

  void signInWithOAuth({required OAuthProvider provider}) async {
    await _client().auth.signInWithOAuth(OAuthProvider.kakao,
        redirectTo: 'io.supabase.flutterquickstart://login-callback/'

        // 만약 앱이 설치되어있는지 확인할 수 있다면
        // authScreenLaunchMode: <확인> ? LaunchMode.externalApplication : LaunchMode.platformDefault,
        );
  }

  void signInWithEmailPassword(
      {required String email, required String password}) async {
    await _client().auth.signInWithPassword(email: email, password: password);
  }

  void signUpWithEmailPassword(
      {required String email, required String password}) async {
    await _client().auth.signUp(email: email, password: password);
  }

  Stream<User?> getCurrentUser() {
    return _client().auth.onAuthStateChange.map((event) => event.session?.user);
  }

  User? getSignedInUser() {
    return _client().auth.currentUser;
  }

  String getAccessToken() {
    return _client().auth.currentSession?.accessToken ?? '';
  }

  Future<void> signOut() async {
    return _client().auth.signOut();
  }
}
