import 'package:dartz/dartz.dart';
import 'package:pookaboo/layers/toilet/data/models/review.dart';
import 'package:pookaboo/layers/toilet/data/models/toilet.dart';
import 'package:pookaboo/layers/toilet/data/models/visitation.dart';
import 'package:pookaboo/layers/toilet/domain/entities/create_review_params.dart';
import 'package:pookaboo/layers/toilet/domain/entities/create_visitation_params.dart';
import 'package:pookaboo/layers/toilet/domain/entities/get_nearby_toilets_params.dart';
import 'package:pookaboo/shared/error/failure.dart';
import 'package:pookaboo/shared/service/supabase/supabase_service.dart';
import 'package:pookaboo/shared/utils/logging/log.dart';

abstract class ToiletRemoteDatasource {
  Future<Either<Failure, List<Toilet>>> getNearByToiletsDatasource(
      GetNearByToiletsParams params);

  Future<Either<Failure, Toilet>> getToiletByIdDatasource(int id);

  Future<Either<Failure, List<Review>>> getToiletReviewsByToiletIdDatasource(
      String toiletId);
  Future<Either<Failure, List<Review>>> getToiletReviewsByUserIdDatasource(
      String userId);

  Future<Either<Failure, bool>> createToiletReviewDatasource(
      CreateReviewParams params);

  Future<Either<Failure, bool>> createToiletVisitationDatasource(
      CreateVisitationParams params);

  Future<Either<Failure, List<Visitation>>>
      getToiletVisitationsByUserIdDatasource(String userId);
}

class ToiletRemoteDatasourceImpl implements ToiletRemoteDatasource {
  final SupabaseService _supabaseService;

  ToiletRemoteDatasourceImpl(this._supabaseService);

  @override
  Future<Either<Failure, List<Toilet>>> getNearByToiletsDatasource(
      GetNearByToiletsParams params) async {
    try {
      final List<Map<String, dynamic>> data =
          await _supabaseService.client.rpc('get_nearby_toilets', params: {
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
      final List<Map<String, dynamic>> data =
          await _supabaseService.client.rpc('get_toilet', params: {'t_id': id});

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
          .from('toilet_visitation')
          .insert({'toilet_id': params.toiletId, 'user_id': params.userId});
      return const Right(true);
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<Visitation>>>
      getToiletVisitationsByUserIdDatasource(String userId) async {
    try {
      final List<Map<String, dynamic>> data = await _supabaseService.client
          .from('toilet_visitation')
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
      await _supabaseService.client.from('toilet_review').insert({
        'toilet_id': params.toiletId,
        'user_id': params.userId,
        'safety': params.safety,
        'cleanliness': params.cleanliness,
        'convenience': params.convenience,
        'management': params.management,
        "comment": params.comment
      });
      return const Right(true);
    } catch (e) {
      log.e(e);
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<Review>>> getToiletReviewsByToiletIdDatasource(
      String toiletId) async {
    try {
      final List<Map<String, dynamic>> data = await _supabaseService.client
          .from('toilet_review')
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
          .from('toilet_review')
          .select('*, toilet(*)')
          .eq('user_id', userId)
          .order('created_at', ascending: false);
      final List<Review> reviews =
          data.map((json) => Review.fromJson(json)).toList();
      return Right(reviews);
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }
}
