import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:kakao_map_plugin/kakao_map_plugin.dart';
import 'package:pookaboo/layers/map/data/models/coord.dart';
import 'package:pookaboo/layers/map/data/models/route.dart';
import 'package:pookaboo/shared/constant/api.dart';
import 'package:pookaboo/shared/constant/enum.dart';
import 'package:pookaboo/shared/constant/env.dart';
import 'package:pookaboo/shared/error/failure.dart';
import 'package:pookaboo/shared/utils/logging/log.dart';

abstract class KakaoRemoteDatasource {
  // Future<LatLng> convertCoord(ConvertCoordParams params);
  Future<Either<Failure, GetRouteResponse>> getRoutes(GetRouteParams params);
}

class KakaoRemoteDatasourceImpl implements KakaoRemoteDatasource {
  // late Dio _dioKakao;
  late Dio _dioMap;

  KakaoRemoteDatasourceImpl() {
    // _dioKakao = Dio(BaseOptions(baseUrl: Api.get.kakaoApiBaseUrl, headers: {
    //   'Content-Type': 'application/json',
    //   'Accept': 'application/json',
    //   'Authorirzation': 'KakaoAk ${Env.get.kakaoJavascriptApiKey}'
    // }));

    _dioMap = Dio(BaseOptions(baseUrl: Api.get.kakaoMAPApiBaseUrl, headers: {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
    }));
  }

  // @override
  // Future<LatLng> convertCoord(ConvertCoordParams params) async {
  //   Map<String, dynamic> query = {
  //     'x': params.x,
  //     'y': params.y,
  //     'input_coord': params.inputCoord,
  //     'output_coord': params.outputCoord
  //   };

  //   final response =
  //       await _dioKakao.get(Api.get.transCoordEndpoint, queryParameters: query);

  //   ConvertCoordResponse data = ConvertCoordResponse.fromJson(response.data);
  //   Document document = data.documents[0];

  //   LatLng loc = LatLng(document.y, document.x);

  //   return loc;
  // }

  @override
  Future<Either<Failure, GetRouteResponse>> getRoutes(
      GetRouteParams params) async {
    try {
      final query = <String, dynamic>{
        'sName': params.sName,
        'sX': params.sX,
        'sY': params.sY,
        'eName': params.eName,
        'eX': params.eX,
        'eY': params.eY,
        "ids": params.ids
      };

      final response =
          await _dioMap.get(Api.get.routeWalkEndpoint, queryParameters: query);
      GetRouteResponse data = GetRouteResponse.fromJson(response.data);
      return Right(data);
    } catch (e) {
      log.e('e: $e');
      return Left(ServerFailure(e.toString()));
    }
  }
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