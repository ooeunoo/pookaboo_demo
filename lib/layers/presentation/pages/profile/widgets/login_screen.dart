import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pookaboo/layers/presentation/bloc/auth/auth_bloc.dart';
import 'package:pookaboo/shared/constant/images.dart';
import 'package:pookaboo/shared/localization/generated/message.dart';
import 'package:pookaboo/shared/styles/dimens.dart';
import 'package:pookaboo/shared/widgets/common/app_button.dart';
import 'package:pookaboo/shared/widgets/common/app_spacer_v.dart';
import 'package:pookaboo/shared/widgets/common/app_text.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({super.key});

  @override
  State<LogInScreen> createState() => _LogInFormState();
}

class _LogInFormState extends State<LogInScreen> {
  void _signInWithKakao() {
    context.read<AuthBloc>().add(SignInWithKakaoEvent());
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(Dimens.space24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AppText(
              Messages.of(context)!.recommendLogIn,
              style: Theme.of(context).textTheme.labelLarge!,
              align: TextAlign.center,
            ),
            AppSpacerV(value: Dimens.space24),
            AppButton(
              title: Messages.of(context)!.startWithKakao,
              onPressed: _signInWithKakao,
              image: SvgPicture.asset(
                Images.kakaoLogo,
              ),
            )
          ],
        ),
      ),
    );
  }
}
