import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:pookaboo/layers/data/datasources/toilet_remote_datasource.dart';
import 'package:pookaboo/layers/domain/entities/toilet/create_toilet_params.dart';
import 'package:pookaboo/layers/domain/repositories/proposal/proposal_repository.dart';
import 'package:pookaboo/shared/error/failure.dart';

class ProposalRepositoryImpl implements ProposalRepository {
  final ToiletRemoteDatasource toiletRemoteDatasource;

  const ProposalRepositoryImpl(this.toiletRemoteDatasource);

  @override
  Future<Either<Failure, bool>> createToiletProposalImpl(
      CreateToiletParam params) async {
    final response =
        await toiletRemoteDatasource.createToiletProposalDatasource(params);
    return response;
  }
}
