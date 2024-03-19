import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:pookaboo/layers/data/models/review/review.dart';
import 'package:pookaboo/layers/data/models/toilet/toilet.dart';
import 'package:pookaboo/layers/domain/entities/review/create_review_params.dart';
import 'package:pookaboo/layers/domain/entities/toilet/create_toilet_params.dart';
import 'package:pookaboo/layers/domain/entities/toilet/get_nearby_toilets_params.dart';
import 'package:pookaboo/layers/domain/repositories/map/map_repository.dart';
import 'package:pookaboo/layers/domain/repositories/proposal/proposal_repository.dart';
import 'package:pookaboo/layers/domain/repositories/review/review_repository.dart';
import 'package:pookaboo/shared/error/failure.dart';
import 'package:pookaboo/shared/usecase/usecase.dart';

class CreateToiletProposalUseCase
    extends UseCase2<bool, CreateToiletParam, List<File>> {
  final ProposalRepository _repo;

  CreateToiletProposalUseCase(this._repo);

  @override
  Future<Either<Failure, bool>> call(
      CreateToiletParam params, List<File> params2) {
    return _repo.createToiletProposalImpl(params, params2);
  }
}
