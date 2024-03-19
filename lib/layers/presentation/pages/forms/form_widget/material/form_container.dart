import 'package:flutter/material.dart' hide Step;
import 'package:pookaboo/layers/domain/entities/form/step/step.dart';

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
