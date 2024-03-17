import 'package:pookaboo/layers/data/models/user/app_user.dart';
import 'package:pookaboo/layers/domain/entities/auth/update_user_params.dart';
import 'package:pookaboo/shared/constant/enum.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

abstract class AuthRepository {
  Future<bool> signInWithKakao();
  Future<void> signInWithEmailAndPassword(
      {required String email, required String password});
  Future<void> signUpWithEmailAndPassword(
      {required String email, required String password});
  Future<void> signOut();
  Stream<User?> getCurrentUser();
  Future<bool?> updateUser(UpdateUserParams params);
  Future<AppUser?> getSignedInUser();
  String getAccessToken();
}
