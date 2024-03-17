import 'package:dartz/dartz.dart';
import 'package:kakao_map_plugin/kakao_map_plugin.dart';
import 'package:pookaboo/layers/data/datasources/kakao_remote_datasource.dart';
import 'package:pookaboo/layers/data/datasources/toilet_remote_datasource.dart';
import 'package:pookaboo/layers/data/models/coord/coord.dart';
import 'package:pookaboo/layers/data/models/route/route.dart';
import 'package:pookaboo/layers/data/models/toilet/toilet.dart';
import 'package:pookaboo/layers/data/models/visitation/visitation.dart';
import 'package:pookaboo/layers/domain/entities/review/create_review_params.dart';
import 'package:pookaboo/layers/domain/entities/visitation/create_visitation_params.dart';
import 'package:pookaboo/layers/domain/entities/toilet/get_nearby_toilets_params.dart';
import 'package:pookaboo/layers/domain/repositories/map/map_repository.dart';
import 'package:pookaboo/layers/domain/repositories/review/review_repository.dart';
import 'package:pookaboo/layers/domain/repositories/visitation/visitation_repository.dart';
import 'package:pookaboo/shared/error/failure.dart';
import 'package:pookaboo/shared/utils/logging/log.dart';

class VisitationRepositoryImpl implements VisitationRepository {
  final ToiletRemoteDatasource toiletRemoteDatasource;

  const VisitationRepositoryImpl(this.toiletRemoteDatasource);

  @override
  Future<Either<Failure, bool>> createToiletVisitationImpl(
      CreateVisitationParams params) async {
    final response =
        await toiletRemoteDatasource.createToiletVisitationDatasource(params);
    return response;
  }

  @override
  Future<Either<Failure, List<Visitation>>> getToiletVisitationsByUserIdImpl(
      String userId) async {
    final response = await toiletRemoteDatasource
        .getToiletVisitationsByUserIdDatasource(userId);
    return response;
  }
}
