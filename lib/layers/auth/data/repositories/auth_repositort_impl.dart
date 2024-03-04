import 'package:pookaboo/layers/auth/domain/repositories/auth_repository.dart';

import 'package:supabase_flutter/supabase_flutter.dart';

class AuthRepositoryImpl implements AuthRepository {
  final GoTrueClient _supabaseAuth;

  AuthRepositoryImpl(this._supabaseAuth);

  @override
  Future<void> signInWithEmailAndPassword(
      {required String email, required String password}) async {
    await _supabaseAuth.signInWithPassword(email: email, password: password);
  }

  @override
  Future<void> signUpWithEmailAndPassword(
      {required String email, required String password}) async {
    await _supabaseAuth.signUp(email: email, password: password);
  }

  @override
  Future<void> signInWithApple() async {}

  @override
  Future<void> signOut() async => await _supabaseAuth.signOut();

  @override
  Stream<User?> getCurrentUser() =>
      _supabaseAuth.onAuthStateChange.map((event) => event.session?.user);

  @override
  User? getSignedInUser() => _supabaseAuth.currentUser;

  @override
  String getAccessToken() => _supabaseAuth.currentSession?.accessToken ?? '';
}
