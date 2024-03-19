import 'package:dartz/dartz.dart';
import 'package:pookaboo/layers/data/models/user/app_user.dart';
import 'package:pookaboo/layers/domain/entities/review/create_review_params.dart';
import 'package:pookaboo/layers/domain/entities/user/create_user_inquiry_params.dart';
import 'package:pookaboo/layers/domain/entities/user/update_user_params.dart';
import 'package:pookaboo/layers/domain/repositories/user/user_repository.dart';
import 'package:injectable/injectable.dart';
import 'package:pookaboo/shared/constant/enum.dart';
import 'package:pookaboo/shared/error/failure.dart';
import 'package:pookaboo/shared/usecase/usecase.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class UserUseCase {
  final UserRepository _repo;

  UserUseCase(this._repo);

  Future<bool> signInWithKakao() async {
    return _repo.signInWithKakaoImpl();
  }

  Future<void> signOut() async {
    await _repo.signOutImpl();
  }

  Stream<User?> getCurrentUser() {
    return _repo.getCurrentUserImpl();
  }

  Future<AppUser?> getSignedInUser() async {
    return _repo.getSignedInUserImpl();
  }

  String getAccessToken() {
    return _repo.getAccessTokenImpl();
  }
}

class UpdateUserUseCase extends UseCase<bool, UpdateUserParams> {
  final UserRepository _repo;

  UpdateUserUseCase(this._repo);

  @override
  Future<Either<Failure, bool>> call(UpdateUserParams params) {
    return _repo.updateUserImpl(params);
  }
}

class CreateUserInquireUseCase extends UseCase<bool, CreateUserInquiryParams> {
  final UserRepository _repo;

  CreateUserInquireUseCase(this._repo);

  @override
  Future<Either<Failure, bool>> call(CreateUserInquiryParams params) {
    return _repo.createUserInquiryImpl(params);
  }
}
