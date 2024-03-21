import 'package:flutter/material.dart' hide Step;
import 'package:pookaboo/shared/entities/form/step.dart';
import 'package:pookaboo/shared/extension/context.dart';
import 'package:pookaboo/shared/styles/dimens.dart';
import 'package:pookaboo/shared/widgets/common/app_done.dart';

class FormContainer extends StatelessWidget {
  final Step step;
  final Widget child;

  const FormContainer({
    super.key,
    required this.step,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        _fullScreen(context),
      ],
    );
  }

  Widget _fullScreen(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leading: Container(),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: Dimens.space16),
            child: IconButton(
              icon: const Icon(Icons.close),
              onPressed: () {
                context.back();
              },
            ),
          )
        ],
      ),
      backgroundColor: Colors.transparent,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 24.0,
              horizontal: 16.0,
            ),
            child: child,
          ),
        ),
      ),
    );
  }
}
