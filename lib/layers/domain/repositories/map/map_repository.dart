import 'package:dartz/dartz.dart';
import 'package:kakao_map_plugin/kakao_map_plugin.dart';
import 'package:pookaboo/layers/data/models/coord/coord.dart';
import 'package:pookaboo/layers/data/models/route/route.dart';
import 'package:pookaboo/layers/data/models/toilet/toilet.dart';
import 'package:pookaboo/layers/domain/entities/review/create_review_params.dart';
import 'package:pookaboo/layers/domain/entities/toilet/get_nearby_toilets_params.dart';
import 'package:pookaboo/shared/error/failure.dart';

abstract class MapRepository {
  Future<Either<Failure, List<Toilet>>> getNearByToiletsImpl(
      GetNearByToiletsParams params);

  Future<Either<Failure, Toilet>> getToiletByIdImpl(int id);

  Future<Either<Failure, GetRouteFormatResponse>> getRoutes(
      GetRouteParams params);
}
