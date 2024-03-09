import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pookaboo/shared/styles/dimens.dart';
import 'package:pookaboo/shared/styles/palette.dart';

/// Light theme
ThemeData themeLight(BuildContext context) => ThemeData(
      fontFamily: 'Pretendard',
      useMaterial3: true,
      primaryColor: Palette.pinkLatte,
      disabledColor: Palette.shadowDark,
      hintColor: Palette.subText,
      cardColor: Palette.card,
      scaffoldBackgroundColor: Palette.background,
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: Palette.background,
        type: BottomNavigationBarType.fixed,
        selectedIconTheme:
            IconThemeData(size: Dimens.icon, color: Palette.icon),
        unselectedIconTheme:
            IconThemeData(size: Dimens.icon, color: Palette.iconSub),
        showSelectedLabels: false,
        showUnselectedLabels: false,
      ),
      tabBarTheme: TabBarTheme(
          indicatorColor: Palette.white,
          indicatorSize: TabBarIndicatorSize.tab,
          labelStyle: Theme.of(context).textTheme.bodySmall?.copyWith(
                fontWeight: FontWeight.w500,
                fontSize: Dimens.bodySmall,
                color: Palette.text,
              ),
          unselectedLabelStyle:
              Theme.of(context).textTheme.labelLarge?.copyWith(
                    fontWeight: FontWeight.w500,
                    fontSize: Dimens.labelLarge,
                    color: Palette.subText,
                  )),
      textTheme: TextTheme(
        bodyLarge: Theme.of(context).textTheme.bodyLarge?.copyWith(
              fontWeight: FontWeight.w600,
              fontSize: Dimens.bodyLarge,
              color: Palette.text,
            ),
        bodyMedium: Theme.of(context).textTheme.bodyMedium?.copyWith(
              fontWeight: FontWeight.w600,
              fontSize: Dimens.bodyMedium,
              color: Palette.text,
            ),
        bodySmall: Theme.of(context).textTheme.bodySmall?.copyWith(
              fontWeight: FontWeight.w500,
              fontSize: Dimens.bodySmall,
              color: Palette.text,
            ),
        labelLarge: Theme.of(context).textTheme.labelLarge?.copyWith(
              fontWeight: FontWeight.w500,
              fontSize: Dimens.labelLarge,
              color: Palette.subText,
            ),
        labelMedium: Theme.of(context).textTheme.labelMedium?.copyWith(
              fontWeight: FontWeight.w500,
              fontSize: Dimens.labelMedium,
              color: Palette.subText,
            ),
        labelSmall: Theme.of(context).textTheme.labelSmall?.copyWith(
              fontWeight: FontWeight.w500,
              fontSize: Dimens.labelSmall,
              letterSpacing: 0.25,
              color: Palette.subText,
            ),
      ),
      dividerColor: Palette.dividerBackground,
      appBarTheme: const AppBarTheme().copyWith(
        titleTextStyle: Theme.of(context).textTheme.bodyLarge,
        color: Palette.background,
        iconTheme: const IconThemeData(color: Palette.icon),
        systemOverlayStyle: SystemUiOverlayStyle.dark.copyWith(
          statusBarColor: Colors.transparent,
        ),
        surfaceTintColor: Palette.background,
        shadowColor: Palette.shadow,
      ),
      bottomSheetTheme: const BottomSheetThemeData().copyWith(
        backgroundColor: Palette.bottomSheetBackground,
        surfaceTintColor: Colors.transparent,
        elevation: Dimens.zero,
      ),
      dialogTheme: const DialogTheme().copyWith(
        backgroundColor: Palette.dialog,
        surfaceTintColor: Colors.transparent,
        elevation: Dimens.zero,
      ),
      brightness: Brightness.light,
      iconTheme: const IconThemeData(color: Palette.icon),
      visualDensity: VisualDensity.adaptivePlatformDensity,
      extensions: const <ThemeExtension<dynamic>>[
        PookabooColors(
          background: Palette.background,
          card: Palette.card,
          buttonText: Palette.text,
          subtitle: Palette.subText,
          shadow: Palette.shadowDark,
          green: Palette.greenLatte,
          roseWater: Palette.roseWaterLatte,
          flamingo: Palette.flamingoLatte,
          pink: Palette.pinkLatte,
          mauve: Palette.mauveLatte,
          maroon: Palette.maroonLatte,
          peach: Palette.peachLatte,
          yellow: Palette.yellowLatte,
          teal: Palette.tealLatte,
          sapphire: Palette.sapphireLatte,
          sky: Palette.skyLatte,
          blue: Palette.blueLatte,
          lavender: Palette.lavenderLatte,
          red: Palette.redLatte,
        ),
      ],
    );

