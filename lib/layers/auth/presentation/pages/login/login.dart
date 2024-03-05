import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:pookaboo/layers/auth/presentation/bloc/auth_bloc.dart';
import 'package:pookaboo/shared/constant/images.dart';
import 'package:pookaboo/shared/extension/context.dart';
import 'package:pookaboo/shared/extension/string.dart';
import 'package:pookaboo/shared/localization/generated/strings.dart';
import 'package:pookaboo/shared/styles/dimens.dart';
import 'package:pookaboo/shared/widgets/app_button.dart';
import 'package:pookaboo/shared/widgets/app_parent.dart';
import 'package:pookaboo/shared/widgets/app_spacer_v.dart';
import 'package:pookaboo/shared/widgets/app_text_input.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  void _signInWithKakao() {
    context.read<AuthBloc>().add(const AuthEvent.signInWithKakaoEvent());
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (_, state) {
        state.whenOrNull(
          loadInProgress: () => context.show(),
          authUserAuthenticated: (data) {
            context.dismiss();
            data.toString().toToastSuccess(context);
          },
          // failure: (message) {
          //   context.dismiss();
          //   message.toToastError(context);
          // },
        );
      },
      child: Center(
        child: Padding(
          padding: EdgeInsets.all(Dimens.space24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AppTextInput(
                autofillHints: const [AutofillHints.email],
                key: const Key("email"),
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.emailAddress,
                prefixIcon: Icon(
                  Icons.alternate_email,
                  color: Theme.of(context).textTheme.bodyLarge?.color,
                ),
                hintText: "eve.holt@reqres.in",
                hint: Strings.of(context)!.email,
                validator: (String? value) => value != null
                    ? (!value.isValidEmail()
                        ? Strings.of(context)?.errorInvalidEmail
                        : null)
                    : null,
              ),
              AppSpacerV(value: Dimens.space24),
              AppButton(
                title: Strings.of(context)!.login,
                onPressed: _signInWithKakao,
              )
            ],
          ),
        ),
      ),
    );
  }
}
