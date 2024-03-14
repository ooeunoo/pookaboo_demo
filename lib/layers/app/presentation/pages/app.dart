import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:pookaboo/layers/app/presentation/cubit/navigation_cubit.dart';
import 'package:pookaboo/layers/app/presentation/widgets/navigation_bar_item_widget.dart';
import 'package:pookaboo/shared/router/app_routes.dart';
import 'package:pookaboo/shared/styles/dimens.dart';
import 'package:pookaboo/shared/styles/palette.dart';

class AppPage extends StatelessWidget {
  final Widget screen;

  const AppPage({super.key, required this.screen});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavigationCubit, NavigationState>(
      builder: (context, state) {
        return Scaffold(
          body: screen,
          bottomNavigationBar: _buildBottomNavigation(context, state),
        );
      },
    );
  }

  Widget _buildBottomNavigation(BuildContext context, NavigationState state) {
    final tabs = [
      NavigationBarItemWidget(
        initialLocation: AppRoutes.map.path,
        icon: const Icon(Icons.search),
        label: 'Home',
      ),
      NavigationBarItemWidget(
        initialLocation: AppRoutes.profile.path,
        icon: const Icon(Icons.person),
        label: 'Profile',
      ),
    ];

    return Visibility(
        visible: state.visible,
        child: Container(
          // height: Dimens.,
          decoration: const BoxDecoration(
              color: Palette.coolGrey08,
              border: Border(
                  top: BorderSide(color: Palette.coolGrey08, width: 1.0))),
          child: BottomNavigationBar(
            onTap: (value) async {
              if (value != state.index) {
                context.read<NavigationCubit>().changeBottomNavigation(value);
                context.go(tabs[value].initialLocation);
                // 흠.. 바텀시트가 열려있을때 닫고 다른 페이지로 이동하기 위한 코드. 동작 이해 아직 안됨.
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
