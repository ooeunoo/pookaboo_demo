import 'package:dartz/dartz.dart';
import 'package:pookaboo/layers/data/datasources/kakao_remote_datasource.dart';
import 'package:pookaboo/layers/data/datasources/toilet_remote_datasource.dart';
import 'package:pookaboo/layers/data/models/route/route.dart';
import 'package:pookaboo/layers/data/models/toilet/toilet.dart';
import 'package:pookaboo/layers/domain/entities/toilet/get_nearby_toilets_params.dart';
import 'package:pookaboo/layers/domain/repositories/map/map_repository.dart';
import 'package:pookaboo/shared/error/failure.dart';

class MapRepositoryImpl implements MapRepository {
  final ToiletRemoteDatasource toiletRemoteDatasource;
  final KakaoRemoteDatasource kakaoRemoteDatasource;

  const MapRepositoryImpl(
      this.toiletRemoteDatasource, this.kakaoRemoteDatasource);

  @override
  Future<Either<Failure, List<Toilet>>> getNearByToiletsImpl(
      GetNearByToiletsParams params) async {
    return toiletRemoteDatasource.getNearByToiletsDatasource(params);
  }

  @override
  Future<Either<Failure, Toilet>> getToiletByIdImpl(int id) async {
    return toiletRemoteDatasource.getToiletByIdDatasource(id);
  }

  @override
  Future<Either<Failure, GetRouteFormatResponse>> getRoutes(
      GetRouteParams params) async {
    return kakaoRemoteDatasource.getRoutes(params);
  }
}
