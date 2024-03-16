import 'package:dartz/dartz.dart';
import 'package:kakao_map_plugin/kakao_map_plugin.dart';
import 'package:pookaboo/layers/toilet/data/datasources/kakao_remote_datasource.dart';
import 'package:pookaboo/layers/toilet/data/datasources/toilet_remote_datasource.dart';
import 'package:pookaboo/layers/toilet/data/models/coord.dart';
import 'package:pookaboo/layers/toilet/data/models/review.dart';
import 'package:pookaboo/layers/toilet/data/models/route.dart';
import 'package:pookaboo/layers/toilet/data/models/toilet.dart';
import 'package:pookaboo/layers/toilet/domain/entities/create_review_params.dart';
import 'package:pookaboo/layers/toilet/domain/entities/get_nearby_toilets_params.dart';
import 'package:pookaboo/layers/toilet/domain/repositories/map_repository.dart';
import 'package:pookaboo/layers/toilet/domain/repositories/review_repository.dart';
import 'package:pookaboo/shared/error/failure.dart';
import 'package:pookaboo/shared/utils/logging/log.dart';

class ReviewRepositoryImpl implements ReviewRepository {
  final ToiletRemoteDatasource toiletRemoteDatasource;

  const ReviewRepositoryImpl(this.toiletRemoteDatasource);

  @override
  Future<Either<Failure, bool>> createToiletReviewImpl(
      CreateReviewParams params) async {
    final response =
        await toiletRemoteDatasource.createToiletReviewDatasource(params);
    return response;
  }

  @override
  Future<Either<Failure, List<Review>>> getToiletReviewsByToiletIdImpl(
      String toiletId) async {
    final response = await toiletRemoteDatasource
        .getToiletReviewsByToiletIdDatasource(toiletId);
    return response;
  }

  @override
  Future<Either<Failure, List<Review>>> getToiletReviewsByUserIdImpl(
      String userId) async {
    final response =
        await toiletRemoteDatasource.getToiletReviewsByUserIdDatasource(userId);
    return response;
  }
}
