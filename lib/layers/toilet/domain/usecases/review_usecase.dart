import 'package:dartz/dartz.dart';
import 'package:pookaboo/layers/toilet/data/models/review.dart';
import 'package:pookaboo/layers/toilet/data/models/toilet.dart';
import 'package:pookaboo/layers/toilet/domain/entities/create_review_params.dart';
import 'package:pookaboo/layers/toilet/domain/entities/get_nearby_toilets_params.dart';
import 'package:pookaboo/layers/toilet/domain/repositories/map_repository.dart';
import 'package:pookaboo/layers/toilet/domain/repositories/review_repository.dart';
import 'package:pookaboo/shared/error/failure.dart';
import 'package:pookaboo/shared/usecase/usecase.dart';

class CreateToiletReviewUseCase extends UseCase<bool, CreateReviewParams> {
  final ReviewRepository _repo;

  CreateToiletReviewUseCase(this._repo);

  @override
  Future<Either<Failure, bool>> call(CreateReviewParams params) {
    return _repo.createToiletReviewImpl(params);
  }
}

class GetToiletReviewsByUserIdUseCase extends UseCase<List<Review>, String> {
  final ReviewRepository _repo;

  GetToiletReviewsByUserIdUseCase(this._repo);

  @override
  Future<Either<Failure, List<Review>>> call(String params) {
    return _repo.getToiletReviewsByUserIdImpl(params);
  }
}

class GetToiletReviewsByToiletIdUseCase extends UseCase<List<Review>, String> {
  final ReviewRepository _repo;

  GetToiletReviewsByToiletIdUseCase(this._repo);

  @override
  Future<Either<Failure, List<Review>>> call(String params) {
    return _repo.getToiletReviewsByToiletIdImpl(params);
  }
}
