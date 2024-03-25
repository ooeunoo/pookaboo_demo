import 'package:kakao_map_plugin/kakao_map_plugin.dart';

class Config {
  Config._();

  static Config get = Config._();

  String appName = "Pookaboo";

  // String supabaseLoginRedirectTo = 'com.miriarea.pooakboo://login-callback/';
  // 'io.supabase.flutterquickstart://login-callback/';

  LatLng initialCenter = LatLng(37.584690, 127.046502);

  String routeIds = '11277825,434235';
  // 위치 업데이트 거리 (미터 단위)
  int positionStreamDistanceFilter = 50;

  String mainImageUrl =
      'https://orlbgeqydvmfkynxbsjj.supabase.co/storage/v1/object/public/toilet_main_images/2961.jpg';
}
