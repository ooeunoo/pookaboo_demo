import 'package:kakao_map_plugin/kakao_map_plugin.dart';

class Config {
  Config._();

  static Config get = Config._();

  String appName = "Pookaboo";

  String supabaseLoginRedirectTo =
      'io.supabase.flutterquickstart://login-callback/';

  LatLng initialCenter = LatLng(37.584690, 127.046502);
}
