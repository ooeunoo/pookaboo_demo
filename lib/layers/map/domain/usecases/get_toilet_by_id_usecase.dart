import 'package:dartz/dartz.dart';
import 'package:pookaboo/layers/map/data/models/toilet.dart';
import 'package:pookaboo/layers/map/domain/entities/get_nearby_toilets_params.dart';
import 'package:pookaboo/layers/map/domain/repositories/map_repository.dart';
import 'package:pookaboo/shared/error/failure.dart';
import 'package:pookaboo/shared/usecase/usecase.dart';

class GetToiletByIdUseCase extends UseCase<Toilet, int> {
  final MapRepository _repo;

  GetToiletByIdUseCase(this._repo);

  @override
  Future<Either<Failure, Toilet>> call(int params) {
    return _repo.getToiletByIdImpl(params);
  }
}
