import 'package:flutter/material.dart';
import 'package:pookaboo/shared/styles/dimens.dart';
import 'package:pookaboo/shared/styles/palette.dart';

class AppDivider extends StatelessWidget {
  const AppDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(color: Palette.dividerBackground, height: Dimens.space16);
  }
}
