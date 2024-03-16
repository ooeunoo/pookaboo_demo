import 'package:flutter/foundation.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:kakao_flutter_sdk/kakao_flutter_sdk.dart' as kakao;
import 'package:pookaboo/layers/auth/domain/entities/update_user_params.dart';
import 'package:pookaboo/layers/auth/domain/repositories/auth_repository.dart';
import 'package:pookaboo/shared/constant/config.dart';
import 'package:pookaboo/shared/constant/enum.dart';
import 'package:pookaboo/shared/service/supabase/supabase_service.dart';
import 'package:pookaboo/shared/utils/logging/log.dart';

import 'package:supabase_flutter/supabase_flutter.dart';

class AuthRepositoryImpl implements AuthRepository {
  final SupabaseService _supabaseService;

  AuthRepositoryImpl(this._supabaseService);

  @override
  Future<bool> signInWithKakao() async {
    final bool response =
        await _supabaseService.client.auth.signInWithOAuth(OAuthProvider.kakao,
            authScreenLaunchMode: LaunchMode.externalApplication,
            // scopes: 'profile_nickname profile_image account_email gender',
            redirectTo: kIsWeb ? null : Config.get.supabaseLoginRedirectTo);

    return response;
  }

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
  Future<User?> updateUser(UpdateUserParams params) async {
    Map<String, dynamic> metadata = {}; // 사용자 데이터를 저장할 맵 생성

    // 인자 값이 있으면 맵에 추가
    if (params.nickname != null) {
      metadata['nickname'] = params.nickname;
    }
    if (params.phone != null) {
      metadata['phone'] = params.phone;
    }
    if (params.age != null) {
      metadata['age'] = params.age;
    }

    if (params.gender != null) {
      metadata['gender'] = params.gender!.name;
    }

    UserResponse response = await _supabaseService.client.auth.updateUser(
      UserAttributes(data: metadata),
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
