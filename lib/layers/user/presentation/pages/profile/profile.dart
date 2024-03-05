import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pookaboo/layers/auth/presentation/bloc/auth_bloc.dart';
import 'package:pookaboo/layers/user/presentation/widgets/signin_screen.dart';
import 'package:pookaboo/shared/utils/logging/log.dart';
import 'package:pookaboo/shared/widgets/app_button.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  void _signOut() {
    context.read<AuthBloc>().add(const AuthEvent.authLogoutButtonPressed());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) => state.maybeWhen(
        authUserUnauthenticated: () {
          // 사용자가 인증되어 있지 않은 경우
          return const SignInScreen(); // 로그인 위젯 반환
        },
        orElse: () {
          log.d('아직 로그인 되지않음');
          return Center(child: AppButton(title: "로그아웃", onPressed: _signOut));
        },
      ),
    );
  }
}
