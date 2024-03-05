import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oktoast/oktoast.dart';
import 'package:pookaboo/injection.dart';
import 'package:pookaboo/layers/auth/presentation/bloc/auth_bloc.dart';
import 'package:pookaboo/layers/setting/presentation/cubit/setting_cubit.dart';
import 'package:pookaboo/shared/constant/config.dart';
import 'package:pookaboo/shared/localization/generated/strings.dart';
import 'package:pookaboo/shared/localization/l10n.dart';
import 'package:pookaboo/shared/router/app_routes.dart';
import 'package:pookaboo/shared/styles/theme.dart';
import 'package:pookaboo/shared/utils/logging/log.dart';

class PookabooApp extends StatelessWidget {
  const PookabooApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
      ),
    );

    log.d(const String.fromEnvironment('ENV'));
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => sl<SettingsCubit>()..getActiveTheme()),
        BlocProvider(
            create: (_) =>
                sl<AuthBloc>()..add(const AuthEvent.initialCheckRequested())),
      ],
      child: OKToast(
        child: ScreenUtilInit(
          /// Set screen size to make responsive
          /// Almost all device

          designSize: const Size(375, 667),
          minTextAdapt: true,
          splitScreenMode: true,
          builder: (context, __) {
            /// Pass context to appRoute
            AppRoute.setStream(context);

            return BlocBuilder<SettingsCubit, SettingState>(
              builder: (_, data) => MaterialApp.router(
                routerConfig: AppRoute.router,
                localizationsDelegates: const [
                  Strings.delegate,
                  GlobalMaterialLocalizations.delegate,
                  GlobalWidgetsLocalizations.delegate,
                  GlobalCupertinoLocalizations.delegate,
                ],
                debugShowCheckedModeBanner: false,
                builder: (BuildContext context, Widget? child) {
                  final MediaQueryData data = MediaQuery.of(context);

                  return MediaQuery(
                    data: data.copyWith(
                      alwaysUse24HourFormat: true,
                      textScaler: const TextScaler.linear(1),
                    ),
                    child: child!,
                  );
                },
                title: Config.get.appName,
                theme: themeLight(context),
                // darkTheme: themeDark(context),
                locale: Locale(data.type ?? "en"),
                supportedLocales: L10n.all,
                // themeMode: data.activeTheme.mode,
              ),
            );
          },
        ),
      ),
    );
  }
}
