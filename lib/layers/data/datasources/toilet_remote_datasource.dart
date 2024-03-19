import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:pookaboo/layers/data/models/review/review.dart';
import 'package:pookaboo/layers/data/models/toilet/toilet.dart';
import 'package:pookaboo/layers/data/models/visitation/visitation.dart';
import 'package:pookaboo/layers/domain/entities/review/create_review_params.dart';
import 'package:pookaboo/layers/domain/entities/toilet/create_toilet_params.dart';
import 'package:pookaboo/layers/domain/entities/visitation/create_visitation_params.dart';
import 'package:pookaboo/layers/domain/entities/toilet/get_nearby_toilets_params.dart';
import 'package:pookaboo/shared/error/failure.dart';
import 'package:pookaboo/shared/service/supabase/supabase_service.dart';
import 'package:pookaboo/shared/utils/logging/log.dart';

enum ToiletStorage {
  image('toilet_images'),
  proposal('toilet_proposal_images');

  const ToiletStorage(this.name);
  final String name;
}

enum ToiletTable {
  toilet('toilet'),
  convenience('toilet_convenience'),
  equipment('toilet_equipment'),
  proposal('toilet_proposal'),
  rating('toilet_rating'),
  review('toilet_review'),
  time('toilet_time'),
  visitation('toilet_visitation'),
  ;

  const ToiletTable(this.name);
  final String name;
}

enum ToiletFunction {
  get_nearby_toilets('get_nearby_toilets'),
  get_toilet('get_toilet'),
  ;

  const ToiletFunction(this.name);
  final String name;
}

abstract class ToiletRemoteDatasource {
  Future<Either<Failure, List<Toilet>>> getNearByToiletsDatasource(
      GetNearByToiletsParams params);

  Future<Either<Failure, Toilet>> getToiletByIdDatasource(int id);

  Future<Either<Failure, List<Review>>> getToiletReviewsByToiletIdDatasource(
      int toiletId);
  Future<Either<Failure, List<Review>>> getToiletReviewsByUserIdDatasource(
      String userId);
  Future<Either<Failure, bool>> deleteToiletReviewsByReviewIdDatasource(
      int reviewId);

  Future<Either<Failure, bool>> createToiletReviewDatasource(
      CreateReviewParams params);

  Future<Either<Failure, bool>> createToiletVisitationDatasource(
      CreateVisitationParams params);

  Future<Either<Failure, List<Visitation>>>
      getToiletVisitationsByUserIdDatasource(String userId);

  Future<Either<Failure, bool>> createToiletProposalDatasource(
    CreateToiletParam params,
  );
}

class ToiletRemoteDatasourceImpl implements ToiletRemoteDatasource {
  final SupabaseService _supabaseService;

  ToiletRemoteDatasourceImpl(this._supabaseService);

