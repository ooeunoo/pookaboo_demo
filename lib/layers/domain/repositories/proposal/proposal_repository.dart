import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:pookaboo/layers/data/models/review/review.dart';
import 'package:pookaboo/layers/domain/entities/review/create_review_params.dart';
import 'package:pookaboo/layers/domain/entities/toilet/create_toilet_params.dart';
import 'package:pookaboo/shared/error/failure.dart';

abstract class ProposalRepository {
  Future<Either<Failure, bool>> createToiletProposalImpl(
      CreateToiletParam params, List<File> images);
}
