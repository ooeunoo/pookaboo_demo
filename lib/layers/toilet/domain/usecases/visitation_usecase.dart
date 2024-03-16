import 'package:dartz/dartz.dart';
import 'package:pookaboo/layers/toilet/data/models/toilet.dart';
import 'package:pookaboo/layers/toilet/data/models/visitation.dart';
import 'package:pookaboo/layers/toilet/domain/entities/create_review_params.dart';
import 'package:pookaboo/layers/toilet/domain/entities/create_visitation_params.dart';
import 'package:pookaboo/layers/toilet/domain/entities/get_nearby_toilets_params.dart';
import 'package:pookaboo/layers/toilet/domain/repositories/map_repository.dart';
import 'package:pookaboo/layers/toilet/domain/repositories/review_repository.dart';
import 'package:pookaboo/layers/toilet/domain/repositories/visitation_repository.dart';
import 'package:pookaboo/shared/error/failure.dart';
import 'package:pookaboo/shared/usecase/usecase.dart';

class CreateToiletVisitationUseCase
    extends UseCase<bool, CreateVisitationParams> {
  final VisitationRepository _repo;

  CreateToiletVisitationUseCase(this._repo);

  @override
  Future<Either<Failure, bool>> call(CreateVisitationParams params) {
    return _repo.createToiletVisitationImpl(params);
  }
}

class GetToiletVisitationsByUserIdUseCase
    extends UseCase<List<Visitation>, String> {
  final VisitationRepository _repo;

  GetToiletVisitationsByUserIdUseCase(this._repo);

  @override
  Future<Either<Failure, List<Visitation>>> call(String params) {
    return _repo.getToiletVisitationsByUserIdImpl(params);
  }
}
