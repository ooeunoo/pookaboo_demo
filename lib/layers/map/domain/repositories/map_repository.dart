import 'package:dartz/dartz.dart';
import 'package:pookaboo/layers/map/domain/usecases/get_nearby_toilets.dart';
import 'package:pookaboo/shared/error/failure.dart';

abstract class MapRepository {
  Future<List<Map<String, dynamic>>> getNearByToilets();
}
