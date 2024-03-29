import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Dimens {
  Dimens._();

  // static double displayLarge = 96.sp;
  // static double displayMedium = 60.sp;
  // static double displaySmall = 48.sp;
  // static double headlineMedium = 34.sp;
  // static double headlineSmall = 24.sp;
  // static double titleMedium = 18.sp;
  // static double titleSmall = 14.sp;
  // static double titleLarge = 20.sp;

  static double headerLarge = 26.sp;
  static double headerMedium = 24.sp;
  static double headerSmall = 22.sp;
  static double bodyLarge = 20.sp;
  static double bodyMedium = 18.sp;
  static double bodySmall = 16.sp;
  static double labelLarge = 16.sp;
  static double labelMedium = 14.sp;
  static double labelSmall = 12.sp;

  static double icon = 24.sp;

  static double zero = 0;
  static double space1 = 1.w;
  static double space2 = 2.w;
  static double space3 = 3.w;
  static double space4 = 4.w;
  static double space6 = 6.w;
  static double space8 = 8.w;
  static double space9 = 9.w;
  static double space10 = 10.w;

  static double space12 = 12.w;
  static double space16 = 16.w;
  static double space20 = 20.w;
  static double space24 = 24.w;
  static double space30 = 30.w;
  static double space36 = 36.w;
  static double space40 = 40.w;
  static double space46 = 46.w;
  static double space48 = 48.w;
  static double space50 = 50.w;
  static double space55 = 55.w;
  static double space60 = 60.w;
  static double space65 = 65.w;
  static double space70 = 70.w;

  static double space80 = 80.w;

  static double space100 = 100.w;
  static double space120 = 120.w;

  static double space150 = 150.w;
  static double space155 = 155.w;
  static double space200 = 200.w;
  static double space220 = 220.w;

  static double space230 = 230.w;

  static double space250 = 250.w;

  static double selectedIndicatorW = 43.w;
  static double selectedIndicatorSmallW = 28.w;
  static double heightAppbarHome = 65.w;
  static double tab = 38.w;
  static double menu = 72.w;
  static double menuContainer = 250.w;
  static double carousel = 167.w;
  static double newsHeight = 185.w;

  static double header = 200.w;
  static double minLabel = 116.w;
  static double bottomBar = 80.w;
  static double profilePicture = 110.w;
  static double birthdayCalendar = 120.w;

  // static double smallButtonH:
  static double smallButtonH = 40.w;
  static double buttonH = 52.w;
  static double imageW = 46.w;

  static double bigImageW = 180.w;

  static const double cornerRadius = 16;
  static const double cornerRadiusBottomSheet = 30;

  static double fullHeight(context) => MediaQuery.of(context).size.height;
  static double fullWidth(context) => MediaQuery.of(context).size.width;
  static double statusbarHeight(context) => MediaQuery.of(context).padding.top;
  static double bottomBarHeight(context) =>
      MediaQuery.of(context).padding.bottom;
}
