import 'package:dartz/dartz.dart';
import 'package:pookaboo/shared/error/failure.dart';

abstract class UseCase<Type, Params> {
  Future<Either<Failure, Type>> call(Params params);
}

abstract class UseCase2<Type, Params, Params2> {
  Future<Either<Failure, Type>> call(Params params, Params2 params2);
}

abstract class NoFailureUseCase<Type, Params> {
  Future<Type> call(Params params);
}

/// Class to handle when useCase don't need params
class NoParams {}
