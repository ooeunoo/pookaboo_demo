import 'package:dartz/dartz.dart';
import 'package:kakao_map_plugin/kakao_map_plugin.dart';
import 'package:pookaboo/layers/map/data/models/coord.dart';
import 'package:pookaboo/layers/map/data/models/route.dart';
import 'package:pookaboo/layers/map/data/models/toilet.dart';
import 'package:pookaboo/layers/map/domain/entities/create_review_params.dart';
import 'package:pookaboo/layers/map/domain/entities/get_nearby_toilets_params.dart';
import 'package:pookaboo/shared/error/failure.dart';

abstract class MapRepository {
  Future<Either<Failure, List<Toilet>>> getNearByToiletsImpl(
      GetNearByToiletsParams params);

  Future<Either<Failure, Toilet>> getToiletByIdImpl(int id);

  Future<Either<Failure, bool>> createReviewImpl(CreateReviewParams params);

  // Future<LatLng> convertCood(ConvertCoordParams params);

  Future<Either<Failure, GetRouteResponse>> getRoutes(GetRouteParams params);
}
