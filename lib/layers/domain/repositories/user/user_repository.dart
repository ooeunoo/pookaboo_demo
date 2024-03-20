import 'package:dartz/dartz.dart';
import 'package:pookaboo/layers/data/models/user/app_user.dart';
import 'package:pookaboo/layers/domain/entities/user/create_user_inquiry_params.dart';
import 'package:pookaboo/layers/domain/entities/user/update_user_params.dart';
import 'package:pookaboo/shared/constant/enum.dart';
import 'package:pookaboo/shared/error/failure.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

abstract class UserRepository {
  Future<bool> signInWithKakaoImpl();
  Future<void> signOutImpl();
  Stream<User?> getCurrentUserImpl();
  Future<AppUser?> getSignedInUserImpl();
  String getAccessTokenImpl();
  Future<Either<Failure, AppUser>> updateUserImpl(UpdateUserParams params);
  Future<Either<Failure, bool>> createUserInquiryImpl(
      CreateUserInquiryParams params);
  Future<Either<Failure, bool>> deleteUserImpl(String userId);
}
