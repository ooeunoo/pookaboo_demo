// import 'package:dartz/dartz.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:pookaboo/layers/map/domain/repositories/map_repository.dart';
// import 'package:pookaboo/shared/error/failure.dart';
// import 'package:pookaboo/shared/usecase/usecase.dart';

// part 'get_toilets_in_map.freezed.dart';

// class GetToiletsInMap extends UseCase<dynamic, GetToiletsInMap> {
//   final MapRepository _repo;

//   GetToiletsInMap(this._repo);

//   @override
//   Future<Either<Failure, dynamic>> call(GetToiletsInMap params) =>
//       _repo.getNearByToilets(params);
// }

// @freezed
// class GetToiletsInMapParams with _$GetToiletsInMapParams {
//   const factory GetToiletsInMapParams({
//     @Default(0) double min_lat,
//     @Default(0) double max_lat,
//     @Default(0) double min_lon,
//     @Default(0) double max_lon,
//   }) = _GetToiletsInMapParams;

//   factory GetToiletsInMapParams.fromJson(Map<String, dynamic> json) =>
//       _$GetToiletsInMapParams(json);
// }
