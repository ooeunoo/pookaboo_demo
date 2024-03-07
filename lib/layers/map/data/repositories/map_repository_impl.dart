import 'package:dartz/dartz.dart';
import 'package:pookaboo/layers/map/data/datasources/toilet_remote_datasources.dart';
import 'package:pookaboo/layers/map/data/models/toilet.dart';
import 'package:pookaboo/layers/map/domain/entities/get_nearby_toilets_params.dart';
import 'package:pookaboo/layers/map/domain/repositories/map_repository.dart';
import 'package:pookaboo/shared/error/failure.dart';

class MapRepositoryImpl implements MapRepository {
  final ToiletRemoteDatasource toiletRemoteDatasource;

  const MapRepositoryImpl(this.toiletRemoteDatasource);

  @override
  Future<Either<Failure, List<Toilet>>> getNearByToiletsImpl(
      GetNearByToiletsParams params) async {
    final response =
        await toiletRemoteDatasource.getNearByToiletsDatasource(params);
    return response;
  }
}
