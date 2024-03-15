import 'package:kakao_flutter_sdk/kakao_flutter_sdk.dart';
import 'package:pookaboo/shared/constant/env.dart';
import 'package:pookaboo/shared/utils/logging/log.dart';

class KakaoService {
  static Future<void> init() async {
    log.d(Env.get.kakaoNativeApiKey);
    KakaoSdk.init(
      nativeAppKey: Env.get.kakaoNativeApiKey,
      // javaScriptAppKey: Env.get.kakaoJavascriptApiKey,
    );
  }
}
