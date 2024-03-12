import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:pookaboo/injection.dart';
import 'package:pookaboo/layers/app/presentation/cubit/navigation_cubit.dart';
import 'package:pookaboo/layers/app/presentation/pages/app.dart';
import 'package:pookaboo/layers/auth/presentation/bloc/auth_bloc.dart';
import 'package:pookaboo/layers/user/presentation/pages/profile/profile.dart';
import 'package:pookaboo/layers/splash/presentation/pages/splash.dart';
import 'package:pookaboo/layers/map/presentation/pages/map/map.dart';
import 'package:pookaboo/layers/user/presentation/pages/review/review.dart';
import 'package:pookaboo/shared/router/router_refresh_stream.dart';
import 'package:pookaboo/shared/utils/logging/log.dart';

enum AppRoutes {
  splash("/splash"),

  // map page
  map("/map"),

  // profile page
  profile("/profile"),

  // review page
  reviews("/reviews"),

  // Auth Page
  // login("/auth/login"),
  register("/auth/register"),
  ;

  const AppRoutes(this.path);

  final String path;
}

class AppRoute {
  static late BuildContext context;

  static final _rootNavigatorKey = GlobalKey<NavigatorState>();
  static final _shellNavigatorKey = GlobalKey<NavigatorState>();

  AppRoute.setStream(BuildContext ctx) {
    context = ctx;
  }

  static final GoRouter router = GoRouter(
    navigatorKey: _rootNavigatorKey,

    routes: [
      GoRoute(
        path: AppRoutes.splash.path,
        name: AppRoutes.splash.name,
        builder: (_, __) => const SplashPage(),
      ),
      ShellRoute(
        navigatorKey: _shellNavigatorKey,
        builder: (context, state, child) {
          return BlocProvider(
            create: (context) =>
                sl<NavigationCubit>()..changeBottomNavigation(0),
            child: AppPage(screen: child),
          );
        },
        routes: [
          GoRoute(
            path: AppRoutes.map.path,
            name: AppRoutes.map.name,
            pageBuilder: (context, state) => const NoTransitionPage(
              child: MapPage(),
            ),
          ),
          GoRoute(
            path: AppRoutes.profile.path,
            name: AppRoutes.profile.name,
            pageBuilder: (context, state) => const NoTransitionPage(
              child: ProfilePage(),
            ),
          ),
          GoRoute(
            path: AppRoutes.reviews.path,
            name: AppRoutes.reviews.name,
            pageBuilder: (context, state) => const NoTransitionPage(
              child: ReviewPage(),
            ),
          ),
        ],
      ),
      // GoRoute(
      //   path: AppRoutes.root.path,
      //   name: AppRoutes.root.name,
      //   redirect: (_, __) => AppRoutes.dashboard.path,
      // ),
    ],
    initialLocation: AppRoutes.splash.path,
    routerNeglect: true,
    // debugLogDiagnostics: kDebugMode,
    refreshListenable: RouterRefreshStream(context.read<AuthBloc>().stream),
    redirect: (_, GoRouterState state) {
      // String currentPath = state.matchedLocation;

      // // 프로필 페이지로 이동한 경우, 로그인이 되어있지않다면 로그인 페이지로 이동
      // if (currentPath == AppRoutes.profile.path) {
      //   final authState = context.read<AuthBloc>().state;
      //   final bool isUserAuthenticated = authState.maybeWhen(
      //     authUserUnauthenticated: () => false,
      //     authUserAuthenticated: (_) => true,
      //     orElse: () => false,
      //   );

      //   // 사용자가 로그인되어 있지 않은 경우 로그인 페이지로 리디렉션합니다.
      //   if (!isUserAuthenticated) {
      //     return AppRoutes.login.path;
      //   }
      // }

      // if (currentPath == AppRoutes.login.path) {}

      return null;
      // ///  Check if not login
      // ///  if current page is login page we don't need to direct user
      // ///  but if not we must direct user to login page
      // if (!((MainBoxMixin.mainBox?.get(MainBoxKeys.isLogin.name) as bool?) ??
      //     false)) {
      //   return isLoginPage ? null : AppRoutes.login.path;
      // }

      // /// Check if already login and in login page
      // /// we should direct user to main page

      // if (isLoginPage &&
      //     ((MainBoxMixin.mainBox?.get(MainBoxKeys.isLogin.name) as bool?) ??
      //         false)) {
      //   return AppRoutes.root.path;
      // }

      /// No direct
    },
  );
}
