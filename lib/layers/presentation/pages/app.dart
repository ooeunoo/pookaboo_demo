import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:pookaboo/injection.dart';
import 'package:pookaboo/layers/presentation/bloc/user/user_bloc.dart';
import 'package:pookaboo/layers/presentation/cubit/app/app_cubit.dart';
import 'package:pookaboo/layers/presentation/pages/widgets/update_user_data_bottom_sheet.dart';
import 'package:pookaboo/layers/presentation/pages/widgets/navigation_bar_item_widget.dart';
import 'package:pookaboo/shared/extension/context.dart';
import 'package:pookaboo/shared/router/app_routes.dart';
import 'package:pookaboo/shared/service/storage/secure_storage.dart';
import 'package:pookaboo/shared/styles/dimens.dart';
import 'package:pookaboo/shared/styles/palette.dart';
import 'package:pookaboo/shared/utils/helper/vibration_helper.dart';
import 'package:pookaboo/shared/utils/logging/log.dart';
import 'package:pookaboo/shared/widgets/common/app_snak_bar.dart';
import 'package:pookaboo/shared/widgets/common/app_text.dart';

class AppPage extends StatefulWidget {
  final Widget screen;

  const AppPage({super.key, required this.screen});

  @override
  State<AppPage> createState() => _AppPageState();
}

class _AppPageState extends State<AppPage> {
  late bool checked = false;
  final SecureStorage _secureStorage = sl<SecureStorage>();

  @override
  void initState() {
    super.initState();
    _checkUpdateVersion1();
  }

  @override
  void didUpdateWidget(AppPage oldWidget) {
    super.didUpdateWidget(oldWidget);
    _checkUpdateVersion1();
  }

  void _checkUpdateVersion1() async {
    if (!checked) {
      UserState state = context.read<UserBloc>().state;
      if (state is AuthenticatedState) {
        bool required = await _secureStorage.requiredUpdateVersion1();
        if (required) {
          _showUpdateUserMetadataBottomSheet();
        }
        setState(() {
          checked = true;
        });
      }
    }
  }

  void _showUpdateUserMetadataBottomSheet() {
    showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        isDismissible: false,
        useRootNavigator: true,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(Dimens.space20),
                topRight: Radius.circular(Dimens.space20))),
        builder: (context) {
          return Padding(
              padding: MediaQuery.of(context).viewInsets,
              child: const Wrap(
                children: [
                  UpdateUserDataBottomSheet(),
                ],
              ));
        }).whenComplete(() {
      context.showSnackBar(
        AppSnackBar(
            context,
            height: Dimens.space12,
            AppText('정보를 수정했어요.',
                style: Theme.of(context).textTheme.bodySmall!)),
      );
      context.showSnackBar(
        AppSnackBar(
            context,
            height: Dimens.space12,
            Row(
              children: [
                AppText('마이페이지 -> 내 정보 수정',
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        color: Palette.lemon03,
                        fontWeight: FontWeight.bold,
                        fontSize: Dimens.labelMedium)),
                AppText('에서 바꿀 수 있어요.',
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall!
                        .copyWith(fontSize: Dimens.labelMedium)),
              ],
            )),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppCubit, AppState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: Palette.coolGrey12,
          resizeToAvoidBottomInset: false,
          body: widget.screen,
          bottomNavigationBar: buildBottomNavigation(context, state),
        );
      },
    );
  }

  Widget buildBottomNavigation(BuildContext context, AppState state) {
    final tabs = [
      NavigationBarItemWidget(
        path: AppRoutes.map.path,
        icon: const Icon(Icons.search),
        label: 'Home',
      ),
      NavigationBarItemWidget(
        path: AppRoutes.profile.path,
        icon: const Icon(Icons.person),
        label: 'Profile',
      ),
    ];

    return Visibility(
        visible: state.visible,
        child: Container(
          decoration: const BoxDecoration(
              color: Palette.coolGrey08,
              border: Border(
                  top: BorderSide(color: Palette.coolGrey08, width: 1.0))),
          child: BottomNavigationBar(
            onTap: (value) async {
              onHeavyVibration();

              if (value != state.index) {
                context.read<AppCubit>().changeBottomNavigation(value);
                context.go(tabs[value].path);
                // 흠. 바텀시트가 열려있을때 닫고 다른 페이지로 이동하기 위한 코드. 동작 이해 아직 안됨.
                if (context.canPop()) {
                  context.pop();
                }
              }
            },
            elevation: 0,
            items: tabs
                .map((item) => BottomNavigationBarItem(
                      icon: item.icon,
                      label: item.label,
                    ))
                .toList(),
            currentIndex: state.index,
          ),
        ));
  }
}
