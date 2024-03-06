import 'package:dartz/dartz.dart';
import 'package:pookaboo/layers/map/data/datasources/toilet_remote_datasources.dart';
import 'package:pookaboo/layers/map/domain/repositories/map_repository.dart';
import 'package:pookaboo/layers/map/domain/usecases/get_nearby_toilets.dart';
import 'package:pookaboo/mocks/toilets.dart';

class MapRepositoryImpl implements MapRepository {
  final ToiletRemoteDatasource toiletRemoteDatasource;

  const MapRepositoryImpl(this.toiletRemoteDatasource);

  @override
  Future<List<Map<String, dynamic>>> getNearByToilets() async {
    await Future.delayed(const Duration(seconds: 1));
    final res = toiletRemoteDatasource.getNearByToilets();
    return res;
  }
}
