import 'package:dartz/dartz.dart';
import 'package:kakao_map_plugin/kakao_map_plugin.dart';
import 'package:pookaboo/layers/map/data/datasources/kakao_remote_datasource.dart';
import 'package:pookaboo/layers/map/data/datasources/toilet_remote_datasource.dart';
import 'package:pookaboo/layers/map/data/models/coord.dart';
import 'package:pookaboo/layers/map/data/models/route.dart';
import 'package:pookaboo/layers/map/data/models/toilet.dart';
import 'package:pookaboo/layers/map/domain/entities/create_review_params.dart';
import 'package:pookaboo/layers/map/domain/entities/get_nearby_toilets_params.dart';
import 'package:pookaboo/layers/map/domain/repositories/map_repository.dart';
import 'package:pookaboo/shared/error/failure.dart';
import 'package:pookaboo/shared/utils/logging/log.dart';

class MapRepositoryImpl implements MapRepository {
  final ToiletRemoteDatasource toiletRemoteDatasource;
  final KakaoRemoteDatasource kakaoRemoteDatasource;

  const MapRepositoryImpl(
      this.toiletRemoteDatasource, this.kakaoRemoteDatasource);

  @override
  Future<Either<Failure, List<Toilet>>> getNearByToiletsImpl(
      GetNearByToiletsParams params) async {
    final response =
        await toiletRemoteDatasource.getNearByToiletsDatasource(params);
    return response;
  }

  @override
  Future<Either<Failure, Toilet>> getToiletByIdImpl(int id) async {
    final response = await toiletRemoteDatasource.getToiletByIdDatasource(id);
    return response;
  }

  @override
  Future<Either<Failure, bool>> createReviewImpl(
      CreateReviewParams params) async {
    final response = await toiletRemoteDatasource.createReview(params);
    return response;
  }

  @override
  Future<Either<Failure, GetRouteFormatResponse>> getRoutes(
      GetRouteParams params) async {
    final response = await kakaoRemoteDatasource.getRoutes(params);
    log.d(response);
    return response;
  }
}
