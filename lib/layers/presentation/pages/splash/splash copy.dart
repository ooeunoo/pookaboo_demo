import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';
import 'package:pookaboo/shared/constant/assets.dart';
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
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    // _controller = AnimationController(
    //   duration: const Duration(seconds: (5)),
    //   vsync: this,
    // );
    // _controller = AnimationController(vsync: this);
    Future.delayed(const Duration(seconds: 5), () {
      context.go(AppRoutes.map.path);
    });
  }

  @override
  void dispose() {
    // _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AppParent(
      child: ColoredBox(
        color: Palette.coolGrey12,
        child: Center(
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Image.asset(
              Assets.splash,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );

    // return Scaffold(
    //   body: SizedBox(
    //     height: MediaQuery.of(context).size.height.toDouble(),
    //     child: Lottie.asset(
    //       Assets.splashLottie,
    //       controller: _controller,
    //       height: MediaQuery.of(context).size.height * 1,
    //       animate: true,
    //       onLoaded: (composition) {
    //         _controller
    //           ..duration = composition.duration
    //           ..forward().whenComplete(() => context.go(AppRoutes.map.path));
    //       },
    //     ),
    //   ),
    // );
    // return MaterialApp(
    //     home: Scaffold(
    //         body: Container(
    //   alignment: Alignment.center,
    //   child: Column(
    //     crossAxisAlignment: CrossAxisAlignment.center,
    //     mainAxisAlignment: MainAxisAlignment.center,
    //     children: [
    //       SizedBox(
    //           width: 500,
    //           height: 500,
    //           child: Lottie.asset(
    //             Assets.splashLottie,
    //             controller: _controller,
    //             onLoaded: (composition) {
    //               // Configure the AnimationController with the duration of the
    //               // Lottie file and start the animation.
    //               _controller
    //                 ..duration = composition.duration
    //                 ..forward();
    //             },
    //           ))
    //     ],
    //   ),
    // )));
    // return AppParent(
    //   child: ColoredBox(
    //     color: Palette.coolGrey12,
    //     child: Center(
    //       child: CircleAvatar(
    //         backgroundColor: Palette.coolGrey05,
    //         radius: Dimens.menu + Dimens.space6,
    //         child: CircleAvatar(
    //           backgroundImage: const AssetImage(Assets.icLogo),
    //           radius: Dimens.menu,
    //         ),
    //       ),
    //     ),
    //   ),
    // );
  }
}
