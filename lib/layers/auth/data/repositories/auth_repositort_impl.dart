import 'package:google_sign_in/google_sign_in.dart';
import 'package:pookaboo/layers/auth/domain/repositories/auth_repository.dart';
import 'package:pookaboo/shared/services/supabase/supabase_service.dart';

import 'package:supabase_flutter/supabase_flutter.dart';

class AuthRepositoryImpl implements AuthRepository {
  final SupabaseService _supabaseService;

  AuthRepositoryImpl(this._supabaseService);

  @override
  Future<void> signInWithKakao() async {
    _supabaseService.signInWithOAuth(provider: OAuthProvider.kakao);
  }

  @override
  Future<void> signInWithGoogle() async {}

  @override
  Future<void> signInWithApple() async {}

  @override
  Future<void> signInWithEmailAndPassword(
      {required String email, required String password}) async {
    _supabaseService.signInWithEmailPassword(email: email, password: password);
  }

  @override
  Future<void> signUpWithEmailAndPassword(
      {required String email, required String password}) async {
    _supabaseService.signUpWithEmailPassword(email: email, password: password);
  }

  @override
  Future<void> signOut() async {
    await _supabaseService.signOut();
  }

  @override
  Stream<User?> getCurrentUser() {
    return _supabaseService.getCurrentUser();
  }

  @override
  User? getSignedInUser() {
    return _supabaseService.getSignedInUser();
  }

  @override
  String getAccessToken() {
    return _supabaseService.getAccessToken();
  }
}
