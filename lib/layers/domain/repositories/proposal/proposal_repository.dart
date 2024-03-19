import 'package:dartz/dartz.dart';
import 'package:pookaboo/layers/domain/entities/toilet/create_toilet_params.dart';
import 'package:pookaboo/shared/error/failure.dart';

abstract class ProposalRepository {
  Future<Either<Failure, bool>> createToiletProposalImpl(
      CreateToiletParam params);
}