/// Dark theme
ThemeData themeDark(BuildContext context) => ThemeData(
      fontFamily: 'Pretendard',
      useMaterial3: true,
      primaryColor: Palette.pinkMocha,
      disabledColor: Palette.shadowDark,
      hintColor: Palette.subTextDark,
      cardColor: Palette.cardDark,
      scaffoldBackgroundColor: Palette.backgroundDark,
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: Palette.background,
        type: BottomNavigationBarType.fixed,
        selectedIconTheme:
            IconThemeData(size: Dimens.icon, color: Palette.icon),
        unselectedIconTheme:
            IconThemeData(size: Dimens.icon, color: Palette.iconSub),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 0,
      ),
      textTheme: TextTheme(
        bodyLarge: Theme.of(context).textTheme.bodyLarge?.copyWith(
              fontWeight: FontWeight.w600,
              fontSize: Dimens.bodyLarge,
              color: Palette.textDark,
            ),
        bodyMedium: Theme.of(context).textTheme.bodyMedium?.copyWith(
              fontWeight: FontWeight.w600,
              fontSize: Dimens.bodyMedium,
              color: Palette.textDark,
            ),
        bodySmall: Theme.of(context).textTheme.bodySmall?.copyWith(
              fontWeight: FontWeight.w500,
              fontSize: Dimens.bodySmall,
              color: Palette.textDark,
            ),
        labelLarge: Theme.of(context).textTheme.labelLarge?.copyWith(
              fontWeight: FontWeight.w500,
              fontSize: Dimens.labelLarge,
              color: Palette.subTextDark,
            ),
        labelMedium: Theme.of(context).textTheme.labelMedium?.copyWith(
              fontWeight: FontWeight.w500,
              fontSize: Dimens.labelLarge,
              color: Palette.subTextDark,
            ),
        labelSmall: Theme.of(context).textTheme.labelSmall?.copyWith(
              fontWeight: FontWeight.w500,
              fontSize: Dimens.labelSmall,
              letterSpacing: 0.25,
              color: Palette.subTextDark,
            ),
      ),
      tabBarTheme: TabBarTheme(
          indicatorColor: Palette.white,
          indicatorSize: TabBarIndicatorSize.tab,
          labelStyle: Theme.of(context).textTheme.bodySmall?.copyWith(
                fontWeight: FontWeight.w500,
                fontSize: Dimens.bodySmall,
                color: Palette.text,
              ),
          unselectedLabelStyle:
              Theme.of(context).textTheme.labelLarge?.copyWith(
                    fontWeight: FontWeight.w500,
                    fontSize: Dimens.labelLarge,
                    color: Palette.subText,
                  )),
      dividerColor: Palette.dividerBackgroundDark,
      appBarTheme: const AppBarTheme().copyWith(
        titleTextStyle: Theme.of(context).textTheme.bodyLarge,
        color: Palette.background,
        iconTheme: const IconThemeData(color: Palette.icon),
        systemOverlayStyle: SystemUiOverlayStyle.dark.copyWith(
          statusBarColor: Colors.transparent,
        ),
        surfaceTintColor: Palette.background,
        shadowColor: Palette.shadow,
      ),
      bottomSheetTheme: const BottomSheetThemeData().copyWith(
        backgroundColor: Palette.bottomSheetBackground,
        surfaceTintColor: Colors.transparent,
        elevation: Dimens.zero,
      ),
      dialogTheme: const DialogTheme().copyWith(
        backgroundColor: Palette.dialog,
        surfaceTintColor: Colors.transparent,
        elevation: Dimens.zero,
      ),
      brightness: Brightness.light,
      iconTheme: const IconThemeData(color: Palette.icon),
      visualDensity: VisualDensity.adaptivePlatformDensity,
      extensions: const <ThemeExtension<dynamic>>[
        PookabooColors(
          background: Palette.background,
          card: Palette.card,
          buttonText: Palette.text,
          subtitle: Palette.subText,
          shadow: Palette.shadowDark,
          green: Palette.greenLatte,
          roseWater: Palette.roseWaterLatte,
          flamingo: Palette.flamingoLatte,
          pink: Palette.pinkLatte,
          mauve: Palette.mauveLatte,
          maroon: Palette.maroonLatte,
          peach: Palette.peachLatte,
          yellow: Palette.yellowLatte,
          teal: Palette.tealLatte,
          sapphire: Palette.sapphireLatte,
          sky: Palette.skyLatte,
          blue: Palette.blueLatte,
          lavender: Palette.lavenderLatte,
          red: Palette.redLatte,
        ),
      ],
    );

class PookabooColors extends ThemeExtension<PookabooColors> {
  final Color? background;
  final Color? card;
  final Color? buttonText;
  final Color? subtitle;
  final Color? shadow;
  final Color? green;
  final Color? roseWater;
  final Color? flamingo;
  final Color? pink;
  final Color? mauve;
  final Color? maroon;
  final Color? peach;
  final Color? yellow;
  final Color? teal;
  final Color? sky;
  final Color? sapphire;
  final Color? blue;
  final Color? lavender;
  final Color? red;

