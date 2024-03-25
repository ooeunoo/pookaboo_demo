import 'package:flutter_dotenv/flutter_dotenv.dart';

class Env {
  Env._();

  static Env get = Env._();

  // Envrionment
  String kakaoJavascriptApiKey = dotenv.env['KAKAO_JAVASCRIPT_API_KEY']!;
  String kakaoNativeApiKey = dotenv.env['KAKAO_NATIVE_API_KEYs']!;

  String supaBaseUrl = dotenv.env['SUPA_BASE_URL']!;
  String supaBaseAnonKey = dotenv.env['SUPA_BASE_ANON_KEY']!;
  String supaBaseDataBasePassword = dotenv.env['SUPA_BASE_DATA_BASE_PASSWORD']!;

  String sentryDsn = dotenv.env['SENTRY_SDN']!;
}
