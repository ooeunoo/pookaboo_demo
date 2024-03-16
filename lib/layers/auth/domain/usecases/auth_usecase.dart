import 'package:pookaboo/layers/auth/data/models/app_user.dart';
import 'package:pookaboo/layers/auth/domain/entities/update_user_params.dart';
import 'package:pookaboo/layers/auth/domain/repositories/auth_repository.dart';
import 'package:injectable/injectable.dart';
import 'package:pookaboo/shared/constant/enum.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class AuthUseCase {
  final AuthRepository authRepository;

  AuthUseCase(this.authRepository);

  Future<bool> signInWithKakao() async {
    return authRepository.signInWithKakao();
  }

  Future<void> signInWithEmailAndPassword(
      {required String email, required String password}) async {
    await authRepository.signInWithEmailAndPassword(
        email: email, password: password);
  }

  Future<void> signUpWithEmailAndPassword(
      {required String email, required String password}) async {
    await authRepository.signUpWithEmailAndPassword(
        email: email, password: password);
  }

  Future<void> signOut() async {
    await authRepository.signOut();
  }

  Future<User?> updateUser(UpdateUserParams params) async {
    await authRepository.updateUser(params);
    return null;
  }

  Stream<AppUser?> getCurrentUser() {
    return authRepository.getCurrentUser();
  }

  AppUser? getSignedInUser() {
    return authRepository.getSignedInUser();
  }

  String getAccessToken() {
    return authRepository.getAccessToken();
  }
}
