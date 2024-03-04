import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:pookaboo/layers/app/presentation/cubit/navigation_cubit.dart';
import 'package:pookaboo/layers/app/presentation/pages/app.dart';
import 'package:pookaboo/layers/auth/presentation/pages/login/login.dart';
import 'package:pookaboo/layers/profile/presentation/pages/profile.dart';
import 'package:pookaboo/layers/splash/presentation/pages/splash.dart';
import 'package:pookaboo/layers/toilet/presentation/pages/map.dart';

enum Routes {
  root("/"),
  splash("/splash"),

  // map page
  map("/map"),

  // profile page
  profile("/profile"),

  // Auth Page
  login("/auth/login"),
  register("/auth/register"),
  ;

  const Routes(this.path);

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
        path: Routes.splash.path,
        name: Routes.splash.name,
        builder: (_, __) => const SplashPage(),
      ),
      ShellRoute(
        navigatorKey: _shellNavigatorKey,
        builder: (context, state, child) {
          return BlocProvider(
            create: (context) => NavigationCubit(),
            child: AppPage(screen: child),
          );
        },
        routes: [
          GoRoute(
            path: Routes.map.path,
            name: Routes.map.name,
            pageBuilder: (context, state) => NoTransitionPage(
              child: MapPage(),
            ),
            // routes: [
            //   GoRoute(
            //     path: Routes.homeDetailsNamedPage,
            //     builder: (context, state) => const HomeDetailsScreen(),
            //   ),
            // ],
          ),
          GoRoute(
            path: Routes.profile.path,
            name: Routes.profile.name,
            pageBuilder: (context, state) => const NoTransitionPage(
              child: ProfilePage(),
            ),
            // routes: [
            //   GoRoute(
            //     path: Routes.profileDetailsNamedPage,
            //     builder: (context, state) => const ProfileDetailsScreen(),
            //   ),
            // ],
          ),
        ],
      ),
      // GoRoute(
      //   path: Routes.root.path,
      //   name: Routes.root.name,
      //   redirect: (_, __) => Routes.dashboard.path,
      // ),
      GoRoute(
        path: Routes.login.path,
        name: Routes.login.name,
        builder: (_, __) => const LoginPage(),
      ),
    ],
    initialLocation: Routes.splash.path,
    // routerNeglect: true,
    // debugLogDiagnostics: kDebugMode,
    // refreshListenable: GoRouterRefreshStream(context.read<AuthCubit>().stream),
    // redirect: (_, GoRouterState state) {
    //   final bool isLoginPage = state.matchedLocation == Routes.login.path ||
    //       state.matchedLocation == Routes.register.path;

    //   ///  Check if not login
    //   ///  if current page is login page we don't need to direct user
    //   ///  but if not we must direct user to login page
    //   if (!((MainBoxMixin.mainBox?.get(MainBoxKeys.isLogin.name) as bool?) ??
    //       false)) {
    //     return isLoginPage ? null : Routes.login.path;
    //   }

    //   /// Check if already login and in login page
    //   /// we should direct user to main page

    //   if (isLoginPage &&
    //       ((MainBoxMixin.mainBox?.get(MainBoxKeys.isLogin.name) as bool?) ??
    //           false)) {
    //     return Routes.root.path;
    //   }

    //   /// No direct
    //   return null;
    // },
  );
}
