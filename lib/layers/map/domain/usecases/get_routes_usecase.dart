import 'package:dartz/dartz.dart';
import 'package:kakao_map_plugin/kakao_map_plugin.dart';
import 'package:pookaboo/layers/map/data/models/coord.dart';
import 'package:pookaboo/layers/map/data/models/route.dart';
import 'package:pookaboo/layers/map/data/models/toilet.dart';
import 'package:pookaboo/layers/map/domain/entities/create_review_params.dart';
import 'package:pookaboo/layers/map/domain/entities/get_nearby_toilets_params.dart';
import 'package:pookaboo/layers/map/domain/repositories/map_repository.dart';
import 'package:pookaboo/shared/error/failure.dart';
import 'package:pookaboo/shared/usecase/usecase.dart';
import 'package:pookaboo/shared/utils/logging/log.dart';

class GetRoutesUseCase extends UseCase<GetRouteFormatResponse, GetRouteParams> {
  final MapRepository _repo;

  GetRoutesUseCase(this._repo);

  @override
  Future<Either<Failure, GetRouteFormatResponse>> call(GetRouteParams params) {
    return _repo.getRoutes(params);
  }
}