  const PookabooColors({
    this.background,
    this.card,
    this.buttonText,
    this.subtitle,
    this.shadow,
    this.green,
    this.roseWater,
    this.flamingo,
    this.pink,
    this.mauve,
    this.maroon,
    this.peach,
    this.yellow,
    this.teal,
    this.sapphire,
    this.sky,
    this.blue,
    this.lavender,
    this.red,
  });

  @override
  ThemeExtension<PookabooColors> copyWith({
    Color? background,
    Color? card,
    Color? buttonText,
    Color? subtitle,
    Color? shadow,
    Color? green,
    Color? roseWater,
    Color? flamingo,
    Color? pink,
    Color? mauve,
    Color? maroon,
    Color? peach,
    Color? yellow,
    Color? teal,
    Color? sky,
    Color? sapphire,
    Color? blue,
    Color? lavender,
    Color? red,
  }) {
    return PookabooColors(
      background: background ?? this.background,
      card: card ?? this.card,
      buttonText: buttonText ?? this.buttonText,
      subtitle: subtitle ?? this.subtitle,
      shadow: shadow ?? this.shadow,
      green: green ?? this.green,
      roseWater: roseWater ?? this.roseWater,
      flamingo: flamingo ?? this.flamingo,
      pink: pink ?? this.pink,
      mauve: mauve ?? this.mauve,
      maroon: maroon ?? this.maroon,
      peach: peach ?? this.peach,
      yellow: yellow ?? this.yellow,
      teal: teal ?? this.teal,
      sky: sky ?? this.sky,
      sapphire: sapphire ?? this.sapphire,
      blue: blue ?? this.blue,
      lavender: lavender ?? this.lavender,
      red: red ?? this.red,
    );
  }

  @override
  ThemeExtension<PookabooColors> lerp(
    covariant ThemeExtension<PookabooColors>? other,
    double t,
  ) {
    if (other is! PookabooColors) {
      return this;
    }
    return PookabooColors(
      background: Color.lerp(background, other.background, t),
      card: Color.lerp(card, other.card, t),
      buttonText: Color.lerp(buttonText, other.buttonText, t),
      subtitle: Color.lerp(subtitle, other.subtitle, t),
      shadow: Color.lerp(shadow, other.shadow, t),
      green: Color.lerp(green, other.green, t),
      roseWater: Color.lerp(roseWater, other.roseWater, t),
      flamingo: Color.lerp(flamingo, other.flamingo, t),
      pink: Color.lerp(pink, other.pink, t),
      mauve: Color.lerp(mauve, other.mauve, t),
      maroon: Color.lerp(maroon, other.maroon, t),
      peach: Color.lerp(peach, other.peach, t),
      yellow: Color.lerp(yellow, other.yellow, t),
      teal: Color.lerp(teal, other.teal, t),
      sapphire: Color.lerp(sapphire, other.sapphire, t),
      blue: Color.lerp(blue, other.blue, t),
      lavender: Color.lerp(lavender, other.lavender, t),
      sky: Color.lerp(sky, other.sky, t),
      red: Color.lerp(red, other.red, t),
    );
  }
}

class BoxDecorations {
  BoxDecorations(this.context);

  final BuildContext context;

  BoxDecoration get button => BoxDecoration(
        color: Palette.primary,
        borderRadius:
            const BorderRadius.all(Radius.circular(Dimens.cornerRadius)),
        boxShadow: [BoxShadows(context).button],
      );

  BoxDecoration get card => BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius:
            const BorderRadius.all(Radius.circular(Dimens.cornerRadius)),
        boxShadow: [BoxShadows(context).card],
      );
}

class BoxShadows {
  BoxShadows(this.context);

  final BuildContext context;

  BoxShadow get button => BoxShadow(
        color: Theme.of(context)
            .extension<PookabooColors>()!
            .shadow!
            .withOpacity(0.5),
        blurRadius: 16.0,
        spreadRadius: 1.0,
      );

  BoxShadow get card => BoxShadow(
        color: Theme.of(context)
            .extension<PookabooColors>()!
            .shadow!
            .withOpacity(0.5),
        blurRadius: 5.0,
        spreadRadius: 0.5,
      );

  BoxShadow get dialog => BoxShadow(
        color: Theme.of(context).extension<PookabooColors>()!.shadow!,
        offset: const Offset(0, -4),
        blurRadius: 16.0,
      );

  BoxShadow get dialogAlt => BoxShadow(
        color: Theme.of(context).extension<PookabooColors>()!.shadow!,
        offset: const Offset(0, 4),
        blurRadius: 16.0,
      );

  BoxShadow get buttonMenu => BoxShadow(
        color: Theme.of(context).extension<PookabooColors>()!.shadow!,
        blurRadius: 4.0,
      );
}
