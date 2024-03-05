import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pookaboo/shared/constant/images.dart';
import 'package:pookaboo/shared/router/app_routes.dart';
import 'package:pookaboo/shared/styles/dimens.dart';
import 'package:pookaboo/shared/styles/theme.dart';
import 'package:pookaboo/shared/widgets/app_parent.dart';

/// © 2020 | All Right Reserved
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
      context.goNamed(Routes.map.name);
    });
  }

  @override
  Widget build(BuildContext context) {
    return AppParent(
      child: ColoredBox(
        color: Theme.of(context).extension<PookabooColors>()!.background!,
        child: Center(
          child: CircleAvatar(
            backgroundColor: Theme.of(context).hintColor,
            radius: Dimens.menu + Dimens.space6,
            child: CircleAvatar(
              backgroundImage: AssetImage(Images.icLogo),
              radius: Dimens.menu,
            ),
          ),
        ),
      ),
    );
  }
}
