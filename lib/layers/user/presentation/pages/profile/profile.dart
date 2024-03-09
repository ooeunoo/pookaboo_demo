import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:pookaboo/layers/auth/presentation/bloc/auth_bloc.dart';
import 'package:pookaboo/layers/user/presentation/pages/profile/widgets/signin_screen.dart';
import 'package:pookaboo/shared/localization/generated/message.dart';
import 'package:pookaboo/shared/router/app_routes.dart';
import 'package:pookaboo/shared/styles/dimens.dart';
import 'package:pookaboo/shared/styles/palette.dart';
import 'package:pookaboo/shared/utils/logging/log.dart';
import 'package:pookaboo/shared/widgets/app_button.dart';
import 'package:pookaboo/shared/widgets/app_divider.dart';
import 'package:pookaboo/shared/widgets/app_text.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  late List<Map<String, dynamic>> menu;

  @override
  void initState() {
    super.initState();
    menu = [
      {
        "section": "1",
        "title": "화장실 리뷰",
        "onTap": () {
          context.pushNamed(Routes.reviews.name);
        }
      },
      {
        "section": "2",
        "title": "내 정보 수정",
        "onTap": () {},
      },
      {
        "section": "2",
        "title": "로그아웃",
        "onTap": () {
          context
              .read<AuthBloc>()
              .add(const AuthEvent.authLogoutButtonPressed());
        },
      },
      {
        "section": "2",
        "title": "회원 탈퇴",
        "onTap": () {},
      },
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: false,
          titleSpacing: 0.0,
          title: Padding(
            padding: EdgeInsets.only(left: Dimens.space16),
            child: AppText(Messages.of(context)!.myPage,
                style: Theme.of(context).textTheme.bodyLarge!),
          ),
        ),
        body: BlocBuilder<AuthBloc, AuthState>(
          builder: (context, state) => state.maybeWhen(
            authUserUnauthenticated: () {
              // 사용자가 인증되어 있지 않은 경우
              return const SignInScreen(); // 로그인 위젯 반환
            },
            orElse: () {
              return ListView.separated(
                itemCount: menu.length,
                separatorBuilder: (context, index) {
                  // 현재 아이템과 다음 아이템의 "section" 값이 다를 때 Divider를 추가
                  if (index < menu.length - 1 &&
                      menu[index]["section"] != menu[index + 1]["section"]) {
                    return const AppDivider();
                  } else {
                    return const SizedBox(); // section 간격을 없애기 위해 빈 SizedBox 반환
                  }
                },
                itemBuilder: (context, index) {
                  final item = menu[index];
                  return ListTile(
                    title: AppText(
                      item['title'],
                      style: Theme.of(context).textTheme.bodySmall!,
                    ),
                    onTap: item['onTap'],
                  );
                },
              );
            },
          ),
        ));
  }
}
