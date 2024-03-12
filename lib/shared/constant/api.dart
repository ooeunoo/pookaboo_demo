class Api {
  Api._();

  static Api get = Api._();
  /////////////////////////////////////
  // KAKAO
  /////////////////////////////////////
  String kakaoApiBaseUrl = "https://dapi.kakao.com/v2/";
  // endpoint
  String transCoordEndpoint = 'local/geo/transcoord.json';

  /////////////////////////////////////
  // KAKAO MAP
  /////////////////////////////////////
  String kakaoMAPApiBaseUrl = "https://map.kakao.com";
  // endpoint
  String routeWalkEndpoint = '/route/walkset.json';
}
