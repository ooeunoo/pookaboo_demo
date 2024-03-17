import 'package:dartz/dartz.dart';
import 'package:pookaboo/layers/data/models/review/review.dart';
import 'package:pookaboo/layers/domain/entities/review/create_review_params.dart';
import 'package:pookaboo/shared/error/failure.dart';

abstract class ReviewRepository {
  Future<Either<Failure, bool>> createToiletReviewImpl(
      CreateReviewParams params);

  Future<Either<Failure, List<Review>>> getToiletReviewsByToiletIdImpl(
      int toiletId);

  Future<Either<Failure, List<Review>>> getToiletReviewsByUserIdImpl(
      String userId);

  Future<Either<Failure, bool>> deleteToiletReviewsByReviewIdImpl(int reviewId);
}
