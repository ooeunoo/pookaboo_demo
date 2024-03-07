import 'package:dartz/dartz.dart';
import 'package:pookaboo/layers/map/data/models/toilet.dart';
import 'package:pookaboo/layers/map/domain/entities/get_nearby_toilets_params.dart';
import 'package:pookaboo/shared/error/failure.dart';
import 'package:pookaboo/shared/services/supabase/supabase_service.dart';
import 'package:pookaboo/shared/utils/logging/log.dart';

abstract class ToiletRemoteDatasource {
  Future<Either<Failure, List<Toilet>>> getNearByToiletsDatasource(
      GetNearByToiletsParams params);
}

class ToiletRemoteDatasourceImpl implements ToiletRemoteDatasource {
  final SupabaseService _supabaseService;

  ToiletRemoteDatasourceImpl(this._supabaseService);

  @override
  Future<Either<Failure, List<Toilet>>> getNearByToiletsDatasource(
      GetNearByToiletsParams params) async {
    try {
      final List<dynamic> data =
          await _supabaseService.client.rpc('get_nearby_toilets', params: {
        'min_lat': params.bounds.sw.latitude,
        'min_long': params.bounds.sw.longitude,
        'max_lat': params.bounds.ne.latitude,
        'max_long': params.bounds.ne.longitude,
        'visible_filter': params.filterOfVisible,
        'password_filter': params.filterOfPassword,
      });

      final List<Toilet> toilets = data
          .map((json) => Toilet.fromJson(json as Map<String, dynamic>))
          .toList();

      return Right(toilets);
    } catch (e) {
      log.e(e);
      return Left(ServerFailure(e.toString()));
    }
  }
}
