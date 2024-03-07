import 'package:dartz/dartz.dart';
import 'package:pookaboo/layers/map/data/models/toilet.dart';
import 'package:pookaboo/layers/map/domain/entities/get_nearby_toilets_params.dart';
import 'package:pookaboo/layers/map/domain/repositories/map_repository.dart';
import 'package:pookaboo/shared/error/failure.dart';
import 'package:pookaboo/shared/usecase/usecase.dart';

class GetNearByToiletsUseCase
    extends UseCase<List<Toilet>, GetNearByToiletsParams> {
  final MapRepository _repo;

  GetNearByToiletsUseCase(this._repo);

  @override
  Future<Either<Failure, List<Toilet>>> call(GetNearByToiletsParams params) {
    return _repo.getNearByToiletsImpl(params);
  }
}
