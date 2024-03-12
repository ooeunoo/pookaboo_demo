import 'package:dartz/dartz.dart';
import 'package:pookaboo/layers/map/data/models/toilet.dart';
import 'package:pookaboo/layers/map/domain/entities/create_review_params.dart';
import 'package:pookaboo/layers/map/domain/entities/get_nearby_toilets_params.dart';
import 'package:pookaboo/layers/map/domain/repositories/map_repository.dart';
import 'package:pookaboo/shared/error/failure.dart';
import 'package:pookaboo/shared/usecase/usecase.dart';

class CreateReviewUseCase extends UseCase<bool, CreateReviewParams> {
  final MapRepository _repo;

  CreateReviewUseCase(this._repo);

  @override
  Future<Either<Failure, bool>> call(CreateReviewParams params) {
    return _repo.createReviewImpl(params);
  }
}
