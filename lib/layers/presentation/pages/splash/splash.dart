import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pookaboo/shared/constant/images.dart';
import 'package:pookaboo/shared/router/app_routes.dart';
import 'package:pookaboo/shared/styles/dimens.dart';
import 'package:pookaboo/shared/styles/palette.dart';
import 'package:pookaboo/shared/styles/theme.dart';
import 'package:pookaboo/shared/widgets/common/app_parent.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      context.go(AppRoutes.map.path);
    });
  }

  @override
  Widget build(BuildContext context) {
    return AppParent(
      child: ColoredBox(
        color: Palette.coolGrey12,
        child: Center(
          child: CircleAvatar(
            backgroundColor: Palette.coolGrey05,
            radius: Dimens.menu + Dimens.space6,
            child: CircleAvatar(
              backgroundImage: const AssetImage(Images.icLogo),
              radius: Dimens.menu,
            ),
          ),
        ),
      ),
    );
  }
}
