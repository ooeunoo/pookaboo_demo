import 'package:dartz/dartz.dart';
import 'package:kakao_map_plugin/kakao_map_plugin.dart';
import 'package:pookaboo/layers/toilet/data/datasources/kakao_remote_datasource.dart';
import 'package:pookaboo/layers/toilet/data/datasources/toilet_remote_datasource.dart';
import 'package:pookaboo/layers/toilet/data/models/coord.dart';
import 'package:pookaboo/layers/toilet/data/models/route.dart';
import 'package:pookaboo/layers/toilet/data/models/toilet.dart';
import 'package:pookaboo/layers/toilet/domain/entities/create_review_params.dart';
import 'package:pookaboo/layers/toilet/domain/entities/create_visitation_params.dart';
import 'package:pookaboo/layers/toilet/domain/entities/get_nearby_toilets_params.dart';
import 'package:pookaboo/layers/toilet/domain/repositories/map_repository.dart';
import 'package:pookaboo/layers/toilet/domain/repositories/review_repository.dart';
import 'package:pookaboo/layers/toilet/domain/repositories/visitation_repository.dart';
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
}
