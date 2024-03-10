import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:pookaboo/layers/app/presentation/cubit/navigation_cubit.dart';
import 'package:pookaboo/layers/app/presentation/widgets/navigation_bar_item_widget.dart';
import 'package:pookaboo/layers/auth/presentation/bloc/auth_bloc.dart';
import 'package:pookaboo/shared/router/app_routes.dart';
import 'package:pookaboo/shared/styles/palette.dart';
import 'package:pookaboo/shared/utils/logging/log.dart';

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
        initialLocation: Routes.map.path,
        icon: const Icon(Icons.search),
        label: 'Home',
      ),
      NavigationBarItemWidget(
        initialLocation: Routes.profile.path,
        icon: const Icon(Icons.person),
        label: 'Profile',
      ),
    ];

    return Container(
        decoration: const BoxDecoration(
            color: Palette.subDividerBackground,
            border: Border(
                top: BorderSide(
                    color: Palette.subDividerBackground, width: 1.0))),
        child: BottomNavigationBar(
          onTap: (value) {
            if (value != state.index) {
              context.read<NavigationCubit>().changeBottomNavigation(value);
              context.go(tabs[value].initialLocation);
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
        ));
  }
}
