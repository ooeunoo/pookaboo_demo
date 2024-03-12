import 'package:kakao_flutter_sdk/kakao_flutter_sdk.dart';
import 'package:pookaboo/shared/constant/env.dart';
import 'package:pookaboo/shared/utils/logging/log.dart';

class KakaoNaviService {
  static Future<void> init() async {
    KakaoSdk.init(
      nativeAppKey: Env.get.kakaoNativeApiKey,
      javaScriptAppKey: Env.get.kakaoJavascriptApiKey,
    );
  }

  Future<void> findWay() async {
    bool result = await NaviApi.instance.isKakaoNaviInstalled();
    if (await NaviApi.instance.isKakaoNaviInstalled()) {
      // 카카오내비 앱으로 길 안내하기, WGS84 좌표계 사용
      await NaviApi.instance.navigate(
        destination:
            Location(name: '카카오 판교오피스', x: '127.108640', y: '37.402111'),
        // 경유지 추가
        viaList: [
          Location(name: '판교역 1번출구', x: '127.111492', y: '37.395225'),
        ],
      );
    } else {
      // 카카오내비 설치 페이지로 이동
      launchBrowserTab(Uri.parse(NaviApi.webNaviInstall));
    }
  }
}
