import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:kakao_map_plugin/kakao_map_plugin.dart';
import 'package:pookaboo/layers/map/data/models/coord.dart';
import 'package:pookaboo/layers/map/data/models/route.dart';
import 'package:pookaboo/shared/constant/api.dart';
import 'package:pookaboo/shared/constant/enum.dart';
import 'package:pookaboo/shared/constant/env.dart';
import 'package:pookaboo/shared/error/failure.dart';

abstract class KakaoRemoteDatasource {
  Future<LatLng> convertCoord(ConvertCoordParams params);
  // Future<LatLng> getRoutes(GetRouteParams params);
}

class KakaoRemoteDatasourceImpl implements KakaoRemoteDatasource {
  late Dio _dio;

  KakaoRemoteDatasourceImpl() {
    _dio = Dio(BaseOptions(baseUrl: Api.get.kakaoApiBaseUrl, headers: {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
      'Authorization': 'KakaoAk ${Env.get.kakaoJavascriptApiKey}'
    }));
  }

  @override
  Future<LatLng> convertCoord(ConvertCoordParams params) async {
    Map<String, dynamic> query = {
      'x': params.x,
      'y': params.y,
      'input_coord': params.inputCoord,
      'output_coord': params.outputCoord
    };

    final response =
        await _dio.get(Api.get.transCoordEndpoint, queryParameters: query);

    ConvertCoordResponse data = ConvertCoordResponse.fromJson(response.data);
    Document document = data.documents[0];

    LatLng loc = LatLng(document.y, document.x);

    return loc;
  }

  // @override
  // Future<LatLng> getRoutes(GetRouteParams params) async {
  //   Map<String, dynamic> query = {
  //     'sName': params.sName,
  //     'sX': params.sX,
  //     'sY': params.sY,
  //     'eName': params.eName,
  //     'eX': params.eX,
  //     'eY': params.eY
  //   };

  //   final response =
  //       await _dio.get(Api.get.routeWalkEndpoint, queryParameters: query);

  //   GetRouteResponse data = response.data;

  //   Direction direction = data.directions[0];
  //   Section section = direction.sections[0];

  //   List<GuideList> guideList = section.guideList;
  //   int time = section.time;

  //   // return loc;
  // }
}


//  if (isSuccess && hasDirections) {
//     const directions = data.directions[0]; // 일단 0번째 경로 사용, 추후 변경
//     const guideList = directions.sections[0].guideList;
//     const time = convertSecondsToMinutes(directions.sections[0].time);

//     if (onlyTime) {
//       return {time, points: []};
//     }

//     const linkPoints: any = [];
//     guideList.forEach((guide) => {
//       if (guide.guideCode !== 'END') {
//         const points = parseDirectionWayPoint(guide.link.points);
//         linkPoints.push(...points);
//       }
//     });
//     return {time, points: linkPoints};
//   }