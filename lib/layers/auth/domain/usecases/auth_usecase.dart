import 'package:pookaboo/layers/auth/domain/repositories/auth_repository.dart';
import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class AuthUseCase {
  final AuthRepository authRepository;

  AuthUseCase({required this.authRepository});

  Future<void> signInWithKakao() async {
    await authRepository.signInWithKakao();
  }

  Future<void> signInWithGoogle() async {
    await authRepository.signInWithGoogle();
  }

  Future<void> signInWithApple() async {
    await authRepository.signInWithApple();
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

  Stream<User?> getCurrentUser() {
    return authRepository.getCurrentUser();
  }

  User? getSignedInUser() {
    return authRepository.getSignedInUser();
  }

  String getAccessToken() {
    return authRepository.getAccessToken();
  }
}