  @override
  Future<Either<Failure, List<Toilet>>> getNearByToiletsDatasource(
      GetNearByToiletsParams params) async {
    try {
      final List<Map<String, dynamic>> data = await _supabaseService.client
          .rpc(ToiletFunction.get_nearby_toilets.name, params: {
        'min_lat': params.bounds.sw.latitude,
        'min_long': params.bounds.sw.longitude,
        'max_lat': params.bounds.ne.latitude,
        'max_long': params.bounds.ne.longitude,
        'gender_filter': params.genderFilter,
        'password_filter': params.passwordFilter,
        'time_filter': params.timeFilter,
      });

      final List<Toilet> toilets =
          data.map((json) => Toilet.fromJson(json)).toList();
      return Right(toilets);
    } catch (e) {
      log.e(e);
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, Toilet>> getToiletByIdDatasource(int id) async {
    try {
      final List<Map<String, dynamic>> data = await _supabaseService.client
          .rpc(ToiletFunction.get_toilet.name, params: {'t_id': id});

      final List<Toilet> toilet = data
          .map((json) => Toilet.fromJson(json['json_build_object']))
          .toList();

      return Right(toilet[0]);
    } catch (e) {
      log.e(e);
      return Left(ServerFailure(e.toString()));
    }
  }

  ///////////////////////////////////////////////
  /// VISITATION
  ///////////////////////////////////////////////
  @override
  Future<Either<Failure, bool>> createToiletVisitationDatasource(
      CreateVisitationParams params) async {
    try {
      await _supabaseService.client
          .from(ToiletTable.visitation.name)
          .insert(params.toJson());
      return const Right(true);
    } catch (e) {
      log.e(e);
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<Visitation>>>
      getToiletVisitationsByUserIdDatasource(String userId) async {
    try {
      final List<Map<String, dynamic>> data = await _supabaseService.client
          .from(ToiletTable.visitation.name)
          .select('*, toilet(*)')
          .eq('user_id', userId)
          .order('created_at', ascending: false);
      final List<Visitation> visitations =
          data.map((json) => Visitation.fromJson(json)).toList();
      return Right(visitations);
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  ///////////////////////////////////////////////
  /// REVIEW
  ///////////////////////////////////////////////
  @override
  Future<Either<Failure, bool>> createToiletReviewDatasource(
      CreateReviewParams params) async {
    try {
      await _supabaseService.client
          .from(ToiletTable.visitation.name)
          .update({'reviewed': true}).match({'id': params.visitationId});

      // 리뷰 작성
      await _supabaseService.client.from(ToiletTable.review.name).insert({
        'toilet_id': params.toiletId,
        'user_id': params.userId,
        'safety': params.safety,
        'cleanliness': params.cleanliness,
        'convenience': params.convenience,
        'management': params.management,
        "comment": params.comment
      });

      // 화장실 평점 조회
      final prevRating = await _supabaseService.client
          .from(ToiletTable.rating.name)
          .select('cleanliness, safety, management, convenience')
          .eq("toilet_id", params.toiletId)
          .single();

      // 화장실 평점 재계산
      Rating prev = Rating.fromJson(prevRating);
      Rating cur = Rating(
        cleanliness: params.cleanliness,
        safety: params.safety,
        convenience: params.convenience,
        management: params.management,
      );
      Rating newRating = Rating.recalculrate(prev, cur);

      // 화장실 평점 업데이트
      await _supabaseService.client.from(ToiletTable.rating.name).update({
        'cleanliness': newRating.cleanliness,
        'safety': newRating.safety,
        'convenience': newRating.convenience,
        'management': newRating.management
      }).match({'toilet_id': params.toiletId});

      return const Right(true);
    } catch (e) {
      log.e(e);
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<Review>>> getToiletReviewsByToiletIdDatasource(
      int toiletId) async {
    try {
      final List<Map<String, dynamic>> data = await _supabaseService.client
          .from(ToiletTable.review.name)
          .select('*, user(*)')
          .eq('toilet_id', toiletId)
          .order('created_at', ascending: false);

      final List<Review> reviews =
          data.map((json) => Review.fromJson(json)).toList();

      return Right(reviews);
    } catch (e) {
      log.e(e);
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<Review>>> getToiletReviewsByUserIdDatasource(
      String userId) async {
    try {
      final List<Map<String, dynamic>> data = await _supabaseService.client
          .from(ToiletTable.review.name)
          .select('*, toilet(*), user(*)')
          .eq('user_id', userId)
          .order('created_at', ascending: false);
      final List<Review> reviews =
          data.map((json) => Review.fromJson(json)).toList();
      return Right(reviews);
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, bool>> deleteToiletReviewsByReviewIdDatasource(
      int reviewId) async {
    try {
      await _supabaseService.client
          .from(ToiletTable.review.name)
          .delete()
          .match({'id': reviewId});
      return const Right(true);
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, bool>> createToiletProposalDatasource(
    CreateToiletParam params,
  ) async {
    try {
      final data = await _supabaseService.client
          .from(ToiletTable.proposal.name)
          .insert(params)
          .select();

      // await _supabaseService.client.storage.from(ToiletStorage.proposal.name).

      return const Right(true);
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }
}
