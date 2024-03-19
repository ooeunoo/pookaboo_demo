import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:pookaboo/layers/presentation/bloc/auth/auth_bloc.dart';
import 'package:pookaboo/layers/domain/entities/profile/menu_item.dart';
import 'package:pookaboo/layers/presentation/bloc/profile/profile_bloc.dart';
import 'package:pookaboo/layers/presentation/pages/profile/widgets/login_screen.dart';
import 'package:pookaboo/shared/localization/generated/message.dart';
import 'package:pookaboo/shared/router/app_routes.dart';
import 'package:pookaboo/shared/router/extra_params.dart';
import 'package:pookaboo/shared/styles/dimens.dart';
import 'package:pookaboo/shared/widgets/common/app_divider.dart';
import 'package:pookaboo/shared/widgets/common/app_text.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  late List<MenuItem> menu = [];

  @override
  void initState() {
    super.initState();

    AuthState state = context.read<AuthBloc>().state;
    if (state is AuthenticatedState) {
      _generateMenu(state.user.id);
    }
  }

  void _generateMenu(String userId) {
    ExtraParams extra = ExtraParams(userId: userId);

    menu = [
      MenuItem(
          section: 1,
          title: '신규 화장실 등록하기',
          onTap: () {
            context.push(AppRoutes.toilet_proposal.path, extra: extra);
          }),
      MenuItem(
          section: 2,
          title: '최근에 방문한 화장실',
          onTap: () {
            context.push(AppRoutes.visitation.path, extra: extra);
          }),
      MenuItem(
          section: 2,
          title: '나의 리뷰',
          onTap: () {
            context.push(AppRoutes.reviews.path, extra: extra);
          }),
      MenuItem(section: 3, title: '내 정보 수정', onTap: () {}),
      MenuItem(
          section: 3,
          title: '로그아웃',
          onTap: () {
            context.read<AuthBloc>().add(LogoutEvent());
          }),
      MenuItem(section: 3, title: '회원 탈퇴', onTap: () {}),
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
        body: BlocConsumer<AuthBloc, AuthState>(
          listener: (context, state) {
            if (state is AuthenticatedState) {
              _generateMenu(state.user.id);
            }
          },
          builder: (context, state) {
            if (state is AuthenticatedState) {
              return BlocListener<ProfileBloc, ProfileState>(
                  listener: (context, state) {},
                  child: ListView.separated(
                    itemCount: menu.isEmpty ? 0 : menu.length,
                    separatorBuilder: (context, index) {
                      // 현재 아이템과 다음 아이템의 "section" 값이 다를 때 Divider를 추가
                      if (index < menu.length - 1 &&
                          menu[index].section != menu[index + 1].section) {
                        return const AppDivider();
                      } else {
                        return const SizedBox(); // section 간격을 없애기 위해 빈 SizedBox 반환
                      }
                    },
                    itemBuilder: (context, index) {
                      final item = menu[index];
                      return ListTile(
                        title: AppText(
                          item.title,
                          style: Theme.of(context).textTheme.bodySmall!,
                        ),
                        onTap: item.onTap,
                      );
                    },
                  ));
            } else {
              return const LogInScreen();
            }
          },
        ));
  }
}
