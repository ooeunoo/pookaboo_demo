import 'package:google_sign_in/google_sign_in.dart';
import 'package:pookaboo/layers/auth/domain/repositories/auth_repository.dart';
import 'package:pookaboo/shared/constant/enum.dart';
import 'package:pookaboo/shared/services/supabase/supabase_service.dart';
import 'package:pookaboo/shared/utils/logging/log.dart';

import 'package:supabase_flutter/supabase_flutter.dart';

class AuthRepositoryImpl implements AuthRepository {
  final SupabaseService _supabaseService;

  AuthRepositoryImpl(this._supabaseService);

  @override
  Future<void> signInWithKakao() async {
    _supabaseService.client.auth.signInWithOAuth(OAuthProvider.kakao,
        redirectTo: 'io.supabase.flutterquickstart://login-callback/');
  }

  @override
  Future<void> signInWithGoogle() async {}

  @override
  Future<void> signInWithApple() async {}

  @override
  Future<void> signInWithEmailAndPassword(
      {required String email, required String password}) async {
    _supabaseService.client.auth
        .signInWithPassword(email: email, password: password);
  }

  @override
  Future<void> signUpWithEmailAndPassword(
      {required String email, required String password}) async {
    _supabaseService.client.auth.signUp(email: email, password: password);
  }

  @override
  Future<void> signOut() async {
    await _supabaseService.client.auth.signOut();
  }

  @override
  Future<User?> updateUser(
      {String? nickname, String? phone, Gender? gender}) async {
    Map<String, dynamic> metadata = {}; // 사용자 데이터를 저장할 맵 생성

    // 인자 값이 있으면 맵에 추가
    if (nickname != null) {
      metadata['nickname'] = nickname;
    }
    if (phone != null) {
      metadata['phone'] = phone;
    }
    if (gender != null) {
      metadata['gender'] = gender;
    }

    UserResponse response = await _supabaseService.client.auth.updateUser(
      UserAttributes(phone: phone, data: metadata),
    );
    return response.user;
  }

  @override
  Stream<User?> getCurrentUser() {
    return _supabaseService.client.auth.onAuthStateChange.map((event) {
      return event.session?.user;
    });
  }

  @override
  User? getSignedInUser() {
    return _supabaseService.client.auth.currentUser;
  }

  @override
  String getAccessToken() {
    return _supabaseService.client.auth.currentSession?.accessToken ?? "";
  }
}
