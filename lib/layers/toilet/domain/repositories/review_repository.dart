import 'package:dartz/dartz.dart';
import 'package:kakao_map_plugin/kakao_map_plugin.dart';
import 'package:pookaboo/layers/toilet/data/models/coord.dart';
import 'package:pookaboo/layers/toilet/data/models/review.dart';
import 'package:pookaboo/layers/toilet/data/models/route.dart';
import 'package:pookaboo/layers/toilet/data/models/toilet.dart';
import 'package:pookaboo/layers/toilet/domain/entities/create_review_params.dart';
import 'package:pookaboo/layers/toilet/domain/entities/get_nearby_toilets_params.dart';
import 'package:pookaboo/shared/error/failure.dart';

abstract class ReviewRepository {
  Future<Either<Failure, bool>> createToiletReviewImpl(
      CreateReviewParams params);

  Future<Either<Failure, List<Review>>> getToiletReviewsByToiletIdImpl(
      String toiletId);

  Future<Either<Failure, List<Review>>> getToiletReviewsByUserIdImpl(
      String userId);
}
