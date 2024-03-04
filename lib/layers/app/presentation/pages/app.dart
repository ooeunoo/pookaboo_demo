import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:pookaboo/layers/app/presentation/cubit/navigation_cubit.dart';
import 'package:pookaboo/layers/app/presentation/widgets/navigation_bar_item.dart';
import 'package:pookaboo/shared/router/app_routes.dart';

class AppPage extends StatelessWidget {
  final Widget screen;

  AppPage({super.key, required this.screen});

  final tabs = [
    NavigationBarItem(
      initialLocation: Routes.map.path,
      icon: const Icon(Icons.home),
      label: 'Home',
    ),
    NavigationBarItem(
      initialLocation: Routes.profile.path,
      icon: const Icon(Icons.person),
      label: 'Profile',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screen,
      bottomNavigationBar: _buildBottomNavigation(context, tabs),
    );
  }
}

BlocBuilder<NavigationCubit, NavigationState> _buildBottomNavigation(
        mContext, List<NavigationBarItem> tabs) =>
    BlocBuilder<NavigationCubit, NavigationState>(
      buildWhen: (previous, current) => previous.index != current.index,
      builder: (context, state) {
        return BottomNavigationBar(
          onTap: (value) {
            if (state.index != value) {
              context.read<NavigationCubit>().getNavBarItem(value);
              context.go(tabs[value].initialLocation);
            }
          },
          // showSelectedLabels: false,
          // showUnselectedLabels: false,
          elevation: 0,
          backgroundColor: Colors.black,
          unselectedItemColor: Colors.white,
          // selectedIconTheme: IconThemeData(
          //   size: ((IconTheme.of(mContext).size)! * 1.3),
          // ),
          items: tabs,
          currentIndex: state.index,
          type: BottomNavigationBarType.fixed,
        );
      },
    );
