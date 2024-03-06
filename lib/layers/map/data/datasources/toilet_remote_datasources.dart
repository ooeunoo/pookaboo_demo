import 'package:dartz/dartz.dart';
import 'package:pookaboo/layers/map/domain/usecases/get_nearby_toilets.dart';
import 'package:pookaboo/mocks/toilets.dart';
import 'package:pookaboo/shared/error/failure.dart';
import 'package:pookaboo/shared/services/supabase/supabase_service.dart';

abstract class ToiletRemoteDatasource {
  Future<List<Map<String, dynamic>>> getNearByToilets();
}

class ToiletRemoteDatasourceImpl implements ToiletRemoteDatasource {
  final SupabaseService _supabaseService;

  ToiletRemoteDatasourceImpl(this._supabaseService);

  @override
  Future<List<Map<String, dynamic>>> getNearByToilets() async {
    return get_toilets_mock();
  }
}
