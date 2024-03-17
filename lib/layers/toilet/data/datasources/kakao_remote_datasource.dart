import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:kakao_map_plugin/kakao_map_plugin.dart';
import 'package:pookaboo/layers/toilet/data/models/coord.dart';
import 'package:pookaboo/layers/toilet/data/models/route.dart';
import 'package:pookaboo/shared/constant/api.dart';
import 'package:pookaboo/shared/constant/enum.dart';
import 'package:pookaboo/shared/constant/env.dart';
import 'package:pookaboo/shared/error/failure.dart';
import 'package:pookaboo/shared/utils/helper/coord_helper.dart';
import 'package:pookaboo/shared/utils/helper/time_helper.dart';
import 'package:pookaboo/shared/utils/logging/log.dart';

abstract class KakaoRemoteDatasource {
  Future<Either<Failure, GetRouteFormatResponse>> getRoutes(
      GetRouteParams params);
}

class KakaoRemoteDatasourceImpl implements KakaoRemoteDatasource {
  late Dio _dioMap;

  KakaoRemoteDatasourceImpl() {
    _dioMap = Dio(BaseOptions(baseUrl: Api.get.kakaoMAPApiBaseUrl, headers: {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
    }));
  }

  @override
  Future<Either<Failure, GetRouteFormatResponse>> getRoutes(
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

      final data = GetRouteResponse.fromJson(response.data);

      Direction direction = data.directions[0];
      Section section = direction.sections[0];
      List<GuideList> guideList = section.guideList;

      int time = convertSecondsToMinutes(section.time);
      List<Document> points = parseCoordinatePoint(guideList);

      GetRouteFormatResponse formatResponse =
          GetRouteFormatResponse(time: time, points: points);

      return Right(formatResponse);
    } catch (e) {
      // log.e('e: $e');
      return Left(ServerFailure(e.toString()));
    }
  }

  List<Document> parseCoordinatePoint(List<GuideList> guideList) {
    List<Document> linkPoints = [];
    for (var guide in guideList) {
      if (guide.guideCode != 'END') {
        List<Document> points = guide.link!.points.split('|').map((point) {
          List<String> coordinates = point.split(',');
          double x = double.parse(coordinates[0]);
          double y = double.parse(coordinates[1]);
          return coordconvWCONGNAMULToWGS84(x, y);
        }).toList();
        linkPoints.addAll(points);
      }
    }
    return linkPoints;
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