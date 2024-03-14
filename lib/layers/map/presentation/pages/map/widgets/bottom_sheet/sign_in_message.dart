import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:pookaboo/layers/app/presentation/cubit/navigation_cubit.dart';
import 'package:pookaboo/shared/constant/enum.dart';
import 'package:pookaboo/shared/constant/images.dart';
import 'package:pookaboo/shared/router/app_routes.dart';
import 'package:pookaboo/shared/styles/dimens.dart';
import 'package:pookaboo/shared/styles/palette.dart';
import 'package:pookaboo/shared/widgets/app_spacer_h.dart';
import 'package:pookaboo/shared/widgets/app_spacer_v.dart';
import 'package:pookaboo/shared/widgets/app_text.dart';

class SignInMessage extends StatelessWidget {
  const SignInMessage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavigationCubit, NavigationState>(
        builder: (context, state) {
      return GestureDetector(
        onTap: () {
          context
              .read<NavigationCubit>()
              .changeBottomNavigation(BottomNavigation.profile.index);
          context.go(BottomNavigation.profile.path);
          if (context.canPop()) {
            context.pop();
          }
        },
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AppText('✨ 로그인하여 더 많은 정보를 확인해보세요.',
                  style: Theme.of(context).textTheme.bodySmall!),
              SvgPicture.asset(
                Images.arrowRight,
                colorFilter: const ColorFilter.mode(
                  Palette.white,
                  BlendMode.srcIn,
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
